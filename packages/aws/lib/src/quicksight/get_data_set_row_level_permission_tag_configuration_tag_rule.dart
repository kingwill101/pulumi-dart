// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetRowLevelPermissionTagConfigurationTagRule {
  final String columnName;
  final String matchAllValue;
  final String tagKey;
  final String tagMultiValueDelimiter;

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
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['matchAllValue'] = matchAllValue;
    map['tagKey'] = tagKey;
    map['tagMultiValueDelimiter'] = tagMultiValueDelimiter;
    return map;
  }

  factory GetDataSetRowLevelPermissionTagConfigurationTagRule.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetRowLevelPermissionTagConfigurationTagRule(
      columnName: map['columnName'] as String,
      matchAllValue: map['matchAllValue'] as String,
      tagKey: map['tagKey'] as String,
      tagMultiValueDelimiter: map['tagMultiValueDelimiter'] as String,
    );
  }
}
