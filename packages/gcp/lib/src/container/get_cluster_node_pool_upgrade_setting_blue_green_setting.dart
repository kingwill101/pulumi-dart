// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_upgrade_setting_blue_green_setting_autoscaled_rollout_policy.dart';
import 'get_cluster_node_pool_upgrade_setting_blue_green_setting_standard_rollout_policy.dart';

class GetClusterNodePoolUpgradeSettingBlueGreenSetting {
  /// Autoscaled rollout policy for blue-green upgrade.
  final List<
    GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy
  >
  autoscaledRolloutPolicies;

  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  final String nodePoolSoakDuration;

  /// Standard rollout policy is the default policy for blue-green.
  final List<
    GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy
  >
  standardRolloutPolicies;

  /// Creates a new [GetClusterNodePoolUpgradeSettingBlueGreenSetting].
  /// [autoscaledRolloutPolicies] Autoscaled rollout policy for blue-green upgrade.
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up.
  /// [standardRolloutPolicies] Standard rollout policy is the default policy for blue-green.
  GetClusterNodePoolUpgradeSettingBlueGreenSetting({
    required this.autoscaledRolloutPolicies,
    required this.nodePoolSoakDuration,
    required this.standardRolloutPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaledRolloutPolicies':
          pulumi.Input.encodeList<
            GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy,
            Map<String, dynamic>
          >(autoscaledRolloutPolicies, (value) => value.toMap()),
      'nodePoolSoakDuration': nodePoolSoakDuration,
      'standardRolloutPolicies':
          pulumi.Input.encodeList<
            GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy,
            Map<String, dynamic>
          >(standardRolloutPolicies, (value) => value.toMap()),
    };
  }

  factory GetClusterNodePoolUpgradeSettingBlueGreenSetting.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolUpgradeSettingBlueGreenSetting(
      autoscaledRolloutPolicies:
          pulumi.Input.decodeList<
            GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy
          >(
            map['autoscaledRolloutPolicies'],
            (value) =>
                GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      nodePoolSoakDuration: map['nodePoolSoakDuration'] as String,
      standardRolloutPolicies:
          pulumi.Input.decodeList<
            GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy
          >(
            map['standardRolloutPolicies'],
            (value) =>
                GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
