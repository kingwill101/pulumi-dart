// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DTO object representing index column
class IndexColumn {
  /// Specifies the column name
  final pulumi.Input<String>? columnName;
  /// Specifies the data type
  final pulumi.Input<String>? dataType;

  /// Creates a new [IndexColumn].
  /// [columnName] Specifies the column name
  /// [dataType] Specifies the data type
  const IndexColumn({
    this.columnName,
    this.dataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': ?columnName,
      'dataType': ?dataType,
    };
  }

  factory IndexColumn.fromMap(Map<String, dynamic> map) {
    return IndexColumn(
      columnName: (() { final guardedValue = map['columnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
