// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../detector_feature_additional_configuration/detector_feature_additional_configuration.dart';

/// The set of arguments for DetectorFeature.
class DetectorFeatureArgs {
  /// Additional feature configuration block for features`EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING`. See below.
  final pulumi.Input<List<DetectorFeatureAdditionalConfiguration>>?
      additionalConfigurations;

  /// Amazon GuardDuty detector ID.
  final pulumi.Input<String> detectorId;

  /// The name of the detector feature. Valid values: `S3_DATA_EVENTS`, `EKS_AUDIT_LOGS`, `EBS_MALWARE_PROTECTION`, `RDS_LOGIN_EVENTS`, `EKS_RUNTIME_MONITORING`, `LAMBDA_NETWORK_LOGS`, `RUNTIME_MONITORING`. Only one of two features `EKS_RUNTIME_MONITORING` or `RUNTIME_MONITORING` can be added, adding both features will cause an error. Refer to the [AWS Documentation](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DetectorFeatureConfiguration.html) for the current list of supported values.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The status of the detector feature. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> status;

  DetectorFeatureArgs({
    this.additionalConfigurations,
    required this.detectorId,
    this.name,
    this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalConfigurationsValue = additionalConfigurations;
    if (additionalConfigurationsValue != null) {
      map['additionalConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<DetectorFeatureAdditionalConfiguration>,
              List<Map<String, dynamic>>>(
          additionalConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              DetectorFeatureAdditionalConfiguration,
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

  factory DetectorFeatureArgs.fromMap(Map<String, dynamic> map) {
    return DetectorFeatureArgs(
      additionalConfigurations: pulumi.Input.asOptionalInput<
              List<DetectorFeatureAdditionalConfiguration>>(
          map['additionalConfigurations']),
      detectorId: pulumi.Input.asInput<String>(map['detectorId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asInput<String>(map['status']),
    );
  }
}
