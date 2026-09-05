// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCellsFilterTableDataColumnWildcard {
  /// (Optional) Excludes column names. Any column with this name will be excluded.
  final pulumi.Input<List<String>?>? excludedColumnNames;

  /// Creates a new [DataCellsFilterTableDataColumnWildcard].
  /// [excludedColumnNames] (Optional) Excludes column names. Any column with this name will be excluded.
  const DataCellsFilterTableDataColumnWildcard({
    this.excludedColumnNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedColumnNames': ?excludedColumnNames,
    };
  }

  factory DataCellsFilterTableDataColumnWildcard.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTableDataColumnWildcard(
      excludedColumnNames: (() { final guardedValue = map['excludedColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
