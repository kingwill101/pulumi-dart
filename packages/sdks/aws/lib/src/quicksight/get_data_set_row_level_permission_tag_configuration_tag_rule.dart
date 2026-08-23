// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetRowLevelPermissionTagConfigurationTagRule {
  final pulumi.Input<String> columnName;
  final pulumi.Input<String> matchAllValue;
  final pulumi.Input<String> tagKey;
  final pulumi.Input<String> tagMultiValueDelimiter;

  /// Creates a new [GetDataSetRowLevelPermissionTagConfigurationTagRule].
  /// [columnName] Required.
  /// [matchAllValue] Required.
  /// [tagKey] Required.
  /// [tagMultiValueDelimiter] Required.
  const GetDataSetRowLevelPermissionTagConfigurationTagRule({
    required this.columnName,
    required this.matchAllValue,
    required this.tagKey,
    required this.tagMultiValueDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'matchAllValue': matchAllValue,
      'tagKey': tagKey,
      'tagMultiValueDelimiter': tagMultiValueDelimiter,
    };
  }

  factory GetDataSetRowLevelPermissionTagConfigurationTagRule.fromMap(Map<String, dynamic> map) {
    return GetDataSetRowLevelPermissionTagConfigurationTagRule(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      matchAllValue: pulumi.Input.fromValue(map['matchAllValue'] as String),
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
      tagMultiValueDelimiter: pulumi.Input.fromValue(map['tagMultiValueDelimiter'] as String),
    );
  }
}
