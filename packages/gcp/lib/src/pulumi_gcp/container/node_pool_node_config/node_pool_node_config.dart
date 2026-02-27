// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_pool_node_config_advanced_machine_features/node_pool_node_config_advanced_machine_features.dart';
import '../node_pool_node_config_boot_disk/node_pool_node_config_boot_disk.dart';
import '../node_pool_node_config_confidential_nodes/node_pool_node_config_confidential_nodes.dart';
import '../node_pool_node_config_containerd_config/node_pool_node_config_containerd_config.dart';
import '../node_pool_node_config_effective_taint/node_pool_node_config_effective_taint.dart';
import '../node_pool_node_config_ephemeral_storage_config/node_pool_node_config_ephemeral_storage_config.dart';
import '../node_pool_node_config_ephemeral_storage_local_ssd_config/node_pool_node_config_ephemeral_storage_local_ssd_config.dart';
import '../node_pool_node_config_fast_socket/node_pool_node_config_fast_socket.dart';
import '../node_pool_node_config_gcfs_config/node_pool_node_config_gcfs_config.dart';
import '../node_pool_node_config_guest_accelerator/node_pool_node_config_guest_accelerator.dart';
import '../node_pool_node_config_gvnic/node_pool_node_config_gvnic.dart';
import '../node_pool_node_config_host_maintenance_policy/node_pool_node_config_host_maintenance_policy.dart';
import '../node_pool_node_config_kubelet_config/node_pool_node_config_kubelet_config.dart';
import '../node_pool_node_config_linux_node_config/node_pool_node_config_linux_node_config.dart';
import '../node_pool_node_config_local_nvme_ssd_block_config/node_pool_node_config_local_nvme_ssd_block_config.dart';
import '../node_pool_node_config_reservation_affinity/node_pool_node_config_reservation_affinity.dart';
import '../node_pool_node_config_sandbox_config/node_pool_node_config_sandbox_config.dart';
import '../node_pool_node_config_secondary_boot_disk/node_pool_node_config_secondary_boot_disk.dart';
import '../node_pool_node_config_shielded_instance_config/node_pool_node_config_shielded_instance_config.dart';
import '../node_pool_node_config_sole_tenant_config/node_pool_node_config_sole_tenant_config.dart';
import '../node_pool_node_config_taint/node_pool_node_config_taint.dart';
import '../node_pool_node_config_windows_node_config/node_pool_node_config_windows_node_config.dart';
import '../node_pool_node_config_workload_metadata_config/node_pool_node_config_workload_metadata_config.dart';

class NodePoolNodeConfig {
  /// Specifies options for controlling advanced machine features.
  final NodePoolNodeConfigAdvancedMachineFeatures? advancedMachineFeatures;

  /// Boot disk configuration for node pools nodes.
  final NodePoolNodeConfigBootDisk? bootDisk;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  final String? bootDiskKmsKey;

  /// Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  final NodePoolNodeConfigConfidentialNodes? confidentialNodes;

  /// Parameters for containerd configuration.
  final NodePoolNodeConfigContainerdConfig? containerdConfig;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final int? diskSizeGb;

  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final String? diskType;

  /// List of kubernetes taints applied to each node.
  final List<NodePoolNodeConfigEffectiveTaint>? effectiveTaints;

  /// If enabled boot disks are configured with confidential mode.
  final bool? enableConfidentialStorage;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final NodePoolNodeConfigEphemeralStorageConfig? ephemeralStorageConfig;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final NodePoolNodeConfigEphemeralStorageLocalSsdConfig?
      ephemeralStorageLocalSsdConfig;

  /// Enable or disable NCCL Fast Socket in the node pool.
  final NodePoolNodeConfigFastSocket? fastSocket;

  /// Enables Flex Start provisioning model for the node pool
  final bool? flexStart;

  /// GCFS configuration for this node.
  final NodePoolNodeConfigGcfsConfig? gcfsConfig;

  /// List of the type and count of accelerator cards attached to the instance.
  final List<NodePoolNodeConfigGuestAccelerator>? guestAccelerators;

