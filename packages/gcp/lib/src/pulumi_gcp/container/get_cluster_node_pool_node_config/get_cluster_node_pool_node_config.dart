// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_node_pool_node_config_advanced_machine_feature/get_cluster_node_pool_node_config_advanced_machine_feature.dart';
import '../get_cluster_node_pool_node_config_boot_disk/get_cluster_node_pool_node_config_boot_disk.dart';
import '../get_cluster_node_pool_node_config_confidential_node/get_cluster_node_pool_node_config_confidential_node.dart';
import '../get_cluster_node_pool_node_config_containerd_config/get_cluster_node_pool_node_config_containerd_config.dart';
import '../get_cluster_node_pool_node_config_effective_taint/get_cluster_node_pool_node_config_effective_taint.dart';
import '../get_cluster_node_pool_node_config_ephemeral_storage_config/get_cluster_node_pool_node_config_ephemeral_storage_config.dart';
import '../get_cluster_node_pool_node_config_ephemeral_storage_local_ssd_config/get_cluster_node_pool_node_config_ephemeral_storage_local_ssd_config.dart';
import '../get_cluster_node_pool_node_config_fast_socket/get_cluster_node_pool_node_config_fast_socket.dart';
import '../get_cluster_node_pool_node_config_gcfs_config/get_cluster_node_pool_node_config_gcfs_config.dart';
import '../get_cluster_node_pool_node_config_guest_accelerator/get_cluster_node_pool_node_config_guest_accelerator.dart';
import '../get_cluster_node_pool_node_config_gvnic/get_cluster_node_pool_node_config_gvnic.dart';
import '../get_cluster_node_pool_node_config_host_maintenance_policy/get_cluster_node_pool_node_config_host_maintenance_policy.dart';
import '../get_cluster_node_pool_node_config_kubelet_config/get_cluster_node_pool_node_config_kubelet_config.dart';
import '../get_cluster_node_pool_node_config_linux_node_config/get_cluster_node_pool_node_config_linux_node_config.dart';
import '../get_cluster_node_pool_node_config_local_nvme_ssd_block_config/get_cluster_node_pool_node_config_local_nvme_ssd_block_config.dart';
import '../get_cluster_node_pool_node_config_reservation_affinity/get_cluster_node_pool_node_config_reservation_affinity.dart';
import '../get_cluster_node_pool_node_config_sandbox_config/get_cluster_node_pool_node_config_sandbox_config.dart';
import '../get_cluster_node_pool_node_config_secondary_boot_disk/get_cluster_node_pool_node_config_secondary_boot_disk.dart';
import '../get_cluster_node_pool_node_config_shielded_instance_config/get_cluster_node_pool_node_config_shielded_instance_config.dart';
import '../get_cluster_node_pool_node_config_sole_tenant_config/get_cluster_node_pool_node_config_sole_tenant_config.dart';
import '../get_cluster_node_pool_node_config_taint/get_cluster_node_pool_node_config_taint.dart';
import '../get_cluster_node_pool_node_config_windows_node_config/get_cluster_node_pool_node_config_windows_node_config.dart';
import '../get_cluster_node_pool_node_config_workload_metadata_config/get_cluster_node_pool_node_config_workload_metadata_config.dart';

class GetClusterNodePoolNodeConfig {
  /// Specifies options for controlling advanced machine features.
  final List<GetClusterNodePoolNodeConfigAdvancedMachineFeature>
      advancedMachineFeatures;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  final String bootDiskKmsKey;

  /// Boot disk configuration for node pools nodes.
  final List<GetClusterNodePoolNodeConfigBootDisk> bootDisks;

  /// Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  final List<GetClusterNodePoolNodeConfigConfidentialNode> confidentialNodes;

  /// Parameters for containerd configuration.
  final List<GetClusterNodePoolNodeConfigContainerdConfig> containerdConfigs;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final int diskSizeGb;

  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final String diskType;

  /// List of kubernetes taints applied to each node.
  final List<GetClusterNodePoolNodeConfigEffectiveTaint> effectiveTaints;

  /// If enabled boot disks are configured with confidential mode.
  final bool enableConfidentialStorage;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final List<GetClusterNodePoolNodeConfigEphemeralStorageConfig>
      ephemeralStorageConfigs;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final List<GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig>
      ephemeralStorageLocalSsdConfigs;

  /// Enable or disable NCCL Fast Socket in the node pool.
  final List<GetClusterNodePoolNodeConfigFastSocket> fastSockets;

  /// Enables Flex Start provisioning model for the node pool
  final bool flexStart;

  /// GCFS configuration for this node.
  final List<GetClusterNodePoolNodeConfigGcfsConfig> gcfsConfigs;

  /// List of the type and count of accelerator cards attached to the instance.
  final List<GetClusterNodePoolNodeConfigGuestAccelerator> guestAccelerators;

