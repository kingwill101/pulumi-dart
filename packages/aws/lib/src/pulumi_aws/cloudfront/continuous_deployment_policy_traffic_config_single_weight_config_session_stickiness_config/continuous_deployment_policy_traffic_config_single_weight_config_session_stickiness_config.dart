// ignore_for_file: unused_element, unnecessary_cast

class ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig {
  /// The amount of time in seconds after which sessions will cease if no requests are received. Valid values are `300` - `3600` (5–60 minutes). The value must be less than or equal to `maximum_ttl`.
  final int idleTtl;

  /// The maximum amount of time in seconds to consider requests from the viewer as being part of the same session. Valid values are `300` - `3600` (5–60 minutes). The value must be greater than or equal to `idle_ttl`.
  final int maximumTtl;

  ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig({
    required this.idleTtl,
    required this.maximumTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idleTtl'] = idleTtl;
    map['maximumTtl'] = maximumTtl;
    return map;
  }

  factory ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig.fromMap(
      Map<String, dynamic> map) {
    return ContinuousDeploymentPolicyTrafficConfigSingleWeightConfigSessionStickinessConfig(
      idleTtl: map['idleTtl'] as int,
      maximumTtl: map['maximumTtl'] as int,
    );
  }
}
