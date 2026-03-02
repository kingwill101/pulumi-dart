// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Default value.
class DWCopyCommandDefaultValueResponse {
  /// Column name. Type: object (or Expression with resultType string).
  final pulumi.Input<dynamic>? columnName;
  /// The default value of the column. Type: object (or Expression with resultType string).
  final pulumi.Input<dynamic>? defaultValue;

  /// Creates a new [DWCopyCommandDefaultValueResponse].
  /// [columnName] Column name. Type: object (or Expression with resultType string).
  /// [defaultValue] The default value of the column. Type: object (or Expression with resultType string).
  DWCopyCommandDefaultValueResponse({
    this.columnName,
    this.defaultValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': ?columnName,
      'defaultValue': ?defaultValue,
    };
  }

  factory DWCopyCommandDefaultValueResponse.fromMap(Map<String, dynamic> map) {
    return DWCopyCommandDefaultValueResponse(
      columnName: map['columnName'] == null ? null : (map['columnName']).input(),
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue']).input(),
    );
  }
}