  /// Enable or disable gvnic in the node pool.
  final List<GetClusterNodePoolNodeConfigGvnic> gvnics;

  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final List<GetClusterNodePoolNodeConfigHostMaintenancePolicy>
      hostMaintenancePolicies;

  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  final String imageType;

  /// Node kubelet configs.
  final List<GetClusterNodePoolNodeConfigKubeletConfig> kubeletConfigs;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  final Map<String, String> labels;

  /// Parameters that can be configured on Linux nodes.
  final List<GetClusterNodePoolNodeConfigLinuxNodeConfig> linuxNodeConfigs;

  /// Parameters for raw-block local NVMe SSDs.
  final List<GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig>
      localNvmeSsdBlockConfigs;

  /// The number of local SSD disks to be attached to the node.
  final int localSsdCount;

  /// LocalSsdEncryptionMode specified the method used for encrypting the local SSDs attached to the node.
  final String localSsdEncryptionMode;

  /// Type of logging agent that is used as the default value for node pools in the cluster. Valid values include DEFAULT and MAX_THROUGHPUT.
  final String loggingVariant;

  /// The name of a Google Compute Engine machine type.
  final String machineType;

  /// The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  final String maxRunDuration;

  /// The metadata key/value pairs assigned to instances in the cluster.
  final Map<String, String> metadata;

  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform.
  final String minCpuPlatform;

  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on sole tenant nodes.
  final String nodeGroup;

  /// The set of Google API scopes to be made available on all of the node VMs.
  final List<String> oauthScopes;

  /// Whether the nodes are created as preemptible VM instances.
  final bool preemptible;

  /// The reservation affinity configuration for the node pool.
  final List<GetClusterNodePoolNodeConfigReservationAffinity>
      reservationAffinities;

  /// The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  final Map<String, String> resourceLabels;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// Sandbox configuration for this node.
  final List<GetClusterNodePoolNodeConfigSandboxConfig> sandboxConfigs;

  /// Secondary boot disks for preloading data or container images.
  final List<GetClusterNodePoolNodeConfigSecondaryBootDisk> secondaryBootDisks;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final String serviceAccount;

  /// Shielded Instance options.
  final List<GetClusterNodePoolNodeConfigShieldedInstanceConfig>
      shieldedInstanceConfigs;

  /// Node affinity options for sole tenant node pools.
  final List<GetClusterNodePoolNodeConfigSoleTenantConfig> soleTenantConfigs;

  /// Whether the nodes are created as spot VM instances.
  final bool spot;

  /// The list of Storage Pools where boot disks are provisioned.
  final List<String> storagePools;

  /// The list of instance tags applied to all nodes.
  final List<String> tags;

  /// List of Kubernetes taints to be applied to each node.
  final List<GetClusterNodePoolNodeConfigTaint> taints;

  /// Parameters that can be configured on Windows nodes.
  final List<GetClusterNodePoolNodeConfigWindowsNodeConfig> windowsNodeConfigs;

  /// The workload metadata configuration for this node.
  final List<GetClusterNodePoolNodeConfigWorkloadMetadataConfig>
      workloadMetadataConfigs;

