// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_feature_additional_configuration.dart';

/// {@template pulumi_guardduty_detector_feature_detector_feature_args_doc}
/// The set of arguments for DetectorFeature.
/// {@endtemplate}
/// {@macro pulumi_guardduty_detector_feature_detector_feature_args_doc}
class DetectorFeatureArgs {
  /// Additional feature configuration block for features`EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  final pulumi.Input<List<DetectorFeatureAdditionalConfiguration>>? additionalConfigurations;
  /// Amazon GuardDuty detector ID.
  final pulumi.Input<String> detectorId;
  /// The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> status;

  /// Creates a new [DetectorFeatureArgs].
  /// [additionalConfigurations] Additional feature configuration block for features`EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  /// [detectorId] Amazon GuardDuty detector ID.
  /// [name] The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  DetectorFeatureArgs({
    List<DetectorFeatureAdditionalConfiguration>? additionalConfigurations,
    required String detectorId,
    String? name,
    String? region,
    required String status,
  }) :
      additionalConfigurations = pulumi.Input.asOptionalInput<List<DetectorFeatureAdditionalConfiguration>>(additionalConfigurations),
      detectorId = pulumi.Input.asInput<String>(detectorId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DetectorFeatureAdditionalConfiguration>, List<Map<String, dynamic>>>(additionalConfigurations, (value) => pulumi.Input.encodeList<DetectorFeatureAdditionalConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'detectorId': detectorId,
      'name': ?name,
      'region': ?region,
      'status': status,
    };
  }

  factory DetectorFeatureArgs.fromMap(Map<String, dynamic> map) {
    return DetectorFeatureArgs(
      additionalConfigurations: map['additionalConfigurations'] == null ? null : pulumi.Input.decodeList<DetectorFeatureAdditionalConfiguration>(map['additionalConfigurations'], (value) => DetectorFeatureAdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      detectorId: map['detectorId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] as String,
    );
  }
}

