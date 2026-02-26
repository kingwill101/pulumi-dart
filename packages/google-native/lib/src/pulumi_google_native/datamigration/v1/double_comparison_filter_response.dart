// ignore_for_file: unused_element, unnecessary_cast

/// Filter based on relation between source value and compare value of type double in ConditionalColumnSetValue
class DoubleComparisonFilterResponse {
  /// Double compare value to be used
  final double value;

  /// Relation between source value and compare value
  final String valueComparison;

  DoubleComparisonFilterResponse({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    map['valueComparison'] = valueComparison;
    return map;
  }

  factory DoubleComparisonFilterResponse.fromMap(Map<String, dynamic> map) {
    return DoubleComparisonFilterResponse(
      value: map['value'] as double,
      valueComparison: map['valueComparison'] as String,
    );
  }
}
