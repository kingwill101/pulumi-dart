// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration {
  /// Matches a taint effect.
  final String effect;

  /// Matches a taint key (not necessarily unique).
  final String key;

  /// Matches a taint operator.
  final String operator;

  /// Matches a taint value.
  final String value;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration].
  /// [effect] Matches a taint effect.
  /// [key] Matches a taint key (not necessarily unique).
  /// [operator] Matches a taint operator.
  /// [value] Matches a taint value.
  GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration({
    required this.effect,
    required this.key,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'key': key,
      'operator': operator,
      'value': value,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfigDeploymentConfigPodToleration(
      effect: map['effect'] as String,
      key: map['key'] as String,
      operator: map['operator'] as String,
      value: map['value'] as String,
    );
  }
}
