// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetRowLevelPermissionTagConfigurationTagRule {
  /// Column name that a tag key is assigned to.
  final pulumi.Input<String> columnName;
  /// A string that you want to use to filter by all the values in a column in the dataset and don’t want to list the values one by one.
  final pulumi.Input<String>? matchAllValue;
  /// Unique key for a tag.
  final pulumi.Input<String> tagKey;
  /// A string that you want to use to delimit the values when you pass the values at run time.
  final pulumi.Input<String>? tagMultiValueDelimiter;

  /// Creates a new [DataSetRowLevelPermissionTagConfigurationTagRule].
  /// [columnName] Column name that a tag key is assigned to.
  /// [matchAllValue] A string that you want to use to filter by all the values in a column in the dataset and don’t want to list the values one by one.
  /// [tagKey] Unique key for a tag.
  /// [tagMultiValueDelimiter] A string that you want to use to delimit the values when you pass the values at run time.
  DataSetRowLevelPermissionTagConfigurationTagRule({
    required this.columnName,
    this.matchAllValue,
    required this.tagKey,
    this.tagMultiValueDelimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'matchAllValue': ?matchAllValue,
      'tagKey': tagKey,
      'tagMultiValueDelimiter': ?tagMultiValueDelimiter,
    };
  }

  factory DataSetRowLevelPermissionTagConfigurationTagRule.fromMap(Map<String, dynamic> map) {
    return DataSetRowLevelPermissionTagConfigurationTagRule(
      columnName: (map['columnName'] as String).input(),
      matchAllValue: map['matchAllValue'] == null ? null : ((map['matchAllValue'] as String).input()).input(),
      tagKey: (map['tagKey'] as String).input(),
      tagMultiValueDelimiter: map['tagMultiValueDelimiter'] == null ? null : ((map['tagMultiValueDelimiter'] as String).input()).input(),
    );
  }
}

