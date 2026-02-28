// ignore_for_file: unused_element, unnecessary_cast

import 'int_comparison_filter_value_comparison.dart';

/// Filter based on relation between source value and compare value of type integer in ConditionalColumnSetValue
class IntComparisonFilter {
  /// Integer compare value to be used
  final String value;
  /// Relation between source value and compare value
  final IntComparisonFilterValueComparison valueComparison;

  /// Creates a new [IntComparisonFilter].
  /// [value] Integer compare value to be used
  /// [valueComparison] Relation between source value and compare value
  IntComparisonFilter({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'valueComparison': valueComparison.value,
    };
  }

  factory IntComparisonFilter.fromMap(Map<String, dynamic> map) {
    return IntComparisonFilter(
      value: map['value'] as String,
      valueComparison: IntComparisonFilterValueComparison.fromValue(map['valueComparison'] as String),
    );
  }
}

