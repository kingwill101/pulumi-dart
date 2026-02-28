// ignore_for_file: unused_element, unnecessary_cast

class DataSetRowLevelPermissionTagConfigurationTagRule {
  /// Column name that a tag key is assigned to.
  final String columnName;

  /// A string that you want to use to filter by all the values in a column in the dataset and don’t want to list the values one by one.
  final String? matchAllValue;

  /// Unique key for a tag.
  final String tagKey;

  /// A string that you want to use to delimit the values when you pass the values at run time.
  final String? tagMultiValueDelimiter;

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
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    final matchAllValueValue = matchAllValue;
    if (matchAllValueValue != null) {
      map['matchAllValue'] = matchAllValueValue;
    }
    map['tagKey'] = tagKey;
    final tagMultiValueDelimiterValue = tagMultiValueDelimiter;
    if (tagMultiValueDelimiterValue != null) {
      map['tagMultiValueDelimiter'] = tagMultiValueDelimiterValue;
    }
    return map;
  }

  factory DataSetRowLevelPermissionTagConfigurationTagRule.fromMap(
      Map<String, dynamic> map) {
    return DataSetRowLevelPermissionTagConfigurationTagRule(
      columnName: map['columnName'] as String,
      matchAllValue:
          map['matchAllValue'] == null ? null : map['matchAllValue'] as String,
      tagKey: map['tagKey'] as String,
      tagMultiValueDelimiter: map['tagMultiValueDelimiter'] == null
          ? null
          : map['tagMultiValueDelimiter'] as String,
    );
  }
}
