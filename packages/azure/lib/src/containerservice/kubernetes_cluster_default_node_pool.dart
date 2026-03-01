// ignore_for_file: unused_element, unnecessary_cast

import 'kubernetes_cluster_default_node_pool_kubelet_config.dart';
import 'kubernetes_cluster_default_node_pool_linux_os_config.dart';
import 'kubernetes_cluster_default_node_pool_node_network_profile.dart';
import 'kubernetes_cluster_default_node_pool_upgrade_settings.dart';

class KubernetesClusterDefaultNodePool {
  /// Should [the Kubernetes Auto Scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler) be enabled for this Node Pool?
  ///
  /// > **Note:** This requires that the `type` is set to `VirtualMachineScaleSets`.
  ///
  /// > **Note:** If you're using AutoScaling, you may wish to use [`ignoreChanges` functionality](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to ignore changes to the `node_count` field.
  final bool? autoScalingEnabled;
  /// Specifies the ID of the Capacity Reservation Group within which this AKS Cluster should be created. Changing this forces a new resource to be created.
  final String? capacityReservationGroupId;
  /// Should the nodes in this Node Pool have Federal Information Processing Standard enabled? `temporary_name_for_rotation` must be specified when changing this block.
  final bool? fipsEnabled;
  /// Specifies the driver type for GPU nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  final String? gpuDriver;
  /// Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  final String? gpuInstance;
  /// Should the nodes in the Default Node Pool have host encryption enabled? `temporary_name_for_rotation` must be specified when changing this property.
  ///
  /// > **Note:** This requires that the Feature `Microsoft.Compute/EncryptionAtHost` is enabled and the Resource Provider is registered.
  final bool? hostEncryptionEnabled;
  /// Specifies the ID of the Host Group within which this AKS Cluster should be created. Changing this forces a new resource to be created.
  final String? hostGroupId;
  /// A `kubelet_config` block as defined below. `temporary_name_for_rotation` must be specified when changing this block.
  final KubernetesClusterDefaultNodePoolKubeletConfig? kubeletConfig;
  /// The type of disk used by kubelet. Possible values are `OS` and `Temporary`. `temporary_name_for_rotation` must be specified when changing this block.
  final String? kubeletDiskType;
  /// A `linux_os_config` block as defined below. `temporary_name_for_rotation` must be specified when changing this block.
  final KubernetesClusterDefaultNodePoolLinuxOsConfig? linuxOsConfig;
  final int? maxCount;
  /// The maximum number of pods that can run on each agent. `temporary_name_for_rotation` must be specified when changing this property.
  final int? maxPods;
  final int? minCount;
  /// The name which should be used for the default Kubernetes Node Pool.
  final String name;
  final int? nodeCount;
  /// A map of Kubernetes labels which should be applied to nodes in the Default Node Pool.
  final Map<String, String>? nodeLabels;
  /// A `node_network_profile` block as documented below.
  final KubernetesClusterDefaultNodePoolNodeNetworkProfile? nodeNetworkProfile;
  /// Should nodes in this Node Pool have a Public IP Address? `temporary_name_for_rotation` must be specified when changing this property.
  final bool? nodePublicIpEnabled;
  /// Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `node_public_ip_enabled` should be `true`. Changing this forces a new resource to be created.
  final String? nodePublicIpPrefixId;
  /// Enabling this option will taint default node pool with `CriticalAddonsOnly=true:NoSchedule` taint. `temporary_name_for_rotation` must be specified when changing this property.
  final bool? onlyCriticalAddonsEnabled;
  /// Version of Kubernetes used for the Agents. If not specified, the default node pool will be created with the version specified by `kubernetes_version`. If both are unspecified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  ///
  /// > **Note:** This version must be supported by the Kubernetes Cluster - as such the version of Kubernetes used on the Cluster/Control Plane may need to be upgraded first.
  final String? orchestratorVersion;
  /// The size of the OS Disk which should be used for each agent in the Node Pool. `temporary_name_for_rotation` must be specified when attempting a change.
  final int? osDiskSizeGb;
  /// The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. `temporary_name_for_rotation` must be specified when attempting a change.
  final String? osDiskType;
  /// Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; otherwise `temporary_name_for_rotation` must be specified when attempting a change.
  ///
  /// > **Note:** `Windows2019` is deprecated and not supported for Kubernetes version ≥1.33.
  final String? osSku;
  /// The ID of the Subnet where the pods in the default Node Pool should exist.
  final String? podSubnetId;
  /// The ID of the Proximity Placement Group. Changing this forces a new resource to be created.
  final String? proximityPlacementGroupId;
  /// Specifies the autoscaling behaviour of the Kubernetes Cluster. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  final String? scaleDownMode;
  /// The ID of the Snapshot which should be used to create this default Node Pool. `temporary_name_for_rotation` must be specified when changing this property.
  final String? snapshotId;
  /// A mapping of tags to assign to the Node Pool.
  ///
  /// > At this time there's a bug in the AKS API where Tags for a Node Pool are not stored in the correct case - you may wish to use `ignore_changes` functionality to ignore changes to the casing until this is fixed in the AKS API.
  final Map<String, String>? tags;
  /// Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing.
  final String? temporaryNameForRotation;
  /// The type of Node Pool which should be created. Possible values are `VirtualMachineScaleSets`. Defaults to `VirtualMachineScaleSets`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When creating a cluster that supports multiple node pools, the cluster must use `VirtualMachineScaleSets`. For more information on the limitations of clusters using multiple node pools see [the documentation](https://learn.microsoft.com/en-us/azure/aks/use-multiple-node-pools#limitations).
  final String? type;
  /// Used to specify whether the UltraSSD is enabled in the Default Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. `temporary_name_for_rotation` must be specified when attempting a change.
  final bool? ultraSsdEnabled;
  /// A `upgrade_settings` block as documented below.
  final KubernetesClusterDefaultNodePoolUpgradeSettings? upgradeSettings;
  /// The size of the Virtual Machine, such as `Standard_DS2_v2`. `temporary_name_for_rotation` must be specified when attempting a resize.
  final String? vmSize;
  /// The ID of a Subnet where the Kubernetes Node Pool should exist.
  ///
  /// > **Note:** A Route Table must be configured on this Subnet.
  final String? vnetSubnetId;
  /// Specifies the workload runtime used by the node pool. Possible value is `OCIContainer`.
  final String? workloadRuntime;
  /// Specifies a list of Availability Zones in which this Kubernetes Cluster should be located. `temporary_name_for_rotation` must be specified when changing this property.
  ///
  /// > **Note:** This requires that the `type` is set to `VirtualMachineScaleSets` and that `load_balancer_sku` is set to `standard`.
  final List<String>? zones;

