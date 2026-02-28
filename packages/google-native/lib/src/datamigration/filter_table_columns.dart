// ignore_for_file: unused_element, unnecessary_cast

/// Options to configure rule type FilterTableColumns. The rule is used to filter the list of columns to include or exclude from a table. The rule filter field can refer to one entity. The rule scope can be: Table Only one of the two lists can be specified for the rule.
class FilterTableColumns {
  /// Optional. List of columns to be excluded for a particular table.
  final List<String>? excludeColumns;

  /// Optional. List of columns to be included for a particular table.
  final List<String>? includeColumns;

  /// Creates a new [FilterTableColumns].
  /// [excludeColumns] Optional. List of columns to be excluded for a particular table.
  /// [includeColumns] Optional. List of columns to be included for a particular table.
  FilterTableColumns({
    this.excludeColumns,
    this.includeColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeColumnsValue = excludeColumns;
    if (excludeColumnsValue != null) {
      map['excludeColumns'] = excludeColumnsValue;
    }
    final includeColumnsValue = includeColumns;
    if (includeColumnsValue != null) {
      map['includeColumns'] = includeColumnsValue;
    }
    return map;
  }

  factory FilterTableColumns.fromMap(Map<String, dynamic> map) {
    return FilterTableColumns(
      excludeColumns: map['excludeColumns'] == null
          ? null
          : (map['excludeColumns'] as List).cast<String>(),
      includeColumns: map['includeColumns'] == null
          ? null
          : (map['includeColumns'] as List).cast<String>(),
    );
  }
}
