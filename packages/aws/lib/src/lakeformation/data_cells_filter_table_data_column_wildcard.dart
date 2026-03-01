// ignore_for_file: unused_element, unnecessary_cast

class DataCellsFilterTableDataColumnWildcard {
  /// (Optional) Excludes column names. Any column with this name will be excluded.
  final List<String>? excludedColumnNames;

  /// Creates a new [DataCellsFilterTableDataColumnWildcard].
  /// [excludedColumnNames] (Optional) Excludes column names. Any column with this name will be excluded.
  DataCellsFilterTableDataColumnWildcard({this.excludedColumnNames});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'excludedColumnNames': ?excludedColumnNames};
  }

  factory DataCellsFilterTableDataColumnWildcard.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCellsFilterTableDataColumnWildcard(
      excludedColumnNames: map['excludedColumnNames'] == null
          ? null
          : (map['excludedColumnNames'] as List).cast<String>(),
    );
  }
}
