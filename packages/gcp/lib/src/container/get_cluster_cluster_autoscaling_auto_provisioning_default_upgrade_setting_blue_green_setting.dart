// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_autoscaling_auto_provisioning_default_upgrade_setting_blue_green_setting_standard_rollout_policy.dart';

class GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  ///
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String nodePoolSoakDuration;
  /// Standard policy for the blue-green upgrade.
  final List<GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy> standardRolloutPolicies;

  /// Creates a new [GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  /// [standardRolloutPolicies] Standard policy for the blue-green upgrade.
  GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting({
    required this.nodePoolSoakDuration,
    required this.standardRolloutPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': nodePoolSoakDuration,
      'standardRolloutPolicies': pulumi.Input.encodeList<GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy, Map<String, dynamic>>(standardRolloutPolicies, (value) => value.toMap()),
    };
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] as String,
      standardRolloutPolicies: pulumi.Input.decodeList<GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy>(map['standardRolloutPolicies'], (value) => GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSettingStandardRolloutPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

