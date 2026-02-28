// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_gkehub_v1alpha.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecGkehubV1alpha {
  /// Policy Controller configuration for the cluster.
  final PolicyControllerHubConfigGkehubV1alpha? policyControllerHubConfig;

  /// Version of Policy Controller installed.
  final String? version;

  /// Creates a new [PolicyControllerMembershipSpecGkehubV1alpha].
  /// [policyControllerHubConfig] Policy Controller configuration for the cluster.
  /// [version] Version of Policy Controller installed.
  PolicyControllerMembershipSpecGkehubV1alpha({
    this.policyControllerHubConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyControllerHubConfigValue = policyControllerHubConfig;
    if (policyControllerHubConfigValue != null) {
      map['policyControllerHubConfig'] = policyControllerHubConfigValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory PolicyControllerMembershipSpecGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecGkehubV1alpha(
      policyControllerHubConfig: map['policyControllerHubConfig'] == null
          ? null
          : PolicyControllerHubConfigGkehubV1alpha.fromMap(
              (map['policyControllerHubConfig'] as Map)
                  .cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
