// ignore_for_file: unused_element, unnecessary_cast

/// A list of values to filter by in ConditionalColumnSetValue
class ValueListFilterResponse {
  /// Whether to ignore case when filtering by values. Defaults to false
  final bool ignoreCase;

  /// Indicates whether the filter matches rows with values that are present in the list or those with values not present in it.
  final String valuePresentList;

  /// The list to be used to filter by
  final List<String> values;

  ValueListFilterResponse({
    required this.ignoreCase,
    required this.valuePresentList,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ignoreCase'] = ignoreCase;
    map['valuePresentList'] = valuePresentList;
    map['values'] = values;
    return map;
  }

  factory ValueListFilterResponse.fromMap(Map<String, dynamic> map) {
    return ValueListFilterResponse(
      ignoreCase: map['ignoreCase'] as bool,
      valuePresentList: map['valuePresentList'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