  /// Creates a new [KubernetesClusterDefaultNodePool].
  /// [autoScalingEnabled] Should [the Kubernetes Auto Scaler](https://docs.microsoft.com/azure/aks/cluster-autoscaler) be enabled for this Node Pool?
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group within which this AKS Cluster should be created. Changing this forces a new resource to be created.
  /// [fipsEnabled] Should the nodes in this Node Pool have Federal Information Processing Standard enabled? `temporary_name_for_rotation` must be specified when changing this block.
  /// [gpuDriver] Specifies the driver type for GPU nodes. Possible values are `Install` and `None`. Changing this forces a new resource to be created.
  /// [gpuInstance] Specifies the GPU MIG instance profile for supported GPU VM SKU. The allowed values are `MIG1g`, `MIG2g`, `MIG3g`, `MIG4g` and `MIG7g`. Changing this forces a new resource to be created.
  /// [hostEncryptionEnabled] Should the nodes in the Default Node Pool have host encryption enabled? `temporary_name_for_rotation` must be specified when changing this property.
  /// [hostGroupId] Specifies the ID of the Host Group within which this AKS Cluster should be created. Changing this forces a new resource to be created.
  /// [kubeletConfig] A `kubelet_config` block as defined below. `temporary_name_for_rotation` must be specified when changing this block.
  /// [kubeletDiskType] The type of disk used by kubelet. Possible values are `OS` and `Temporary`. `temporary_name_for_rotation` must be specified when changing this block.
  /// [linuxOsConfig] A `linux_os_config` block as defined below. `temporary_name_for_rotation` must be specified when changing this block.
  /// [maxCount] Optional.
  /// [maxPods] The maximum number of pods that can run on each agent. `temporary_name_for_rotation` must be specified when changing this property.
  /// [minCount] Optional.
  /// [name] The name which should be used for the default Kubernetes Node Pool.
  /// [nodeCount] Optional.
  /// [nodeLabels] A map of Kubernetes labels which should be applied to nodes in the Default Node Pool.
  /// [nodeNetworkProfile] A `node_network_profile` block as documented below.
  /// [nodePublicIpEnabled] Should nodes in this Node Pool have a Public IP Address? `temporary_name_for_rotation` must be specified when changing this property.
  /// [nodePublicIpPrefixId] Resource ID for the Public IP Addresses Prefix for the nodes in this Node Pool. `node_public_ip_enabled` should be `true`. Changing this forces a new resource to be created.
  /// [onlyCriticalAddonsEnabled] Enabling this option will taint default node pool with `CriticalAddonsOnly=true:NoSchedule` taint. `temporary_name_for_rotation` must be specified when changing this property.
  /// [orchestratorVersion] Version of Kubernetes used for the Agents. If not specified, the default node pool will be created with the version specified by `kubernetes_version`. If both are unspecified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as `1.22` are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in [the documentation](https://docs.microsoft.com/en-us/azure/aks/supported-kubernetes-versions?tabs=azure-cli#alias-minor-version).
  /// [osDiskSizeGb] The size of the OS Disk which should be used for each agent in the Node Pool. `temporary_name_for_rotation` must be specified when attempting a change.
  /// [osDiskType] The type of disk which should be used for the Operating System. Possible values are `Ephemeral` and `Managed`. Defaults to `Managed`. `temporary_name_for_rotation` must be specified when attempting a change.
  /// [osSku] Specifies the OS SKU used by the agent pool. Possible values are `AzureLinux`, `AzureLinux3`, `Ubuntu`, `Ubuntu2204`, `Windows2019` and `Windows2022`. If not specified, the default is `Ubuntu` when os_type=Linux or `Windows2019` if os_type=Windows (`Windows2022` Kubernetes ≥1.33). Changing between `AzureLinux` and `Ubuntu` does not replace the resource; otherwise `temporary_name_for_rotation` must be specified when attempting a change.
  /// [podSubnetId] The ID of the Subnet where the pods in the default Node Pool should exist.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group. Changing this forces a new resource to be created.
  /// [scaleDownMode] Specifies the autoscaling behaviour of the Kubernetes Cluster. Allowed values are `Delete` and `Deallocate`. Defaults to `Delete`.
  /// [snapshotId] The ID of the Snapshot which should be used to create this default Node Pool. `temporary_name_for_rotation` must be specified when changing this property.
  /// [tags] A mapping of tags to assign to the Node Pool.
  /// [temporaryNameForRotation] Specifies the name of the temporary node pool used to cycle the default node pool for VM resizing.
  /// [type] The type of Node Pool which should be created. Possible values are `VirtualMachineScaleSets`. Defaults to `VirtualMachineScaleSets`. Changing this forces a new resource to be created.
  /// [ultraSsdEnabled] Used to specify whether the UltraSSD is enabled in the Default Node Pool. Defaults to `false`. See [the documentation](https://docs.microsoft.com/azure/aks/use-ultra-disks) for more information. `temporary_name_for_rotation` must be specified when attempting a change.
  /// [upgradeSettings] A `upgrade_settings` block as documented below.
  /// [vmSize] The size of the Virtual Machine, such as `Standard_DS2_v2`. `temporary_name_for_rotation` must be specified when attempting a resize.
  /// [vnetSubnetId] The ID of a Subnet where the Kubernetes Node Pool should exist.
  /// [workloadRuntime] Specifies the workload runtime used by the node pool. Possible value is `OCIContainer`.
  /// [zones] Specifies a list of Availability Zones in which this Kubernetes Cluster should be located. `temporary_name_for_rotation` must be specified when changing this property.
  KubernetesClusterDefaultNodePool({
    this.autoScalingEnabled,
    this.capacityReservationGroupId,
    this.fipsEnabled,
    this.gpuDriver,
    this.gpuInstance,
    this.hostEncryptionEnabled,
    this.hostGroupId,
    this.kubeletConfig,
    this.kubeletDiskType,
    this.linuxOsConfig,
    this.maxCount,
    this.maxPods,
    this.minCount,
    required this.name,
    this.nodeCount,
    this.nodeLabels,
    this.nodeNetworkProfile,
    this.nodePublicIpEnabled,
    this.nodePublicIpPrefixId,
    this.onlyCriticalAddonsEnabled,
    this.orchestratorVersion,
    this.osDiskSizeGb,
    this.osDiskType,
    this.osSku,
    this.podSubnetId,
    this.proximityPlacementGroupId,
    this.scaleDownMode,
    this.snapshotId,
    this.tags,
    this.temporaryNameForRotation,
    this.type,
    this.ultraSsdEnabled,
    this.upgradeSettings,
    this.vmSize,
    this.vnetSubnetId,
    this.workloadRuntime,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingEnabled': ?autoScalingEnabled,
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'fipsEnabled': ?fipsEnabled,
      'gpuDriver': ?gpuDriver,
      'gpuInstance': ?gpuInstance,
      'hostEncryptionEnabled': ?hostEncryptionEnabled,
      'hostGroupId': ?hostGroupId,
      'kubeletConfig': ?kubeletConfig == null ? null : kubeletConfig!.toMap(),
      'kubeletDiskType': ?kubeletDiskType,
      'linuxOsConfig': ?linuxOsConfig == null ? null : linuxOsConfig!.toMap(),
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'minCount': ?minCount,
      'name': name,
      'nodeCount': ?nodeCount,
      'nodeLabels': ?nodeLabels,
      'nodeNetworkProfile': ?nodeNetworkProfile == null ? null : nodeNetworkProfile!.toMap(),
      'nodePublicIpEnabled': ?nodePublicIpEnabled,
      'nodePublicIpPrefixId': ?nodePublicIpPrefixId,
      'onlyCriticalAddonsEnabled': ?onlyCriticalAddonsEnabled,
      'orchestratorVersion': ?orchestratorVersion,
      'osDiskSizeGb': ?osDiskSizeGb,
      'osDiskType': ?osDiskType,
      'osSku': ?osSku,
      'podSubnetId': ?podSubnetId,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'scaleDownMode': ?scaleDownMode,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'temporaryNameForRotation': ?temporaryNameForRotation,
      'type': ?type,
      'ultraSsdEnabled': ?ultraSsdEnabled,
      'upgradeSettings': ?upgradeSettings == null ? null : upgradeSettings!.toMap(),
      'vmSize': ?vmSize,
      'vnetSubnetId': ?vnetSubnetId,
      'workloadRuntime': ?workloadRuntime,
      'zones': ?zones,
    };
  }

