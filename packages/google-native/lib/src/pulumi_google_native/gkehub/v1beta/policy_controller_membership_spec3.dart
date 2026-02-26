// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config3.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpec3 {
  /// Policy Controller configuration for the cluster.
  final PolicyControllerHubConfig3? policyControllerHubConfig;

  /// Version of Policy Controller installed.
  final String? version;

  PolicyControllerMembershipSpec3({
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

  factory PolicyControllerMembershipSpec3.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMembershipSpec3(
      policyControllerHubConfig: map['policyControllerHubConfig'] == null
          ? null
          : PolicyControllerHubConfig3.fromMap(
              (map['policyControllerHubConfig'] as Map)
                  .cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
