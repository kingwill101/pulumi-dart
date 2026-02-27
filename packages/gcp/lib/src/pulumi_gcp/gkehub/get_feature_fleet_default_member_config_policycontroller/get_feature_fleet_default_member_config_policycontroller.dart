// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config/get_feature_fleet_default_member_config_policycontroller_policy_controller_hub_config.dart';

class GetFeatureFleetDefaultMemberConfigPolicycontroller {
  /// Configuration of Policy Controller
  final List<
          GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig>
      policyControllerHubConfigs;

  /// Configures the version of Policy Controller
  final String version;

  GetFeatureFleetDefaultMemberConfigPolicycontroller({
    required this.policyControllerHubConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policyControllerHubConfigs'] = pulumi.Input.encodeList<
        GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig,
        Map<String,
            dynamic>>(policyControllerHubConfigs, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory GetFeatureFleetDefaultMemberConfigPolicycontroller.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigPolicycontroller(
      policyControllerHubConfigs: pulumi.Input.decodeList<
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig>(
          map['policyControllerHubConfigs'],
          (value) =>
              GetFeatureFleetDefaultMemberConfigPolicycontrollerPolicyControllerHubConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}
