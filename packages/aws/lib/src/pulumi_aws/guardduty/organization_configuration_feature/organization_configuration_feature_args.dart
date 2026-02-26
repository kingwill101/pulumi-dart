// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_configuration_feature_additional_configuration/organization_configuration_feature_additional_configuration.dart';

/// The set of arguments for OrganizationConfigurationFeature.
class OrganizationConfigurationFeatureArgs {
  /// Additional feature configuration block for features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  final Input<List<OrganizationConfigurationFeatureAdditionalConfiguration>>?
      additionalConfigurations;

  /// The status of the feature that is configured for the member accounts within the organization. Valid values: `NEW`, `ALL`, `NONE`.
  final Input<String> autoEnable;

  /// The ID of the detector that configures the delegated administrator.
  final Input<String> detectorId;

  /// The name of the feature that will be configured for the organization. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationConfigurationFeatureArgs({
    this.additionalConfigurations,
    required this.autoEnable,
    required this.detectorId,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalConfigurationsValue = additionalConfigurations;
    if (additionalConfigurationsValue != null) {
      map['additionalConfigurations'] = Input.mapOptionalInputValue<
              List<OrganizationConfigurationFeatureAdditionalConfiguration>,
              List<Map<String, dynamic>>>(
          additionalConfigurationsValue,
          (value) => Input.encodeList<
              OrganizationConfigurationFeatureAdditionalConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['autoEnable'] = autoEnable;
    map['detectorId'] = detectorId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationConfigurationFeatureArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationFeatureArgs(
      additionalConfigurations: Input.asOptionalInput<
              List<OrganizationConfigurationFeatureAdditionalConfiguration>>(
          map['additionalConfigurations']),
      autoEnable: Input.asInput<String>(map['autoEnable']),
      detectorId: Input.asInput<String>(map['detectorId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