  factory KubernetesClusterDefaultNodePool.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterDefaultNodePool(
      autoScalingEnabled: map['autoScalingEnabled'] == null ? null : map['autoScalingEnabled'] as bool,
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : map['capacityReservationGroupId'] as String,
      fipsEnabled: map['fipsEnabled'] == null ? null : map['fipsEnabled'] as bool,
      gpuDriver: map['gpuDriver'] == null ? null : map['gpuDriver'] as String,
      gpuInstance: map['gpuInstance'] == null ? null : map['gpuInstance'] as String,
      hostEncryptionEnabled: map['hostEncryptionEnabled'] == null ? null : map['hostEncryptionEnabled'] as bool,
      hostGroupId: map['hostGroupId'] == null ? null : map['hostGroupId'] as String,
      kubeletConfig: map['kubeletConfig'] == null ? null : KubernetesClusterDefaultNodePoolKubeletConfig.fromMap((map['kubeletConfig'] as Map).cast<String, dynamic>()),
      kubeletDiskType: map['kubeletDiskType'] == null ? null : map['kubeletDiskType'] as String,
      linuxOsConfig: map['linuxOsConfig'] == null ? null : KubernetesClusterDefaultNodePoolLinuxOsConfig.fromMap((map['linuxOsConfig'] as Map).cast<String, dynamic>()),
      maxCount: map['maxCount'] == null ? null : map['maxCount'] as int,
      maxPods: map['maxPods'] == null ? null : map['maxPods'] as int,
      minCount: map['minCount'] == null ? null : map['minCount'] as int,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeLabels: map['nodeLabels'] == null ? null : (map['nodeLabels'] as Map).cast<String, String>(),
      nodeNetworkProfile: map['nodeNetworkProfile'] == null ? null : KubernetesClusterDefaultNodePoolNodeNetworkProfile.fromMap((map['nodeNetworkProfile'] as Map).cast<String, dynamic>()),
      nodePublicIpEnabled: map['nodePublicIpEnabled'] == null ? null : map['nodePublicIpEnabled'] as bool,
      nodePublicIpPrefixId: map['nodePublicIpPrefixId'] == null ? null : map['nodePublicIpPrefixId'] as String,
      onlyCriticalAddonsEnabled: map['onlyCriticalAddonsEnabled'] == null ? null : map['onlyCriticalAddonsEnabled'] as bool,
      orchestratorVersion: map['orchestratorVersion'] == null ? null : map['orchestratorVersion'] as String,
      osDiskSizeGb: map['osDiskSizeGb'] == null ? null : map['osDiskSizeGb'] as int,
      osDiskType: map['osDiskType'] == null ? null : map['osDiskType'] as String,
      osSku: map['osSku'] == null ? null : map['osSku'] as String,
      podSubnetId: map['podSubnetId'] == null ? null : map['podSubnetId'] as String,
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : map['proximityPlacementGroupId'] as String,
      scaleDownMode: map['scaleDownMode'] == null ? null : map['scaleDownMode'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      temporaryNameForRotation: map['temporaryNameForRotation'] == null ? null : map['temporaryNameForRotation'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      ultraSsdEnabled: map['ultraSsdEnabled'] == null ? null : map['ultraSsdEnabled'] as bool,
      upgradeSettings: map['upgradeSettings'] == null ? null : KubernetesClusterDefaultNodePoolUpgradeSettings.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>()),
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
      vnetSubnetId: map['vnetSubnetId'] == null ? null : map['vnetSubnetId'] as String,
      workloadRuntime: map['workloadRuntime'] == null ? null : map['workloadRuntime'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

