// ignore_for_file: unused_element, unnecessary_cast

import '../node_pool_upgrade_settings_blue_green_settings_autoscaled_rollout_policy/node_pool_upgrade_settings_blue_green_settings_autoscaled_rollout_policy.dart';
import '../node_pool_upgrade_settings_blue_green_settings_standard_rollout_policy/node_pool_upgrade_settings_blue_green_settings_standard_rollout_policy.dart';

class NodePoolUpgradeSettingsBlueGreenSettings {
  /// Autoscaled rollout policy for blue-green upgrade.
  final NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy?
      autoscaledRolloutPolicy;

  /// Time needed after draining the entire blue pool.
  /// After this period, the blue pool will be cleaned up.
  final String? nodePoolSoakDuration;

  /// Specifies the standard policy settings for blue-green upgrades.
  final NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy?
      standardRolloutPolicy;

  NodePoolUpgradeSettingsBlueGreenSettings({
    this.autoscaledRolloutPolicy,
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscaledRolloutPolicyValue = autoscaledRolloutPolicy;
    if (autoscaledRolloutPolicyValue != null) {
      map['autoscaledRolloutPolicy'] = autoscaledRolloutPolicyValue.toMap();
    }
    final nodePoolSoakDurationValue = nodePoolSoakDuration;
    if (nodePoolSoakDurationValue != null) {
      map['nodePoolSoakDuration'] = nodePoolSoakDurationValue;
    }
    final standardRolloutPolicyValue = standardRolloutPolicy;
    if (standardRolloutPolicyValue != null) {
      map['standardRolloutPolicy'] = standardRolloutPolicyValue.toMap();
    }
    return map;
  }

  factory NodePoolUpgradeSettingsBlueGreenSettings.fromMap(
      Map<String, dynamic> map) {
    return NodePoolUpgradeSettingsBlueGreenSettings(
      autoscaledRolloutPolicy: map['autoscaledRolloutPolicy'] == null
          ? null
          : NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy
              .fromMap((map['autoscaledRolloutPolicy'] as Map)
                  .cast<String, dynamic>()),
      nodePoolSoakDuration: map['nodePoolSoakDuration'] == null
          ? null
          : map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy: map['standardRolloutPolicy'] == null
          ? null
          : NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy
              .fromMap((map['standardRolloutPolicy'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
