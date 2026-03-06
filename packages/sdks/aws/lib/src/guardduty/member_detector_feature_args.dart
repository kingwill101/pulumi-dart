// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_detector_feature_additional_configuration.dart';

/// {@template pulumi_guardduty_member_detector_feature_member_detector_feature_args_doc}
/// The set of arguments for MemberDetectorFeature.
/// {@endtemplate}
/// {@macro pulumi_guardduty_member_detector_feature_member_detector_feature_args_doc}
class MemberDetectorFeatureArgs {
  /// Member account ID to be updated.
  final pulumi.Input<String> accountId;
  /// Additional feature configuration block. See below.
  final pulumi.Input<List<MemberDetectorFeatureAdditionalConfiguration>>? additionalConfigurations;
  /// Amazon GuardDuty detector ID.
  final pulumi.Input<String> detectorId;
  /// The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`,`RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> status;

  /// Creates a new [MemberDetectorFeatureArgs].
  /// [accountId] Member account ID to be updated.
  /// [additionalConfigurations] Additional feature configuration block. See below.
  /// [detectorId] Amazon GuardDuty detector ID.
  /// [name] The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`,`RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  const MemberDetectorFeatureArgs({
    required this.accountId,
    this.additionalConfigurations,
    required this.detectorId,
    this.name,
    this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'additionalConfigurations': ?pulumi.Input.mapOptionalInputValue<List<MemberDetectorFeatureAdditionalConfiguration>, List<Map<String, dynamic>>>(additionalConfigurations, (value) => pulumi.Input.encodeList<MemberDetectorFeatureAdditionalConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'detectorId': detectorId,
      'name': ?name,
      'region': ?region,
      'status': status,
    };
  }

  factory MemberDetectorFeatureArgs.fromMap(Map<String, dynamic> map) {
    return MemberDetectorFeatureArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      additionalConfigurations: (() { final guardedValue = map['additionalConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MemberDetectorFeatureAdditionalConfiguration>(guardedValue, (value) => MemberDetectorFeatureAdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      detectorId: pulumi.Input.fromValue(map['detectorId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

