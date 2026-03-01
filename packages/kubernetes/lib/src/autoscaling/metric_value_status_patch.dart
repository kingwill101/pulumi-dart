// ignore_for_file: unused_element, unnecessary_cast


/// MetricValueStatus holds the current value for a metric
class MetricValueStatusPatch {
  /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  final int? averageUtilization;
  /// averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  final String? averageValue;
  /// value is the current value of the metric (as a quantity).
  final String? value;

  /// Creates a new [MetricValueStatusPatch].
  /// [averageUtilization] currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  /// [averageValue] averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  /// [value] value is the current value of the metric (as a quantity).
  MetricValueStatusPatch({
    this.averageUtilization,
    this.averageValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageUtilization': ?averageUtilization,
      'averageValue': ?averageValue,
      'value': ?value,
    };
  }

  factory MetricValueStatusPatch.fromMap(Map<String, dynamic> map) {
    return MetricValueStatusPatch(
      averageUtilization: map['averageUtilization'] == null ? null : map['averageUtilization'] as int,
      averageValue: map['averageValue'] == null ? null : map['averageValue'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

