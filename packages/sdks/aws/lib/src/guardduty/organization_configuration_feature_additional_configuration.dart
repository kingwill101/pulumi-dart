// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationConfigurationFeatureAdditionalConfiguration {
  /// The status of the additional configuration that will be configured for the organization. Valid values: `NEW`, `ALL`, `NONE`.
  final pulumi.Input<String> autoEnable;
  /// The name of the additional configuration for a feature that will be configured for the organization. Valid values: `EKS_ADDON_MANAGEMENT`, `ECS_FARGATE_AGENT_MANAGEMENT`, `EC2_AGENT_MANAGEMENT`. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorAdditionalConfiguration.html) for the current list of supported values.
  final pulumi.Input<String> name;

  /// Creates a new [OrganizationConfigurationFeatureAdditionalConfiguration].
  /// [autoEnable] The status of the additional configuration that will be configured for the organization. Valid values: `NEW`, `ALL`, `NONE`.
  /// [name] The name of the additional configuration for a feature that will be configured for the organization. Valid values: `EKS_ADDON_MANAGEMENT`, `ECS_FARGATE_AGENT_MANAGEMENT`, `EC2_AGENT_MANAGEMENT`. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorAdditionalConfiguration.html) for the current list of supported values.
  const OrganizationConfigurationFeatureAdditionalConfiguration({
    required this.autoEnable,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable': autoEnable,
      'name': name,
    };
  }

  factory OrganizationConfigurationFeatureAdditionalConfiguration.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationFeatureAdditionalConfiguration(
      autoEnable: pulumi.Input.fromValue(map['autoEnable'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

