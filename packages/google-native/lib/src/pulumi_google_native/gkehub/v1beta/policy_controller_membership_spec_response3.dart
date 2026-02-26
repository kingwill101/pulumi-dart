// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_response3.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecResponse3 {
  /// Policy Controller configuration for the cluster.
  final PolicyControllerHubConfigResponse3 policyControllerHubConfig;

  /// Version of Policy Controller installed.
  final String version;

  PolicyControllerMembershipSpecResponse3({
    required this.policyControllerHubConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyControllerHubConfig'] = policyControllerHubConfig.toMap();
    map['version'] = version;
    return map;
  }

  factory PolicyControllerMembershipSpecResponse3.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecResponse3(
      policyControllerHubConfig: PolicyControllerHubConfigResponse3.fromMap(
          (map['policyControllerHubConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
