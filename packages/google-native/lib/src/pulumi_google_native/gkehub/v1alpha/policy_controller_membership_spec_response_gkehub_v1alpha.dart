// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_response_gkehub_v1alpha.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecResponseGkehubV1alpha {
  /// Policy Controller configuration for the cluster.
  final PolicyControllerHubConfigResponseGkehubV1alpha
      policyControllerHubConfig;

  /// Version of Policy Controller installed.
  final String version;

  PolicyControllerMembershipSpecResponseGkehubV1alpha({
    required this.policyControllerHubConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyControllerHubConfig'] = policyControllerHubConfig.toMap();
    map['version'] = version;
    return map;
  }

  factory PolicyControllerMembershipSpecResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecResponseGkehubV1alpha(
      policyControllerHubConfig:
          PolicyControllerHubConfigResponseGkehubV1alpha.fromMap(
              (map['policyControllerHubConfig'] as Map)
                  .cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