  /// Enable or disable gvnic in the node pool.
  final NodePoolNodeConfigGvnic? gvnic;

  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final NodePoolNodeConfigHostMaintenancePolicy? hostMaintenancePolicy;

  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  final String? imageType;

  /// Node kubelet configs.
  final NodePoolNodeConfigKubeletConfig? kubeletConfig;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  final Map<String, String>? labels;

  /// Parameters that can be configured on Linux nodes.
  final NodePoolNodeConfigLinuxNodeConfig? linuxNodeConfig;

  /// Parameters for raw-block local NVMe SSDs.
  final NodePoolNodeConfigLocalNvmeSsdBlockConfig? localNvmeSsdBlockConfig;

  /// The number of local SSD disks to be attached to the node.
  final int? localSsdCount;

  /// LocalSsdEncryptionMode specified the method used for encrypting the local SSDs attached to the node.
  final String? localSsdEncryptionMode;

  /// Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  final String? loggingVariant;

  /// The name of a Google Compute Engine machine type.
  final String? machineType;

  /// The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  final String? maxRunDuration;

  /// The metadata key/value pairs assigned to instances in the cluster.
  final Map<String, String>? metadata;

  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform.
  final String? minCpuPlatform;

  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes.
  final String? nodeGroup;

  /// The set of Google API scopes to be made available on all of the node VMs.
  final List<String>? oauthScopes;

  /// Whether the nodes are created as preemptible VM instances.
  final bool? preemptible;

  /// The reservation affinity configuration for the node pool.
  final NodePoolNodeConfigReservationAffinity? reservationAffinity;

  /// The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  final Map<String, String>? resourceLabels;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String>? resourceManagerTags;

  /// Sandbox configuration for this node.
  final NodePoolNodeConfigSandboxConfig? sandboxConfig;

  /// Secondary boot disks for preloading data or container images.
  final List<NodePoolNodeConfigSecondaryBootDisk>? secondaryBootDisks;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final String? serviceAccount;

  /// Shielded Instance options.
  final NodePoolNodeConfigShieldedInstanceConfig? shieldedInstanceConfig;

  /// Node affinity options for sole tenant node pools.
  final NodePoolNodeConfigSoleTenantConfig? soleTenantConfig;

  /// Whether the nodes are created as spot VM instances.
  final bool? spot;

  /// The list of Storage Pools where boot disks are provisioned.
  final List<String>? storagePools;

  /// The list of instance tags applied to all nodes.
  final List<String>? tags;

  /// List of Kubernetes taints to be applied to each node.
  final List<NodePoolNodeConfigTaint>? taints;

  /// Parameters that can be configured on Windows nodes.
  final NodePoolNodeConfigWindowsNodeConfig? windowsNodeConfig;

  /// The workload metadata configuration for this node.
  final NodePoolNodeConfigWorkloadMetadataConfig? workloadMetadataConfig;

