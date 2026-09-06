// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DTO object representing index column
class IndexColumn {
  /// Specifies the column name
  final pulumi.Input<String?>? columnName;
  /// Specifies the data type
  final pulumi.Input<dynamic>? dataType;

  /// Creates a new [IndexColumn].
  /// [columnName] Specifies the column name
  /// [dataType] Specifies the data type
  IndexColumn({
    this.columnName,
    pulumi.Input<dynamic>? dataType,
  }) : dataType = dataType ?? pulumi.Input.fromValue('String');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': ?columnName,
      'dataType': ?dataType,
    };
  }

  factory IndexColumn.fromMap(Map<String, dynamic> map) {
    return IndexColumn(
      columnName: (() { final guardedValue = map['columnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
