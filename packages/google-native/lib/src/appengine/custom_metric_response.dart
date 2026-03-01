// ignore_for_file: unused_element, unnecessary_cast

/// Allows autoscaling based on Stackdriver metrics.
class CustomMetricResponse {
  /// Allows filtering on the metric's fields.
  final String filter;

  /// The name of the metric.
  final String metricName;

  /// May be used instead of target_utilization when an instance can handle a specific amount of work/resources and the metric value is equal to the current amount of work remaining. The autoscaler will try to keep the number of instances equal to the metric value divided by single_instance_assignment.
  final double singleInstanceAssignment;

  /// The type of the metric. Must be a string representing a Stackdriver metric type e.g. GAGUE, DELTA_PER_SECOND, etc.
  final String targetType;

  /// The target value for the metric.
  final double targetUtilization;

  /// Creates a new [CustomMetricResponse].
  /// [filter] Allows filtering on the metric's fields.
  /// [metricName] The name of the metric.
  /// [singleInstanceAssignment] May be used instead of target_utilization when an instance can handle a specific amount of work/resources and the metric value is equal to the current amount of work remaining. The autoscaler will try to keep the number of instances equal to the metric value divided by single_instance_assignment.
  /// [targetType] The type of the metric. Must be a string representing a Stackdriver metric type e.g. GAGUE, DELTA_PER_SECOND, etc.
  /// [targetUtilization] The target value for the metric.
  CustomMetricResponse({
    required this.filter,
    required this.metricName,
    required this.singleInstanceAssignment,
    required this.targetType,
    required this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'metricName': metricName,
      'singleInstanceAssignment': singleInstanceAssignment,
      'targetType': targetType,
      'targetUtilization': targetUtilization,
    };
  }

  factory CustomMetricResponse.fromMap(Map<String, dynamic> map) {
    return CustomMetricResponse(
      filter: map['filter'] as String,
      metricName: map['metricName'] as String,
      singleInstanceAssignment: map['singleInstanceAssignment'] as double,
      targetType: map['targetType'] as String,
      targetUtilization: map['targetUtilization'] as double,
    );
  }
}
