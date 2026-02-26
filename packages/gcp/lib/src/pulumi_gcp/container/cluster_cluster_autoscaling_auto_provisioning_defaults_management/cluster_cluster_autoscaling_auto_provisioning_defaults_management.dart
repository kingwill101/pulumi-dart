// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_cluster_autoscaling_auto_provisioning_defaults_management_upgrade_option/cluster_cluster_autoscaling_auto_provisioning_defaults_management_upgrade_option.dart';

class ClusterClusterAutoscalingAutoProvisioningDefaultsManagement {
  /// Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  ///
  /// This block also contains several computed attributes, documented below.
  final bool? autoRepair;

  /// Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  final bool? autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  final List<
          ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption>?
      upgradeOptions;

  ClusterClusterAutoscalingAutoProvisioningDefaultsManagement({
    this.autoRepair,
    this.autoUpgrade,
    this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRepairValue = autoRepair;
    if (autoRepairValue != null) {
      map['autoRepair'] = autoRepairValue;
    }
    final autoUpgradeValue = autoUpgrade;
    if (autoUpgradeValue != null) {
      map['autoUpgrade'] = autoUpgradeValue;
    }
    final upgradeOptionsValue = upgradeOptions;
    if (upgradeOptionsValue != null) {
      map['upgradeOptions'] = Input.encodeList<
          ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption,
          Map<String, dynamic>>(upgradeOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsManagement.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsManagement(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
      autoUpgrade:
          map['autoUpgrade'] == null ? null : map['autoUpgrade'] as bool,
      upgradeOptions: map['upgradeOptions'] == null
          ? null
          : Input.decodeList<
                  ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption>(
              map['upgradeOptions'],
              (value) =>
                  ClusterClusterAutoscalingAutoProvisioningDefaultsManagementUpgradeOption
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
