// ignore_for_file: unused_element, unnecessary_cast

class DataCellsFilterTableDataRowFilter {
  /// (Optional) A wildcard that matches all rows. Required when applying column-level filtering without row-level filtering. Use an empty block: <span pulumi-lang-nodejs="`allRowsWildcard " pulumi-lang-dotnet="`AllRowsWildcard " pulumi-lang-go="`allRowsWildcard " pulumi-lang-python="`all_rows_wildcard " pulumi-lang-yaml="`allRowsWildcard " pulumi-lang-java="`allRowsWildcard ">`all_rows_wildcard </span>{}`.
  final Map<String, dynamic>? allRowsWildcard;

  /// (Optional) A PartiQL predicate expression for row-level filtering.
  final String? filterExpression;

  DataCellsFilterTableDataRowFilter({
    this.allRowsWildcard,
    this.filterExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allRowsWildcardValue = allRowsWildcard;
    if (allRowsWildcardValue != null) {
      map['allRowsWildcard'] = allRowsWildcardValue;
    }
    final filterExpressionValue = filterExpression;
    if (filterExpressionValue != null) {
      map['filterExpression'] = filterExpressionValue;
    }
    return map;
  }

  factory DataCellsFilterTableDataRowFilter.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTableDataRowFilter(
      allRowsWildcard: map['allRowsWildcard'] == null
          ? null
          : (map['allRowsWildcard'] as Map).cast<String, dynamic>(),
      filterExpression: map['filterExpression'] == null
          ? null
          : map['filterExpression'] as String,
    );
  }
}
