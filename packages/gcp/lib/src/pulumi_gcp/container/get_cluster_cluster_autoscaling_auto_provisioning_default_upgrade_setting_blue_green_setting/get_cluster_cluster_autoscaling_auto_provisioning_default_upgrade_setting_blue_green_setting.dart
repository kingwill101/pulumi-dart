// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_cluster_autoscaling_auto_provisioning_default_upgrade_setting_blue_green_setting_standard_rollout_policy/get_cluster_cluster_autoscaling_auto_provisioning_default_upgrade_setting_blue_green_setting_standard_rollout_policy.dart';

class GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  ///
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade.
  final List<
          GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy>
      standardRolloutPolicies;

  GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting({
    required this.nodePoolSoakDuration,
    required this.standardRolloutPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePoolSoakDuration'] = nodePoolSoakDuration;
    map['standardRolloutPolicies'] = Input.encodeList<
        GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy,
        Map<String,
            dynamic>>(standardRolloutPolicies, (value) => value.toMap());
    return map;
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting.fromMap(
      Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] as String,
      standardRolloutPolicies: Input.decodeList<
              GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy>(
          map['standardRolloutPolicies'],
          (value) =>
              GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
