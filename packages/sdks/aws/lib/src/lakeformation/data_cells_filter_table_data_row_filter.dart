// ignore_for_file: unused_element, unnecessary_cast


class DataCellsFilterTableDataRowFilter {
  /// (Optional) A wildcard that matches all rows. Required when applying column-level filtering without row-level filtering. Use an empty block: `all_rows_wildcard {}`.
  final Map<String, dynamic>? allRowsWildcard;
  /// (Optional) A PartiQL predicate expression for row-level filtering.
  final String? filterExpression;

  /// Creates a new [DataCellsFilterTableDataRowFilter].
  /// [allRowsWildcard] (Optional) A wildcard that matches all rows. Required when applying column-level filtering without row-level filtering. Use an empty block: `all_rows_wildcard {}`.
  /// [filterExpression] (Optional) A PartiQL predicate expression for row-level filtering.
  DataCellsFilterTableDataRowFilter({
    this.allRowsWildcard,
    this.filterExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allRowsWildcard': ?allRowsWildcard,
      'filterExpression': ?filterExpression,
    };
  }

  factory DataCellsFilterTableDataRowFilter.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTableDataRowFilter(
      allRowsWildcard: map['allRowsWildcard'] == null ? null : (map['allRowsWildcard'] as Map).cast<String, dynamic>(),
      filterExpression: map['filterExpression'] == null ? null : map['filterExpression'] as String,
    );
  }
}

