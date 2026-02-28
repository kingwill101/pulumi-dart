// ignore_for_file: unused_element, unnecessary_cast

/// Allows autoscaling based on Stackdriver metrics.
class CustomMetric {
  /// Allows filtering on the metric's fields.
  final String? filter;

  /// The name of the metric.
  final String? metricName;

  /// May be used instead of target_utilization when an instance can handle a specific amount of work/resources and the metric value is equal to the current amount of work remaining. The autoscaler will try to keep the number of instances equal to the metric value divided by single_instance_assignment.
  final double? singleInstanceAssignment;

  /// The type of the metric. Must be a string representing a Stackdriver metric type e.g. GAGUE, DELTA_PER_SECOND, etc.
  final String? targetType;

  /// The target value for the metric.
  final double? targetUtilization;

  /// Creates a new [CustomMetric].
  /// [filter] Allows filtering on the metric's fields.
  /// [metricName] The name of the metric.
  /// [singleInstanceAssignment] May be used instead of target_utilization when an instance can handle a specific amount of work/resources and the metric value is equal to the current amount of work remaining. The autoscaler will try to keep the number of instances equal to the metric value divided by single_instance_assignment.
  /// [targetType] The type of the metric. Must be a string representing a Stackdriver metric type e.g. GAGUE, DELTA_PER_SECOND, etc.
  /// [targetUtilization] The target value for the metric.
  CustomMetric({
    this.filter,
    this.metricName,
    this.singleInstanceAssignment,
    this.targetType,
    this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final singleInstanceAssignmentValue = singleInstanceAssignment;
    if (singleInstanceAssignmentValue != null) {
      map['singleInstanceAssignment'] = singleInstanceAssignmentValue;
    }
    final targetTypeValue = targetType;
    if (targetTypeValue != null) {
      map['targetType'] = targetTypeValue;
    }
    final targetUtilizationValue = targetUtilization;
    if (targetUtilizationValue != null) {
      map['targetUtilization'] = targetUtilizationValue;
    }
    return map;
  }

  factory CustomMetric.fromMap(Map<String, dynamic> map) {
    return CustomMetric(
      filter: map['filter'] == null ? null : map['filter'] as String,
      metricName:
          map['metricName'] == null ? null : map['metricName'] as String,
      singleInstanceAssignment: map['singleInstanceAssignment'] == null
          ? null
          : map['singleInstanceAssignment'] as double,
      targetType:
          map['targetType'] == null ? null : map['targetType'] as String,
      targetUtilization: map['targetUtilization'] == null
          ? null
          : map['targetUtilization'] as double,
    );
  }
}
