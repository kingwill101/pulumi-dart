// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_cluster_autoscaling_auto_provisioning_defaults_upgrade_settings_blue_green_settings_standard_rollout_policy.dart';

class ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  final ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy?
  standardRolloutPolicy;

  /// Creates a new [ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings({
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': ?nodePoolSoakDuration,
      'standardRolloutPolicy': ?standardRolloutPolicy == null
          ? null
          : standardRolloutPolicy!.toMap(),
    };
  }

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings(
      nodePoolSoakDuration: map['nodePoolSoakDuration'] == null
          ? null
          : map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy: map['standardRolloutPolicy'] == null
          ? null
          : ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy.fromMap(
              (map['standardRolloutPolicy'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
