// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_feature_additional_configuration.dart';

/// Input properties used for looking up and filtering DetectorFeature resources.
class DetectorFeatureState {
  /// Additional feature configuration block for features`EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  final pulumi.Input<List<DetectorFeatureAdditionalConfiguration>>? additionalConfigurations;
  /// Amazon GuardDuty detector ID.
  final pulumi.Input<String>? detectorId;
  /// The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`, `AI_PROTECTION`, `AI_ANALYST`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [DetectorFeatureState].
  /// [additionalConfigurations] Additional feature configuration block for features`EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  /// [detectorId] Amazon GuardDuty detector ID.
  /// [name] The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`, `AI_PROTECTION`, `AI_ANALYST`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  const DetectorFeatureState({
    this.additionalConfigurations,
    this.detectorId,
    this.name,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DetectorFeatureAdditionalConfiguration>, List<Map<String, dynamic>>>(additionalConfigurations, (value) => pulumi.Input.encodeList<DetectorFeatureAdditionalConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'detectorId': ?detectorId,
      'name': ?name,
      'region': ?region,
      'status': ?status,
    };
  }

  factory DetectorFeatureState.fromMap(Map<String, dynamic> map) {
    return DetectorFeatureState(
      additionalConfigurations: (() { final guardedValue = map['additionalConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DetectorFeatureAdditionalConfiguration>(guardedValue, (value) => DetectorFeatureAdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      detectorId: (() { final guardedValue = map['detectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
