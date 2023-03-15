# SQL
rank() over(partition by group order by value)
rank() -- min
dense_rank() -- dense
row_number() -- first
# Python
df_rank = pd.DataFrame(
                    {
                        "group": ["a", "a", "a", "a", "a", "b", "b", "b", "b", "b"],
                        "value": [2, 4, 2, 3, 5, 1, 2, 4, 1, 5]
                    })
for method in ['min', 'dense', 'first']:
    df_rank[f'{method}_rank'] = df_rank.groupby('group')['value'].rank(method, ascending=True)
print(df_rank.sort_values(['group', 'value']))