// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../member_detector_feature_additional_configuration/member_detector_feature_additional_configuration.dart';

/// The set of arguments for MemberDetectorFeature.
class MemberDetectorFeatureArgs {
  /// Member account ID to be updated.
  final Input<String> accountId;

  /// Additional feature configuration block. See below.
  final Input<List<MemberDetectorFeatureAdditionalConfiguration>>?
      additionalConfigurations;

  /// Amazon GuardDuty detector ID.
  final Input<String> detectorId;

  /// The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`,`RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  final Input<String> status;

  MemberDetectorFeatureArgs({
    required this.accountId,
    this.additionalConfigurations,
    required this.detectorId,
    this.name,
    this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final additionalConfigurationsValue = additionalConfigurations;
    if (additionalConfigurationsValue != null) {
      map['additionalConfigurations'] = Input.mapOptionalInputValue<
              List<MemberDetectorFeatureAdditionalConfiguration>,
              List<Map<String, dynamic>>>(
          additionalConfigurationsValue,
          (value) => Input.encodeList<
              MemberDetectorFeatureAdditionalConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['detectorId'] = detectorId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['status'] = status;
    return map;
  }

  factory MemberDetectorFeatureArgs.fromMap(Map<String, dynamic> map) {
    return MemberDetectorFeatureArgs(
      accountId: Input.asInput<String>(map['accountId']),
      additionalConfigurations: Input.asOptionalInput<
              List<MemberDetectorFeatureAdditionalConfiguration>>(
          map['additionalConfigurations']),
      detectorId: Input.asInput<String>(map['detectorId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      status: Input.asInput<String>(map['status']),
    );
  }
}
