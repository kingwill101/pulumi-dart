// ignore_for_file: unused_element, unnecessary_cast

/// Filter based on relation between source value and compare value of type double in ConditionalColumnSetValue
class DoubleComparisonFilterResponse {
  /// Double compare value to be used
  final double value;

  /// Relation between source value and compare value
  final String valueComparison;

  /// Creates a new [DoubleComparisonFilterResponse].
  /// [value] Double compare value to be used
  /// [valueComparison] Relation between source value and compare value
  DoubleComparisonFilterResponse({
    required this.value,
    required this.valueComparison,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'valueComparison': valueComparison,
    };
  }

  factory DoubleComparisonFilterResponse.fromMap(Map<String, dynamic> map) {
    return DoubleComparisonFilterResponse(
      value: map['value'] as double,
      valueComparison: map['valueComparison'] as String,
    );
  }
}
