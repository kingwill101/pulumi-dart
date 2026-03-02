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
  GetDataSetRowLevelPermissionTagConfigurationTagRule({
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
      columnName: (map['columnName'] as String).input(),
      matchAllValue: (map['matchAllValue'] as String).input(),
      tagKey: (map['tagKey'] as String).input(),
      tagMultiValueDelimiter: (map['tagMultiValueDelimiter'] as String).input(),
    );
  }
}

