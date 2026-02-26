// ignore_for_file: unused_element, unnecessary_cast

import 'double_comparison_filter_value_comparison.dart';

/// Filter based on relation between source value and compare value of type double in ConditionalColumnSetValue
class DoubleComparisonFilter {
  /// Double compare value to be used
  final double value;

  /// Relation between source value and compare value
  final DoubleComparisonFilterValueComparison valueComparison;

  DoubleComparisonFilter({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    map['valueComparison'] = valueComparison.value;
    return map;
  }

  factory DoubleComparisonFilter.fromMap(Map<String, dynamic> map) {
    return DoubleComparisonFilter(
      value: map['value'] as double,
      valueComparison: DoubleComparisonFilterValueComparison.fromValue(
          map['valueComparison'] as String),
    );
  }
}
