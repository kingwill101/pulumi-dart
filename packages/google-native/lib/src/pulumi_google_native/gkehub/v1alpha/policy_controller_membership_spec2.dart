// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config2.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpec2 {
  /// Policy Controller configuration for the cluster.
  final PolicyControllerHubConfig2? policyControllerHubConfig;

  /// Version of Policy Controller installed.
  final String? version;

  PolicyControllerMembershipSpec2({
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

  factory PolicyControllerMembershipSpec2.fromMap(Map<String, dynamic> map) {
    return PolicyControllerMembershipSpec2(
      policyControllerHubConfig: map['policyControllerHubConfig'] == null
          ? null
          : PolicyControllerHubConfig2.fromMap(
              (map['policyControllerHubConfig'] as Map)
                  .cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
