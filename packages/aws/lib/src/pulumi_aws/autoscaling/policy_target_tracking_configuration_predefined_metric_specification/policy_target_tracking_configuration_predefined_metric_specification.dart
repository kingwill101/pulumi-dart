// ignore_for_file: unused_element, unnecessary_cast

class PolicyTargetTrackingConfigurationPredefinedMetricSpecification {
  /// Metric type.
  final String predefinedMetricType;

  /// Identifies the resource associated with the metric type.
  final String? resourceLabel;

  PolicyTargetTrackingConfigurationPredefinedMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predefinedMetricType'] = predefinedMetricType;
    final resourceLabelValue = resourceLabel;
    if (resourceLabelValue != null) {
      map['resourceLabel'] = resourceLabelValue;
    }
    return map;
  }

  factory PolicyTargetTrackingConfigurationPredefinedMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationPredefinedMetricSpecification(
      predefinedMetricType: map['predefinedMetricType'] as String,
      resourceLabel:
          map['resourceLabel'] == null ? null : map['resourceLabel'] as String,
    );
  }
}
