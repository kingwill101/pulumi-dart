import 'package:pulumi/pulumi.dart' as pulumi;
import '../member_detector_feature_additional_configuration/member_detector_feature_additional_configuration.dart';
import 'member_detector_feature_args.dart';

/// Provides a resource to manage a single Amazon GuardDuty [detector feature](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-features-activation-model.html#guardduty-features) for a member account.
///
/// > **NOTE:** Deleting this resource does not disable the detector feature in the member account, the resource in simply removed from state instead.
///
/// ## Example Usage
///
///
///
/// ## Extended Threat Detection for EKS
///
/// To enable GuardDuty [Extended Threat Detection](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-extended-threat-detection.html) for EKS, you need at least one of these features enabled: [EKS Protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html) or [Runtime Monitoring](https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring-configuration.html). For maximum detection coverage, enabling both is recommended to enhance detection capabilities.
class MemberDetectorFeature extends pulumi.CustomResource {
  /// Member account ID to be updated.
  late final pulumi.Output<String> accountId;

  /// Additional feature configuration block. See below.
  late final pulumi.Output<List<MemberDetectorFeatureAdditionalConfiguration>?>
      additionalConfigurations;

  /// Amazon GuardDuty detector ID.
  late final pulumi.Output<String> detectorId;

  /// The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`,`RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> status;

  MemberDetectorFeature(
    String name, {
    MemberDetectorFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/memberDetectorFeature:MemberDetectorFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.additionalConfigurations =
        registerOutput<List<MemberDetectorFeatureAdditionalConfiguration>?>(
            'additionalConfigurations');
    this.detectorId = registerOutput<String>('detectorId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
