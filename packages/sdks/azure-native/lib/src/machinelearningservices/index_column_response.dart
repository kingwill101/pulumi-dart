// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DTO object representing index column
class IndexColumnResponse {
  /// Specifies the column name
  final pulumi.Input<String>? columnName;
  /// Specifies the data type
  final pulumi.Input<String>? dataType;

  /// Creates a new [IndexColumnResponse].
  /// [columnName] Specifies the column name
  /// [dataType] Specifies the data type
  IndexColumnResponse({
    this.columnName,
    this.dataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': ?columnName,
      'dataType': ?dataType,
    };
  }

  factory IndexColumnResponse.fromMap(Map<String, dynamic> map) {
    return IndexColumnResponse(
      columnName: (() { final guardedValue = map['columnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

