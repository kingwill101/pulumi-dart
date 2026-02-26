// ignore_for_file: unused_element, unnecessary_cast

class OrganizationConfigurationFeatureAdditionalConfiguration {
  /// The status of the additional configuration that will be configured for the organization. Valid values: `NEW`, `ALL`, `NONE`.
  final String autoEnable;

  /// The name of the additional configuration for a feature that will be configured for the organization. Valid values: `EKS_ADDON_MANAGEMENT`, `ECS_FARGATE_AGENT_MANAGEMENT`, `EC2_AGENT_MANAGEMENT`. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorAdditionalConfiguration.html) for the current list of supported values.
  final String name;

  OrganizationConfigurationFeatureAdditionalConfiguration({
    required this.autoEnable,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = autoEnable;
    map['name'] = name;
    return map;
  }

  factory OrganizationConfigurationFeatureAdditionalConfiguration.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationFeatureAdditionalConfiguration(
      autoEnable: map['autoEnable'] as String,
      name: map['name'] as String,
    );
  }
}
