// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_feature_additional_configuration.dart';

/// {@template pulumi_guardduty_organization_configuration_feature_organization_configuration_feature_args_doc}
/// The set of arguments for OrganizationConfigurationFeature.
/// {@endtemplate}
/// {@macro pulumi_guardduty_organization_configuration_feature_organization_configuration_feature_args_doc}
class OrganizationConfigurationFeatureArgs {
  /// Additional feature configuration block for features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  final pulumi.Input<List<OrganizationConfigurationFeatureAdditionalConfiguration>>? additionalConfigurations;
  /// The status of the feature that is configured for the member accounts within the organization. Valid values: `NEW`, `ALL`, `NONE`.
  final pulumi.Input<String> autoEnable;
  /// The ID of the detector that configures the delegated administrator.
  final pulumi.Input<String> detectorId;
  /// The name of the feature that will be configured for the organization. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationConfigurationFeatureArgs].
  /// [additionalConfigurations] Additional feature configuration block for features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  /// [autoEnable] The status of the feature that is configured for the member accounts within the organization. Valid values: `NEW`, `ALL`, `NONE`.
  /// [detectorId] The ID of the detector that configures the delegated administrator.
  /// [name] The name of the feature that will be configured for the organization. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationConfigurationFeatureArgs({
    this.additionalConfigurations,
    required this.autoEnable,
    required this.detectorId,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfigurations': ?pulumi.Input.mapOptionalInputValue<List<OrganizationConfigurationFeatureAdditionalConfiguration>, List<Map<String, dynamic>>>(additionalConfigurations, (value) => pulumi.Input.encodeList<OrganizationConfigurationFeatureAdditionalConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoEnable': autoEnable,
      'detectorId': detectorId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory OrganizationConfigurationFeatureArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationFeatureArgs(
      additionalConfigurations: map['additionalConfigurations'] == null ? null : (pulumi.Input.decodeList<OrganizationConfigurationFeatureAdditionalConfiguration>(map['additionalConfigurations'], (value) => OrganizationConfigurationFeatureAdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoEnable: (map['autoEnable'] as String).input(),
      detectorId: (map['detectorId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

