// ignore_for_file: unused_element, unnecessary_cast


class PolicyTargetTrackingConfigurationPredefinedMetricSpecification {
  /// Metric type.
  final String predefinedMetricType;
  /// Identifies the resource associated with the metric type.
  final String? resourceLabel;

  /// Creates a new [PolicyTargetTrackingConfigurationPredefinedMetricSpecification].
  /// [predefinedMetricType] Metric type.
  /// [resourceLabel] Identifies the resource associated with the metric type.
  PolicyTargetTrackingConfigurationPredefinedMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory PolicyTargetTrackingConfigurationPredefinedMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationPredefinedMetricSpecification(
      predefinedMetricType: map['predefinedMetricType'] as String,
      resourceLabel: map['resourceLabel'] == null ? null : map['resourceLabel'] as String,
    );
  }
}

