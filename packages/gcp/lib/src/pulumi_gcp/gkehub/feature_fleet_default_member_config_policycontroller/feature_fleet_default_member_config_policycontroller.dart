// ignore_for_file: unused_element, unnecessary_cast

import '../feature_fleet_default_member_config_policycontroller_policy_controller_hub_config/feature_fleet_default_member_config_policycontroller_policy_controller_hub_config.dart';

class FeatureFleetDefaultMemberConfigPolicycontroller {
  /// Configuration of Policy Controller
  /// Structure is documented below.
  final FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig
      policyControllerHubConfig;

  /// Configures the version of Policy Controller
  final String? version;

  FeatureFleetDefaultMemberConfigPolicycontroller({
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

  factory FeatureFleetDefaultMemberConfigPolicycontroller.fromMap(
      Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfigPolicycontroller(
      policyControllerHubConfig:
          FeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig
              .fromMap((map['policyControllerHubConfig'] as Map)
                  .cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
