import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_configuration_feature_additional_configuration/organization_configuration_feature_additional_configuration.dart';
import 'organization_configuration_feature_args.dart';

/// Provides a resource to manage a single Amazon GuardDuty [organization configuration feature](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-features-activation-model.html#guardduty-features).
///
/// > **NOTE:** Deleting this resource does not disable the organization configuration feature, the resource is simply removed from state instead.
class OrganizationConfigurationFeature extends pulumi.CustomResource {
  /// Additional feature configuration block for features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  late final pulumi
      .Output<List<OrganizationConfigurationFeatureAdditionalConfiguration>?>
      additionalConfigurations;

  /// The status of the feature that is configured for the member accounts within the organization. Valid values: `NEW`, `ALL`, `NONE`.
  late final pulumi.Output<String> autoEnable;

  /// The ID of the detector that configures the delegated administrator.
  late final pulumi.Output<String> detectorId;

  /// The name of the feature that will be configured for the organization. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  OrganizationConfigurationFeature(
    String name, {
    OrganizationConfigurationFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/organizationConfigurationFeature:OrganizationConfigurationFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalConfigurations = registerOutput<
            List<OrganizationConfigurationFeatureAdditionalConfiguration>?>(
        'additionalConfigurations');
    this.autoEnable = registerOutput<String>('autoEnable');
    this.detectorId = registerOutput<String>('detectorId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
