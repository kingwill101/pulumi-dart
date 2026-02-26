// ignore_for_file: unused_element, unnecessary_cast

import '../feature_membership_policycontroller_policy_controller_hub_config/feature_membership_policycontroller_policy_controller_hub_config.dart';

class FeatureMembershipPolicycontroller {
  /// Policy Controller configuration for the cluster. Structure is documented below.
  final FeatureMembershipPolicycontrollerPolicyControllerHubConfig
      policyControllerHubConfig;

  /// Version of Policy Controller to install. Defaults to the latest version.
  final String? version;

  FeatureMembershipPolicycontroller({
    required this.policyControllerHubConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyControllerHubConfig'] = policyControllerHubConfig.toMap();
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory FeatureMembershipPolicycontroller.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipPolicycontroller(
      policyControllerHubConfig:
          FeatureMembershipPolicycontrollerPolicyControllerHubConfig.fromMap(
              (map['policyControllerHubConfig'] as Map)
                  .cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
