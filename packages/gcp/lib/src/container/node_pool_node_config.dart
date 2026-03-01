// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_advanced_machine_features.dart';
import 'node_pool_node_config_boot_disk.dart';
import 'node_pool_node_config_confidential_nodes.dart';
import 'node_pool_node_config_containerd_config.dart';
import 'node_pool_node_config_effective_taint.dart';
import 'node_pool_node_config_ephemeral_storage_config.dart';
import 'node_pool_node_config_ephemeral_storage_local_ssd_config.dart';
import 'node_pool_node_config_fast_socket.dart';
import 'node_pool_node_config_gcfs_config.dart';
import 'node_pool_node_config_guest_accelerator.dart';
import 'node_pool_node_config_gvnic.dart';
import 'node_pool_node_config_host_maintenance_policy.dart';
import 'node_pool_node_config_kubelet_config.dart';
import 'node_pool_node_config_linux_node_config.dart';
import 'node_pool_node_config_local_nvme_ssd_block_config.dart';
import 'node_pool_node_config_reservation_affinity.dart';
import 'node_pool_node_config_sandbox_config.dart';
import 'node_pool_node_config_secondary_boot_disk.dart';
import 'node_pool_node_config_shielded_instance_config.dart';
import 'node_pool_node_config_sole_tenant_config.dart';
import 'node_pool_node_config_taint.dart';
import 'node_pool_node_config_windows_node_config.dart';
import 'node_pool_node_config_workload_metadata_config.dart';

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

  /// Creates a new [NodePoolNodeConfig].
  /// [advancedMachineFeatures] Specifies options for controlling advanced machine features.
  /// [bootDisk] Boot disk configuration for node pools nodes.
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  /// [confidentialNodes] Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  /// [containerdConfig] Parameters for containerd configuration.
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  /// [diskType] Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  /// [effectiveTaints] List of kubernetes taints applied to each node.
  /// [enableConfidentialStorage] If enabled boot disks are configured with confidential mode.
  /// [ephemeralStorageConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [ephemeralStorageLocalSsdConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [fastSocket] Enable or disable NCCL Fast Socket in the node pool.
  /// [flexStart] Enables Flex Start provisioning model for the node pool
  /// [gcfsConfig] GCFS configuration for this node.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [gvnic] Enable or disable gvnic in the node pool.
  /// [hostMaintenancePolicy] The maintenance policy for the hosts on which the GKE VMs run on.
  /// [imageType] The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  /// [kubeletConfig] Node kubelet configs.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  /// [linuxNodeConfig] Parameters that can be configured on Linux nodes.
  /// [localNvmeSsdBlockConfig] Parameters for raw-block local NVMe SSDs.
  /// [localSsdCount] The number of local SSD disks to be attached to the node.
  /// [localSsdEncryptionMode] LocalSsdEncryptionMode specified the method used for encrypting the local SSDs attached to the node.
  /// [loggingVariant] Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  /// [machineType] The name of a Google Compute Engine machine type.
  /// [maxRunDuration] The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  /// [metadata] The metadata key/value pairs assigned to instances in the cluster.
  /// [minCpuPlatform] Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform.
  /// [nodeGroup] Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes.
  /// [oauthScopes] The set of Google API scopes to be made available on all of the node VMs.
  /// [preemptible] Whether the nodes are created as preemptible VM instances.
  /// [reservationAffinity] The reservation affinity configuration for the node pool.
  /// [resourceLabels] The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  /// [sandboxConfig] Sandbox configuration for this node.
  /// [secondaryBootDisks] Secondary boot disks for preloading data or container images.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [soleTenantConfig] Node affinity options for sole tenant node pools.
  /// [spot] Whether the nodes are created as spot VM instances.
  /// [storagePools] The list of Storage Pools where boot disks are provisioned.
  /// [tags] The list of instance tags applied to all nodes.
  /// [taints] List of Kubernetes taints to be applied to each node.
  /// [windowsNodeConfig] Parameters that can be configured on Windows nodes.
  /// [workloadMetadataConfig] The workload metadata configuration for this node.
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
    return <String, dynamic>{
      'advancedMachineFeatures': ?advancedMachineFeatures == null
          ? null
          : advancedMachineFeatures!.toMap(),
      'bootDisk': ?bootDisk == null ? null : bootDisk!.toMap(),
      'bootDiskKmsKey': ?bootDiskKmsKey,
      'confidentialNodes': ?confidentialNodes == null
          ? null
          : confidentialNodes!.toMap(),
      'containerdConfig': ?containerdConfig == null
          ? null
          : containerdConfig!.toMap(),
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'effectiveTaints': ?effectiveTaints == null
          ? null
          : pulumi.Input.encodeList<
              NodePoolNodeConfigEffectiveTaint,
              Map<String, dynamic>
            >(effectiveTaints!, (value) => value.toMap()),
      'enableConfidentialStorage': ?enableConfidentialStorage,
      'ephemeralStorageConfig': ?ephemeralStorageConfig == null
          ? null
          : ephemeralStorageConfig!.toMap(),
      'ephemeralStorageLocalSsdConfig': ?ephemeralStorageLocalSsdConfig == null
          ? null
          : ephemeralStorageLocalSsdConfig!.toMap(),
      'fastSocket': ?fastSocket == null ? null : fastSocket!.toMap(),
      'flexStart': ?flexStart,
      'gcfsConfig': ?gcfsConfig == null ? null : gcfsConfig!.toMap(),
      'guestAccelerators': ?guestAccelerators == null
          ? null
          : pulumi.Input.encodeList<
              NodePoolNodeConfigGuestAccelerator,
              Map<String, dynamic>
            >(guestAccelerators!, (value) => value.toMap()),
      'gvnic': ?gvnic == null ? null : gvnic!.toMap(),
      'hostMaintenancePolicy': ?hostMaintenancePolicy == null
          ? null
          : hostMaintenancePolicy!.toMap(),
      'imageType': ?imageType,
      'kubeletConfig': ?kubeletConfig == null ? null : kubeletConfig!.toMap(),
      'labels': ?labels,
      'linuxNodeConfig': ?linuxNodeConfig == null
          ? null
          : linuxNodeConfig!.toMap(),
      'localNvmeSsdBlockConfig': ?localNvmeSsdBlockConfig == null
          ? null
          : localNvmeSsdBlockConfig!.toMap(),
      'localSsdCount': ?localSsdCount,
      'localSsdEncryptionMode': ?localSsdEncryptionMode,
      'loggingVariant': ?loggingVariant,
      'machineType': ?machineType,
      'maxRunDuration': ?maxRunDuration,
      'metadata': ?metadata,
      'minCpuPlatform': ?minCpuPlatform,
      'nodeGroup': ?nodeGroup,
      'oauthScopes': ?oauthScopes,
      'preemptible': ?preemptible,
      'reservationAffinity': ?reservationAffinity == null
          ? null
          : reservationAffinity!.toMap(),
      'resourceLabels': ?resourceLabels,
      'resourceManagerTags': ?resourceManagerTags,
      'sandboxConfig': ?sandboxConfig == null ? null : sandboxConfig!.toMap(),
      'secondaryBootDisks': ?secondaryBootDisks == null
          ? null
          : pulumi.Input.encodeList<
              NodePoolNodeConfigSecondaryBootDisk,
              Map<String, dynamic>
            >(secondaryBootDisks!, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'shieldedInstanceConfig': ?shieldedInstanceConfig == null
          ? null
          : shieldedInstanceConfig!.toMap(),
      'soleTenantConfig': ?soleTenantConfig == null
          ? null
          : soleTenantConfig!.toMap(),
      'spot': ?spot,
      'storagePools': ?storagePools,
      'tags': ?tags,
      'taints': ?taints == null
          ? null
          : pulumi.Input.encodeList<
              NodePoolNodeConfigTaint,
              Map<String, dynamic>
            >(taints!, (value) => value.toMap()),
      'windowsNodeConfig': ?windowsNodeConfig == null
          ? null
          : windowsNodeConfig!.toMap(),
      'workloadMetadataConfig': ?workloadMetadataConfig == null
          ? null
          : workloadMetadataConfig!.toMap(),
    };
  }

  factory NodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfig(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : NodePoolNodeConfigAdvancedMachineFeatures.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>(),
            ),
      bootDisk: map['bootDisk'] == null
          ? null
          : NodePoolNodeConfigBootDisk.fromMap(
              (map['bootDisk'] as Map).cast<String, dynamic>(),
            ),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null
          ? null
          : map['bootDiskKmsKey'] as String,
      confidentialNodes: map['confidentialNodes'] == null
          ? null
          : NodePoolNodeConfigConfidentialNodes.fromMap(
              (map['confidentialNodes'] as Map).cast<String, dynamic>(),
            ),
      containerdConfig: map['containerdConfig'] == null
          ? null
          : NodePoolNodeConfigContainerdConfig.fromMap(
              (map['containerdConfig'] as Map).cast<String, dynamic>(),
            ),
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      effectiveTaints: map['effectiveTaints'] == null
          ? null
          : pulumi.Input.decodeList<NodePoolNodeConfigEffectiveTaint>(
              map['effectiveTaints'],
              (value) => NodePoolNodeConfigEffectiveTaint.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      enableConfidentialStorage: map['enableConfidentialStorage'] == null
          ? null
          : map['enableConfidentialStorage'] as bool,
      ephemeralStorageConfig: map['ephemeralStorageConfig'] == null
          ? null
          : NodePoolNodeConfigEphemeralStorageConfig.fromMap(
              (map['ephemeralStorageConfig'] as Map).cast<String, dynamic>(),
            ),
      ephemeralStorageLocalSsdConfig:
          map['ephemeralStorageLocalSsdConfig'] == null
          ? null
          : NodePoolNodeConfigEphemeralStorageLocalSsdConfig.fromMap(
              (map['ephemeralStorageLocalSsdConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      fastSocket: map['fastSocket'] == null
          ? null
          : NodePoolNodeConfigFastSocket.fromMap(
              (map['fastSocket'] as Map).cast<String, dynamic>(),
            ),
      flexStart: map['flexStart'] == null ? null : map['flexStart'] as bool,
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : NodePoolNodeConfigGcfsConfig.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>(),
            ),
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<NodePoolNodeConfigGuestAccelerator>(
              map['guestAccelerators'],
              (value) => NodePoolNodeConfigGuestAccelerator.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      gvnic: map['gvnic'] == null
          ? null
          : NodePoolNodeConfigGvnic.fromMap(
              (map['gvnic'] as Map).cast<String, dynamic>(),
            ),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : NodePoolNodeConfigHostMaintenancePolicy.fromMap(
              (map['hostMaintenancePolicy'] as Map).cast<String, dynamic>(),
            ),
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      kubeletConfig: map['kubeletConfig'] == null
          ? null
          : NodePoolNodeConfigKubeletConfig.fromMap(
              (map['kubeletConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      linuxNodeConfig: map['linuxNodeConfig'] == null
          ? null
          : NodePoolNodeConfigLinuxNodeConfig.fromMap(
              (map['linuxNodeConfig'] as Map).cast<String, dynamic>(),
            ),
      localNvmeSsdBlockConfig: map['localNvmeSsdBlockConfig'] == null
          ? null
          : NodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap(
              (map['localNvmeSsdBlockConfig'] as Map).cast<String, dynamic>(),
            ),
      localSsdCount: map['localSsdCount'] == null
          ? null
          : map['localSsdCount'] as int,
      localSsdEncryptionMode: map['localSsdEncryptionMode'] == null
          ? null
          : map['localSsdEncryptionMode'] as String,
      loggingVariant: map['loggingVariant'] == null
          ? null
          : map['loggingVariant'] as String,
      machineType: map['machineType'] == null
          ? null
          : map['machineType'] as String,
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
      preemptible: map['preemptible'] == null
          ? null
          : map['preemptible'] as bool,
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : NodePoolNodeConfigReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>(),
            ),
      resourceLabels: map['resourceLabels'] == null
          ? null
          : (map['resourceLabels'] as Map).cast<String, String>(),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      sandboxConfig: map['sandboxConfig'] == null
          ? null
          : NodePoolNodeConfigSandboxConfig.fromMap(
              (map['sandboxConfig'] as Map).cast<String, dynamic>(),
            ),
      secondaryBootDisks: map['secondaryBootDisks'] == null
          ? null
          : pulumi.Input.decodeList<NodePoolNodeConfigSecondaryBootDisk>(
              map['secondaryBootDisks'],
              (value) => NodePoolNodeConfigSecondaryBootDisk.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : NodePoolNodeConfigShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
            ),
      soleTenantConfig: map['soleTenantConfig'] == null
          ? null
          : NodePoolNodeConfigSoleTenantConfig.fromMap(
              (map['soleTenantConfig'] as Map).cast<String, dynamic>(),
            ),
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
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      windowsNodeConfig: map['windowsNodeConfig'] == null
          ? null
          : NodePoolNodeConfigWindowsNodeConfig.fromMap(
              (map['windowsNodeConfig'] as Map).cast<String, dynamic>(),
            ),
      workloadMetadataConfig: map['workloadMetadataConfig'] == null
          ? null
          : NodePoolNodeConfigWorkloadMetadataConfig.fromMap(
              (map['workloadMetadataConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
