// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_autoscaling_auto_provisioning_default_management_upgrade_option.dart';

class GetClusterClusterAutoscalingAutoProvisioningDefaultManagement {
  /// Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  final bool autoRepair;

  /// Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  final bool autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  final List<
    GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption
  >
  upgradeOptions;

  /// Creates a new [GetClusterClusterAutoscalingAutoProvisioningDefaultManagement].
  /// [autoRepair] Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  /// [autoUpgrade] Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  /// [upgradeOptions] Specifies the Auto Upgrade knobs for the node pool.
  GetClusterClusterAutoscalingAutoProvisioningDefaultManagement({
    required this.autoRepair,
    required this.autoUpgrade,
    required this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': autoRepair,
      'autoUpgrade': autoUpgrade,
      'upgradeOptions':
          pulumi.Input.encodeList<
            GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption,
            Map<String, dynamic>
          >(upgradeOptions, (value) => value.toMap()),
    };
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultManagement(
      autoRepair: map['autoRepair'] as bool,
      autoUpgrade: map['autoUpgrade'] as bool,
      upgradeOptions:
          pulumi.Input.decodeList<
            GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption
          >(
            map['upgradeOptions'],
            (value) =>
                GetClusterClusterAutoscalingAutoProvisioningDefaultManagementUpgradeOption.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
