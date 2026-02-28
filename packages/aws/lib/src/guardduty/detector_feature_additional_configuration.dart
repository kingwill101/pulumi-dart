// ignore_for_file: unused_element, unnecessary_cast

class DetectorFeatureAdditionalConfiguration {
  /// The name of the additional configuration for a feature. Valid values: `EKS_ADDON_MANAGEMENT`, `ECS_FARGATE_AGENT_MANAGEMENT`, `EC2_AGENT_MANAGEMENT`. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorAdditionalConfiguration.html) for the current list of supported values.
  final String name;

  /// The status of the additional configuration. Valid values: `ENABLED`, `DISABLED`.
  final String status;

  /// Creates a new [DetectorFeatureAdditionalConfiguration].
  /// [name] The name of the additional configuration for a feature. Valid values: `EKS_ADDON_MANAGEMENT`, `ECS_FARGATE_AGENT_MANAGEMENT`, `EC2_AGENT_MANAGEMENT`. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorAdditionalConfiguration.html) for the current list of supported values.
  /// [status] The status of the additional configuration. Valid values: `ENABLED`, `DISABLED`.
  DetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['status'] = status;
    return map;
  }

  factory DetectorFeatureAdditionalConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DetectorFeatureAdditionalConfiguration(
      name: map['name'] as String,
      status: map['status'] as String,
    );
  }
}
