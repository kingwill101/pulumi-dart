// ignore_for_file: unused_element, unnecessary_cast

import 'value_list_filter_value_present_list.dart';

/// A list of values to filter by in ConditionalColumnSetValue
class ValueListFilter {
  /// Whether to ignore case when filtering by values. Defaults to false
  final bool ignoreCase;

  /// Indicates whether the filter matches rows with values that are present in the list or those with values not present in it.
  final ValueListFilterValuePresentList valuePresentList;

  /// The list to be used to filter by
  final List<String> values;

  ValueListFilter({
    required this.ignoreCase,
    required this.valuePresentList,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ignoreCase'] = ignoreCase;
    map['valuePresentList'] = valuePresentList.value;
    map['values'] = values;
    return map;
  }

  factory ValueListFilter.fromMap(Map<String, dynamic> map) {
    return ValueListFilter(
      ignoreCase: map['ignoreCase'] as bool,
      valuePresentList: ValueListFilterValuePresentList.fromValue(
          map['valuePresentList'] as String),
      values: (map['values'] as List).cast<String>(),
    );
  }
}
