// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig {
  /// The amount of time in seconds after which sessions will cease if no requests are received. Valid values are `300` - `3600` (5–60 minutes). The value must be less than or equal to `maximumTtl`.
  final pulumi.Input<int> idleTtl;
  /// The maximum amount of time in seconds to consider requests from the viewer as being part of the same session. Valid values are `300` - `3600` (5–60 minutes). The value must be greater than or equal to `idleTtl`.
  final pulumi.Input<int> maximumTtl;

  /// Creates a new [ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig].
  /// [idleTtl] The amount of time in seconds after which sessions will cease if no requests are received. Valid values are `300` - `3600` (5–60 minutes). The value must be less than or equal to `maximumTtl`.
  /// [maximumTtl] The maximum amount of time in seconds to consider requests from the viewer as being part of the same session. Valid values are `300` - `3600` (5–60 minutes). The value must be greater than or equal to `idleTtl`.
  const ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig({
    required this.idleTtl,
    required this.maximumTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTtl': idleTtl,
      'maximumTtl': maximumTtl,
    };
  }

  factory ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig.fromMap(Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig(
      idleTtl: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['idleTtl'])),
      maximumTtl: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maximumTtl'])),
    );
  }
}