  NodePoolNodeConfig({
    this.advancedMachineFeatures,
    this.bootDisk,
    this.bootDiskKmsKey,
    this.confidentialNodes,
    this.containerdConfig,
    this.diskSizeGb,
    this.diskType,
    this.effectiveTaints,
    this.enableConfidentialStorage,
    this.ephemeralStorageConfig,
    this.ephemeralStorageLocalSsdConfig,
    this.fastSocket,
    this.flexStart,
    this.gcfsConfig,
    this.guestAccelerators,
    this.gvnic,
    this.hostMaintenancePolicy,
    this.imageType,
    this.kubeletConfig,
    this.labels,
    this.linuxNodeConfig,
    this.localNvmeSsdBlockConfig,
    this.localSsdCount,
    this.localSsdEncryptionMode,
    this.loggingVariant,
    this.machineType,
    this.maxRunDuration,
    this.metadata,
    this.minCpuPlatform,
    this.nodeGroup,
    this.oauthScopes,
    this.preemptible,
    this.reservationAffinity,
    this.resourceLabels,
    this.resourceManagerTags,
    this.sandboxConfig,
    this.secondaryBootDisks,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.soleTenantConfig,
    this.spot,
    this.storagePools,
    this.tags,
    this.taints,
    this.windowsNodeConfig,
    this.workloadMetadataConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = advancedMachineFeaturesValue.toMap();
    }
    final bootDiskValue = bootDisk;
    if (bootDiskValue != null) {
      map['bootDisk'] = bootDiskValue.toMap();
    }
    final bootDiskKmsKeyValue = bootDiskKmsKey;
    if (bootDiskKmsKeyValue != null) {
      map['bootDiskKmsKey'] = bootDiskKmsKeyValue;
    }
    final confidentialNodesValue = confidentialNodes;
    if (confidentialNodesValue != null) {
      map['confidentialNodes'] = confidentialNodesValue.toMap();
    }
    final containerdConfigValue = containerdConfig;
    if (containerdConfigValue != null) {
      map['containerdConfig'] = containerdConfigValue.toMap();
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
    }
    final effectiveTaintsValue = effectiveTaints;
    if (effectiveTaintsValue != null) {
      map['effectiveTaints'] = pulumi.Input.encodeList<
          NodePoolNodeConfigEffectiveTaint,
          Map<String, dynamic>>(effectiveTaintsValue, (value) => value.toMap());
    }
    final enableConfidentialStorageValue = enableConfidentialStorage;
    if (enableConfidentialStorageValue != null) {
      map['enableConfidentialStorage'] = enableConfidentialStorageValue;
    }
    final ephemeralStorageConfigValue = ephemeralStorageConfig;
    if (ephemeralStorageConfigValue != null) {
      map['ephemeralStorageConfig'] = ephemeralStorageConfigValue.toMap();
    }
    final ephemeralStorageLocalSsdConfigValue = ephemeralStorageLocalSsdConfig;
    if (ephemeralStorageLocalSsdConfigValue != null) {
      map['ephemeralStorageLocalSsdConfig'] =
          ephemeralStorageLocalSsdConfigValue.toMap();
    }
    final fastSocketValue = fastSocket;
    if (fastSocketValue != null) {
      map['fastSocket'] = fastSocketValue.toMap();
    }
    final flexStartValue = flexStart;
    if (flexStartValue != null) {
      map['flexStart'] = flexStartValue;
    }
    final gcfsConfigValue = gcfsConfig;
    if (gcfsConfigValue != null) {
      map['gcfsConfig'] = gcfsConfigValue.toMap();
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = pulumi.Input.encodeList<
              NodePoolNodeConfigGuestAccelerator, Map<String, dynamic>>(
          guestAcceleratorsValue, (value) => value.toMap());
    }
    final gvnicValue = gvnic;
    if (gvnicValue != null) {
      map['gvnic'] = gvnicValue.toMap();
    }
    final hostMaintenancePolicyValue = hostMaintenancePolicy;
    if (hostMaintenancePolicyValue != null) {
      map['hostMaintenancePolicy'] = hostMaintenancePolicyValue.toMap();
    }
    final imageTypeValue = imageType;
    if (imageTypeValue != null) {
      map['imageType'] = imageTypeValue;
    }
    final kubeletConfigValue = kubeletConfig;
    if (kubeletConfigValue != null) {
      map['kubeletConfig'] = kubeletConfigValue.toMap();
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final linuxNodeConfigValue = linuxNodeConfig;
    if (linuxNodeConfigValue != null) {
      map['linuxNodeConfig'] = linuxNodeConfigValue.toMap();
    }
    final localNvmeSsdBlockConfigValue = localNvmeSsdBlockConfig;
    if (localNvmeSsdBlockConfigValue != null) {
      map['localNvmeSsdBlockConfig'] = localNvmeSsdBlockConfigValue.toMap();
    }
    final localSsdCountValue = localSsdCount;
    if (localSsdCountValue != null) {
      map['localSsdCount'] = localSsdCountValue;
    }
    final localSsdEncryptionModeValue = localSsdEncryptionMode;
    if (localSsdEncryptionModeValue != null) {
      map['localSsdEncryptionMode'] = localSsdEncryptionModeValue;
    }
    final loggingVariantValue = loggingVariant;
    if (loggingVariantValue != null) {
      map['loggingVariant'] = loggingVariantValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final maxRunDurationValue = maxRunDuration;
    if (maxRunDurationValue != null) {
      map['maxRunDuration'] = maxRunDurationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final nodeGroupValue = nodeGroup;
    if (nodeGroupValue != null) {
      map['nodeGroup'] = nodeGroupValue;
    }
    final oauthScopesValue = oauthScopes;
    if (oauthScopesValue != null) {
      map['oauthScopes'] = oauthScopesValue;
    }
    final preemptibleValue = preemptible;
    if (preemptibleValue != null) {
      map['preemptible'] = preemptibleValue;
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = reservationAffinityValue.toMap();
    }
    final resourceLabelsValue = resourceLabels;
    if (resourceLabelsValue != null) {
      map['resourceLabels'] = resourceLabelsValue;
    }
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = resourceManagerTagsValue;
    }
    final sandboxConfigValue = sandboxConfig;
    if (sandboxConfigValue != null) {
      map['sandboxConfig'] = sandboxConfigValue.toMap();
    }
    final secondaryBootDisksValue = secondaryBootDisks;
    if (secondaryBootDisksValue != null) {
      map['secondaryBootDisks'] = pulumi.Input.encodeList<
              NodePoolNodeConfigSecondaryBootDisk, Map<String, dynamic>>(
          secondaryBootDisksValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final soleTenantConfigValue = soleTenantConfig;
    if (soleTenantConfigValue != null) {
      map['soleTenantConfig'] = soleTenantConfigValue.toMap();
    }
    final spotValue = spot;
    if (spotValue != null) {
      map['spot'] = spotValue;
    }
    final storagePoolsValue = storagePools;
    if (storagePoolsValue != null) {
      map['storagePools'] = storagePoolsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taintsValue = taints;
    if (taintsValue != null) {
      map['taints'] = pulumi.Input.encodeList<NodePoolNodeConfigTaint,
          Map<String, dynamic>>(taintsValue, (value) => value.toMap());
    }
    final windowsNodeConfigValue = windowsNodeConfig;
    if (windowsNodeConfigValue != null) {
      map['windowsNodeConfig'] = windowsNodeConfigValue.toMap();
    }
    final workloadMetadataConfigValue = workloadMetadataConfig;
    if (workloadMetadataConfigValue != null) {
      map['workloadMetadataConfig'] = workloadMetadataConfigValue.toMap();
    }
    return map;
  }

  factory NodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfig(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : NodePoolNodeConfigAdvancedMachineFeatures.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      bootDisk: map['bootDisk'] == null
          ? null
          : NodePoolNodeConfigBootDisk.fromMap(
              (map['bootDisk'] as Map).cast<String, dynamic>()),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null
          ? null
          : map['bootDiskKmsKey'] as String,
      confidentialNodes: map['confidentialNodes'] == null
          ? null
          : NodePoolNodeConfigConfidentialNodes.fromMap(
              (map['confidentialNodes'] as Map).cast<String, dynamic>()),
      containerdConfig: map['containerdConfig'] == null
          ? null
          : NodePoolNodeConfigContainerdConfig.fromMap(
              (map['containerdConfig'] as Map).cast<String, dynamic>()),
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      effectiveTaints: map['effectiveTaints'] == null
          ? null
          : pulumi.Input.decodeList<NodePoolNodeConfigEffectiveTaint>(
              map['effectiveTaints'],
              (value) => NodePoolNodeConfigEffectiveTaint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enableConfidentialStorage: map['enableConfidentialStorage'] == null
          ? null
          : map['enableConfidentialStorage'] as bool,
      ephemeralStorageConfig: map['ephemeralStorageConfig'] == null
          ? null
          : NodePoolNodeConfigEphemeralStorageConfig.fromMap(
              (map['ephemeralStorageConfig'] as Map).cast<String, dynamic>()),
      ephemeralStorageLocalSsdConfig:
          map['ephemeralStorageLocalSsdConfig'] == null
              ? null
              : NodePoolNodeConfigEphemeralStorageLocalSsdConfig.fromMap(
                  (map['ephemeralStorageLocalSsdConfig'] as Map)
                      .cast<String, dynamic>()),
      fastSocket: map['fastSocket'] == null
          ? null
          : NodePoolNodeConfigFastSocket.fromMap(
              (map['fastSocket'] as Map).cast<String, dynamic>()),
      flexStart: map['flexStart'] == null ? null : map['flexStart'] as bool,
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : NodePoolNodeConfigGcfsConfig.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<NodePoolNodeConfigGuestAccelerator>(
              map['guestAccelerators'],
              (value) => NodePoolNodeConfigGuestAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gvnic: map['gvnic'] == null
          ? null
          : NodePoolNodeConfigGvnic.fromMap(
              (map['gvnic'] as Map).cast<String, dynamic>()),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : NodePoolNodeConfigHostMaintenancePolicy.fromMap(
              (map['hostMaintenancePolicy'] as Map).cast<String, dynamic>()),
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      kubeletConfig: map['kubeletConfig'] == null
          ? null
          : NodePoolNodeConfigKubeletConfig.fromMap(
              (map['kubeletConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      linuxNodeConfig: map['linuxNodeConfig'] == null
          ? null
          : NodePoolNodeConfigLinuxNodeConfig.fromMap(
              (map['linuxNodeConfig'] as Map).cast<String, dynamic>()),
      localNvmeSsdBlockConfig: map['localNvmeSsdBlockConfig'] == null
          ? null
          : NodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap(
              (map['localNvmeSsdBlockConfig'] as Map).cast<String, dynamic>()),
      localSsdCount:
          map['localSsdCount'] == null ? null : map['localSsdCount'] as int,
      localSsdEncryptionMode: map['localSsdEncryptionMode'] == null
          ? null
          : map['localSsdEncryptionMode'] as String,
      loggingVariant: map['loggingVariant'] == null
          ? null
          : map['loggingVariant'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      maxRunDuration: map['maxRunDuration'] == null
          ? null
          : map['maxRunDuration'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      nodeGroup: map['nodeGroup'] == null ? null : map['nodeGroup'] as String,
      oauthScopes: map['oauthScopes'] == null
          ? null
          : (map['oauthScopes'] as List).cast<String>(),
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : NodePoolNodeConfigReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourceLabels: map['resourceLabels'] == null
          ? null
          : (map['resourceLabels'] as Map).cast<String, String>(),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      sandboxConfig: map['sandboxConfig'] == null
          ? null
          : NodePoolNodeConfigSandboxConfig.fromMap(
              (map['sandboxConfig'] as Map).cast<String, dynamic>()),
      secondaryBootDisks: map['secondaryBootDisks'] == null
          ? null
          : pulumi.Input.decodeList<NodePoolNodeConfigSecondaryBootDisk>(
              map['secondaryBootDisks'],
              (value) => NodePoolNodeConfigSecondaryBootDisk.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : NodePoolNodeConfigShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      soleTenantConfig: map['soleTenantConfig'] == null
          ? null
          : NodePoolNodeConfigSoleTenantConfig.fromMap(
              (map['soleTenantConfig'] as Map).cast<String, dynamic>()),
      spot: map['spot'] == null ? null : map['spot'] as bool,
      storagePools: map['storagePools'] == null
          ? null
          : (map['storagePools'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      taints: map['taints'] == null
          ? null
          : pulumi.Input.decodeList<NodePoolNodeConfigTaint>(
              map['taints'],
              (value) => NodePoolNodeConfigTaint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      windowsNodeConfig: map['windowsNodeConfig'] == null
          ? null
          : NodePoolNodeConfigWindowsNodeConfig.fromMap(
              (map['windowsNodeConfig'] as Map).cast<String, dynamic>()),
      workloadMetadataConfig: map['workloadMetadataConfig'] == null
          ? null
          : NodePoolNodeConfigWorkloadMetadataConfig.fromMap(
              (map['workloadMetadataConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