  GetClusterNodePoolNodeConfig({
    required this.advancedMachineFeatures,
    required this.bootDiskKmsKey,
    required this.bootDisks,
    required this.confidentialNodes,
    required this.containerdConfigs,
    required this.diskSizeGb,
    required this.diskType,
    required this.effectiveTaints,
    required this.enableConfidentialStorage,
    required this.ephemeralStorageConfigs,
    required this.ephemeralStorageLocalSsdConfigs,
    required this.fastSockets,
    required this.flexStart,
    required this.gcfsConfigs,
    required this.guestAccelerators,
    required this.gvnics,
    required this.hostMaintenancePolicies,
    required this.imageType,
    required this.kubeletConfigs,
    required this.labels,
    required this.linuxNodeConfigs,
    required this.localNvmeSsdBlockConfigs,
    required this.localSsdCount,
    required this.localSsdEncryptionMode,
    required this.loggingVariant,
    required this.machineType,
    required this.maxRunDuration,
    required this.metadata,
    required this.minCpuPlatform,
    required this.nodeGroup,
    required this.oauthScopes,
    required this.preemptible,
    required this.reservationAffinities,
    required this.resourceLabels,
    required this.resourceManagerTags,
    required this.sandboxConfigs,
    required this.secondaryBootDisks,
    required this.serviceAccount,
    required this.shieldedInstanceConfigs,
    required this.soleTenantConfigs,
    required this.spot,
    required this.storagePools,
    required this.tags,
    required this.taints,
    required this.windowsNodeConfigs,
    required this.workloadMetadataConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedMachineFeatures'] = pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigAdvancedMachineFeature,
            Map<String, dynamic>>(
        advancedMachineFeatures, (value) => value.toMap());
    map['bootDiskKmsKey'] = bootDiskKmsKey;
    map['bootDisks'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigBootDisk,
        Map<String, dynamic>>(bootDisks, (value) => value.toMap());
    map['confidentialNodes'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigConfidentialNode,
        Map<String, dynamic>>(confidentialNodes, (value) => value.toMap());
    map['containerdConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigContainerdConfig,
        Map<String, dynamic>>(containerdConfigs, (value) => value.toMap());
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    map['effectiveTaints'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigEffectiveTaint,
        Map<String, dynamic>>(effectiveTaints, (value) => value.toMap());
    map['enableConfidentialStorage'] = enableConfidentialStorage;
    map['ephemeralStorageConfigs'] = pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigEphemeralStorageConfig,
            Map<String, dynamic>>(
        ephemeralStorageConfigs, (value) => value.toMap());
    map['ephemeralStorageLocalSsdConfigs'] = pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig,
            Map<String, dynamic>>(
        ephemeralStorageLocalSsdConfigs, (value) => value.toMap());
    map['fastSockets'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigFastSocket,
        Map<String, dynamic>>(fastSockets, (value) => value.toMap());
    map['flexStart'] = flexStart;
    map['gcfsConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigGcfsConfig,
        Map<String, dynamic>>(gcfsConfigs, (value) => value.toMap());
    map['guestAccelerators'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigGuestAccelerator,
        Map<String, dynamic>>(guestAccelerators, (value) => value.toMap());
    map['gvnics'] = pulumi.Input.encodeList<GetClusterNodePoolNodeConfigGvnic,
        Map<String, dynamic>>(gvnics, (value) => value.toMap());
    map['hostMaintenancePolicies'] = pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigHostMaintenancePolicy,
            Map<String, dynamic>>(
        hostMaintenancePolicies, (value) => value.toMap());
    map['imageType'] = imageType;
    map['kubeletConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigKubeletConfig,
        Map<String, dynamic>>(kubeletConfigs, (value) => value.toMap());
    map['labels'] = labels;
    map['linuxNodeConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigLinuxNodeConfig,
        Map<String, dynamic>>(linuxNodeConfigs, (value) => value.toMap());
    map['localNvmeSsdBlockConfigs'] = pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig,
            Map<String, dynamic>>(
        localNvmeSsdBlockConfigs, (value) => value.toMap());
    map['localSsdCount'] = localSsdCount;
    map['localSsdEncryptionMode'] = localSsdEncryptionMode;
    map['loggingVariant'] = loggingVariant;
    map['machineType'] = machineType;
    map['maxRunDuration'] = maxRunDuration;
    map['metadata'] = metadata;
    map['minCpuPlatform'] = minCpuPlatform;
    map['nodeGroup'] = nodeGroup;
    map['oauthScopes'] = oauthScopes;
    map['preemptible'] = preemptible;
    map['reservationAffinities'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigReservationAffinity,
        Map<String, dynamic>>(reservationAffinities, (value) => value.toMap());
    map['resourceLabels'] = resourceLabels;
    map['resourceManagerTags'] = resourceManagerTags;
    map['sandboxConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigSandboxConfig,
        Map<String, dynamic>>(sandboxConfigs, (value) => value.toMap());
    map['secondaryBootDisks'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigSecondaryBootDisk,
        Map<String, dynamic>>(secondaryBootDisks, (value) => value.toMap());
    map['serviceAccount'] = serviceAccount;
    map['shieldedInstanceConfigs'] = pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigShieldedInstanceConfig,
            Map<String, dynamic>>(
        shieldedInstanceConfigs, (value) => value.toMap());
    map['soleTenantConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigSoleTenantConfig,
        Map<String, dynamic>>(soleTenantConfigs, (value) => value.toMap());
    map['spot'] = spot;
    map['storagePools'] = storagePools;
    map['tags'] = tags;
    map['taints'] = pulumi.Input.encodeList<GetClusterNodePoolNodeConfigTaint,
        Map<String, dynamic>>(taints, (value) => value.toMap());
    map['windowsNodeConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigWindowsNodeConfig,
        Map<String, dynamic>>(windowsNodeConfigs, (value) => value.toMap());
    map['workloadMetadataConfigs'] = pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigWorkloadMetadataConfig,
            Map<String, dynamic>>(
        workloadMetadataConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfig(
      advancedMachineFeatures: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigAdvancedMachineFeature>(
          map['advancedMachineFeatures'],
          (value) => GetClusterNodePoolNodeConfigAdvancedMachineFeature.fromMap(
              (value as Map).cast<String, dynamic>())),
      bootDiskKmsKey: map['bootDiskKmsKey'] as String,
      bootDisks: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigBootDisk>(
          map['bootDisks'],
          (value) => GetClusterNodePoolNodeConfigBootDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      confidentialNodes:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigConfidentialNode>(
              map['confidentialNodes'],
              (value) => GetClusterNodePoolNodeConfigConfidentialNode.fromMap(
                  (value as Map).cast<String, dynamic>())),
      containerdConfigs:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfig>(
              map['containerdConfigs'],
              (value) => GetClusterNodePoolNodeConfigContainerdConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
      effectiveTaints:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigEffectiveTaint>(
              map['effectiveTaints'],
              (value) => GetClusterNodePoolNodeConfigEffectiveTaint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enableConfidentialStorage: map['enableConfidentialStorage'] as bool,
      ephemeralStorageConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigEphemeralStorageConfig>(
          map['ephemeralStorageConfigs'],
          (value) => GetClusterNodePoolNodeConfigEphemeralStorageConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      ephemeralStorageLocalSsdConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig>(
          map['ephemeralStorageLocalSsdConfigs'],
          (value) => GetClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig
              .fromMap((value as Map).cast<String, dynamic>())),
      fastSockets:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigFastSocket>(
              map['fastSockets'],
              (value) => GetClusterNodePoolNodeConfigFastSocket.fromMap(
                  (value as Map).cast<String, dynamic>())),
      flexStart: map['flexStart'] as bool,
      gcfsConfigs:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigGcfsConfig>(
              map['gcfsConfigs'],
              (value) => GetClusterNodePoolNodeConfigGcfsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      guestAccelerators:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigGuestAccelerator>(
              map['guestAccelerators'],
              (value) => GetClusterNodePoolNodeConfigGuestAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gvnics: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigGvnic>(
          map['gvnics'],
          (value) => GetClusterNodePoolNodeConfigGvnic.fromMap(
              (value as Map).cast<String, dynamic>())),
      hostMaintenancePolicies: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigHostMaintenancePolicy>(
          map['hostMaintenancePolicies'],
          (value) => GetClusterNodePoolNodeConfigHostMaintenancePolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      imageType: map['imageType'] as String,
      kubeletConfigs:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfig>(
              map['kubeletConfigs'],
              (value) => GetClusterNodePoolNodeConfigKubeletConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      linuxNodeConfigs:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfig>(
              map['linuxNodeConfigs'],
              (value) => GetClusterNodePoolNodeConfigLinuxNodeConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localNvmeSsdBlockConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig>(
          map['localNvmeSsdBlockConfigs'],
          (value) =>
              GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localSsdCount: map['localSsdCount'] as int,
      localSsdEncryptionMode: map['localSsdEncryptionMode'] as String,
      loggingVariant: map['loggingVariant'] as String,
      machineType: map['machineType'] as String,
      maxRunDuration: map['maxRunDuration'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      minCpuPlatform: map['minCpuPlatform'] as String,
      nodeGroup: map['nodeGroup'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
      preemptible: map['preemptible'] as bool,
      reservationAffinities: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigReservationAffinity>(
          map['reservationAffinities'],
          (value) => GetClusterNodePoolNodeConfigReservationAffinity.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourceLabels: (map['resourceLabels'] as Map).cast<String, String>(),
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
      sandboxConfigs:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigSandboxConfig>(
              map['sandboxConfigs'],
              (value) => GetClusterNodePoolNodeConfigSandboxConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secondaryBootDisks: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigSecondaryBootDisk>(
          map['secondaryBootDisks'],
          (value) => GetClusterNodePoolNodeConfigSecondaryBootDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] as String,
      shieldedInstanceConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigShieldedInstanceConfig>(
          map['shieldedInstanceConfigs'],
          (value) => GetClusterNodePoolNodeConfigShieldedInstanceConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      soleTenantConfigs:
          pulumi.Input.decodeList<GetClusterNodePoolNodeConfigSoleTenantConfig>(
              map['soleTenantConfigs'],
              (value) => GetClusterNodePoolNodeConfigSoleTenantConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      spot: map['spot'] as bool,
      storagePools: (map['storagePools'] as List).cast<String>(),
      tags: (map['tags'] as List).cast<String>(),
      taints: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigTaint>(
          map['taints'],
          (value) => GetClusterNodePoolNodeConfigTaint.fromMap(
              (value as Map).cast<String, dynamic>())),
      windowsNodeConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigWindowsNodeConfig>(
          map['windowsNodeConfigs'],
          (value) => GetClusterNodePoolNodeConfigWindowsNodeConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      workloadMetadataConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigWorkloadMetadataConfig>(
          map['workloadMetadataConfigs'],
          (value) => GetClusterNodePoolNodeConfigWorkloadMetadataConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
