// ignore_for_file: unused_element, unnecessary_cast

import 'policy_controller_hub_config_response2.dart';

/// **Policy Controller**: Configuration for a single cluster. Intended to parallel the PolicyController CR.
class PolicyControllerMembershipSpecResponse2 {
  /// Policy Controller configuration for the cluster.
  final PolicyControllerHubConfigResponse2 policyControllerHubConfig;

  /// Version of Policy Controller installed.
  final String version;

  PolicyControllerMembershipSpecResponse2({
    required this.policyControllerHubConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyControllerHubConfig'] = policyControllerHubConfig.toMap();
    map['version'] = version;
    return map;
  }

  factory PolicyControllerMembershipSpecResponse2.fromMap(
      Map<String, dynamic> map) {
    return PolicyControllerMembershipSpecResponse2(
      policyControllerHubConfig: PolicyControllerHubConfigResponse2.fromMap(
          (map['policyControllerHubConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
