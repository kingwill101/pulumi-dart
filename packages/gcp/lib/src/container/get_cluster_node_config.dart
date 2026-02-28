// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_advanced_machine_feature.dart';
import 'get_cluster_node_config_boot_disk.dart';
import 'get_cluster_node_config_confidential_node.dart';
import 'get_cluster_node_config_containerd_config.dart';
import 'get_cluster_node_config_effective_taint.dart';
import 'get_cluster_node_config_ephemeral_storage_config.dart';
import 'get_cluster_node_config_ephemeral_storage_local_ssd_config.dart';
import 'get_cluster_node_config_fast_socket.dart';
import 'get_cluster_node_config_gcfs_config.dart';
import 'get_cluster_node_config_guest_accelerator.dart';
import 'get_cluster_node_config_gvnic.dart';
import 'get_cluster_node_config_host_maintenance_policy.dart';
import 'get_cluster_node_config_kubelet_config.dart';
import 'get_cluster_node_config_linux_node_config.dart';
import 'get_cluster_node_config_local_nvme_ssd_block_config.dart';
import 'get_cluster_node_config_reservation_affinity.dart';
import 'get_cluster_node_config_sandbox_config.dart';
import 'get_cluster_node_config_secondary_boot_disk.dart';
import 'get_cluster_node_config_shielded_instance_config.dart';
import 'get_cluster_node_config_sole_tenant_config.dart';
import 'get_cluster_node_config_taint.dart';
import 'get_cluster_node_config_windows_node_config.dart';
import 'get_cluster_node_config_workload_metadata_config.dart';

class GetClusterNodeConfig {
  /// Specifies options for controlling advanced machine features.
  final List<GetClusterNodeConfigAdvancedMachineFeature>
      advancedMachineFeatures;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  final String bootDiskKmsKey;

  /// Boot disk configuration for node pools nodes.
  final List<GetClusterNodeConfigBootDisk> bootDisks;

  /// Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  final List<GetClusterNodeConfigConfidentialNode> confidentialNodes;

  /// Parameters for containerd configuration.
  final List<GetClusterNodeConfigContainerdConfig> containerdConfigs;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final int diskSizeGb;

  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final String diskType;

  /// List of kubernetes taints applied to each node.
  final List<GetClusterNodeConfigEffectiveTaint> effectiveTaints;

  /// If enabled boot disks are configured with confidential mode.
  final bool enableConfidentialStorage;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final List<GetClusterNodeConfigEphemeralStorageConfig>
      ephemeralStorageConfigs;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final List<GetClusterNodeConfigEphemeralStorageLocalSsdConfig>
      ephemeralStorageLocalSsdConfigs;

  /// Enable or disable NCCL Fast Socket in the node pool.
  final List<GetClusterNodeConfigFastSocket> fastSockets;

  /// Enables Flex Start provisioning model for the node pool
  final bool flexStart;

  /// GCFS configuration for this node.
  final List<GetClusterNodeConfigGcfsConfig> gcfsConfigs;

  /// List of the type and count of accelerator cards attached to the instance.
  final List<GetClusterNodeConfigGuestAccelerator> guestAccelerators;

  /// Enable or disable gvnic in the node pool.
  final List<GetClusterNodeConfigGvnic> gvnics;

  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final List<GetClusterNodeConfigHostMaintenancePolicy> hostMaintenancePolicies;

  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  final String imageType;

  /// Node kubelet configs.
  final List<GetClusterNodeConfigKubeletConfig> kubeletConfigs;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  final Map<String, String> labels;

  /// Parameters that can be configured on Linux nodes.
  final List<GetClusterNodeConfigLinuxNodeConfig> linuxNodeConfigs;

  /// Parameters for raw-block local NVMe SSDs.
  final List<GetClusterNodeConfigLocalNvmeSsdBlockConfig>
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
  final List<GetClusterNodeConfigReservationAffinity> reservationAffinities;

  /// The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  final Map<String, String> resourceLabels;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final Map<String, String> resourceManagerTags;

  /// Sandbox configuration for this node.
  final List<GetClusterNodeConfigSandboxConfig> sandboxConfigs;

  /// Secondary boot disks for preloading data or container images.
  final List<GetClusterNodeConfigSecondaryBootDisk> secondaryBootDisks;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final String serviceAccount;

  /// Shielded Instance options.
  final List<GetClusterNodeConfigShieldedInstanceConfig>
      shieldedInstanceConfigs;

  /// Node affinity options for sole tenant node pools.
  final List<GetClusterNodeConfigSoleTenantConfig> soleTenantConfigs;

  /// Whether the nodes are created as spot VM instances.
  final bool spot;

  /// The list of Storage Pools where boot disks are provisioned.
  final List<String> storagePools;

  /// The list of instance tags applied to all nodes.
  final List<String> tags;

  /// List of Kubernetes taints to be applied to each node.
  final List<GetClusterNodeConfigTaint> taints;

  /// Parameters that can be configured on Windows nodes.
  final List<GetClusterNodeConfigWindowsNodeConfig> windowsNodeConfigs;

  /// The workload metadata configuration for this node.
  final List<GetClusterNodeConfigWorkloadMetadataConfig>
      workloadMetadataConfigs;

  /// Creates a new [GetClusterNodeConfig].
  /// [advancedMachineFeatures] Specifies options for controlling advanced machine features.
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool.
  /// [bootDisks] Boot disk configuration for node pools nodes.
  /// [confidentialNodes] Configuration for the confidential nodes feature, which makes nodes run on confidential VMs.
  /// [containerdConfigs] Parameters for containerd configuration.
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  /// [diskType] Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  /// [effectiveTaints] List of kubernetes taints applied to each node.
  /// [enableConfidentialStorage] If enabled boot disks are configured with confidential mode.
  /// [ephemeralStorageConfigs] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [ephemeralStorageLocalSsdConfigs] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  /// [fastSockets] Enable or disable NCCL Fast Socket in the node pool.
  /// [flexStart] Enables Flex Start provisioning model for the node pool
  /// [gcfsConfigs] GCFS configuration for this node.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [gvnics] Enable or disable gvnic in the node pool.
  /// [hostMaintenancePolicies] The maintenance policy for the hosts on which the GKE VMs run on.
  /// [imageType] The image type to use for this node. Note that for a given image type, the latest version of it will be used.
  /// [kubeletConfigs] Node kubelet configs.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node.
  /// [linuxNodeConfigs] Parameters that can be configured on Linux nodes.
  /// [localNvmeSsdBlockConfigs] Parameters for raw-block local NVMe SSDs.
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
  /// [reservationAffinities] The reservation affinity configuration for the node pool.
  /// [resourceLabels] The GCE resource labels (a map of key/value pairs) to be applied to the node pool.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  /// [sandboxConfigs] Sandbox configuration for this node.
  /// [secondaryBootDisks] Secondary boot disks for preloading data or container images.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs.
  /// [shieldedInstanceConfigs] Shielded Instance options.
  /// [soleTenantConfigs] Node affinity options for sole tenant node pools.
  /// [spot] Whether the nodes are created as spot VM instances.
  /// [storagePools] The list of Storage Pools where boot disks are provisioned.
  /// [tags] The list of instance tags applied to all nodes.
  /// [taints] List of Kubernetes taints to be applied to each node.
  /// [windowsNodeConfigs] Parameters that can be configured on Windows nodes.
  /// [workloadMetadataConfigs] The workload metadata configuration for this node.
  GetClusterNodeConfig({
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
            GetClusterNodeConfigAdvancedMachineFeature, Map<String, dynamic>>(
        advancedMachineFeatures, (value) => value.toMap());
    map['bootDiskKmsKey'] = bootDiskKmsKey;
    map['bootDisks'] = pulumi.Input.encodeList<GetClusterNodeConfigBootDisk,
        Map<String, dynamic>>(bootDisks, (value) => value.toMap());
    map['confidentialNodes'] = pulumi.Input.encodeList<
        GetClusterNodeConfigConfidentialNode,
        Map<String, dynamic>>(confidentialNodes, (value) => value.toMap());
    map['containerdConfigs'] = pulumi.Input.encodeList<
        GetClusterNodeConfigContainerdConfig,
        Map<String, dynamic>>(containerdConfigs, (value) => value.toMap());
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    map['effectiveTaints'] = pulumi.Input.encodeList<
        GetClusterNodeConfigEffectiveTaint,
        Map<String, dynamic>>(effectiveTaints, (value) => value.toMap());
    map['enableConfidentialStorage'] = enableConfidentialStorage;
    map['ephemeralStorageConfigs'] = pulumi.Input.encodeList<
            GetClusterNodeConfigEphemeralStorageConfig, Map<String, dynamic>>(
        ephemeralStorageConfigs, (value) => value.toMap());
    map['ephemeralStorageLocalSsdConfigs'] = pulumi.Input.encodeList<
            GetClusterNodeConfigEphemeralStorageLocalSsdConfig,
            Map<String, dynamic>>(
        ephemeralStorageLocalSsdConfigs, (value) => value.toMap());
    map['fastSockets'] = pulumi.Input.encodeList<GetClusterNodeConfigFastSocket,
        Map<String, dynamic>>(fastSockets, (value) => value.toMap());
    map['flexStart'] = flexStart;
    map['gcfsConfigs'] = pulumi.Input.encodeList<GetClusterNodeConfigGcfsConfig,
        Map<String, dynamic>>(gcfsConfigs, (value) => value.toMap());
    map['guestAccelerators'] = pulumi.Input.encodeList<
        GetClusterNodeConfigGuestAccelerator,
        Map<String, dynamic>>(guestAccelerators, (value) => value.toMap());
    map['gvnics'] = pulumi.Input.encodeList<GetClusterNodeConfigGvnic,
        Map<String, dynamic>>(gvnics, (value) => value.toMap());
    map['hostMaintenancePolicies'] = pulumi.Input.encodeList<
            GetClusterNodeConfigHostMaintenancePolicy, Map<String, dynamic>>(
        hostMaintenancePolicies, (value) => value.toMap());
    map['imageType'] = imageType;
    map['kubeletConfigs'] = pulumi.Input.encodeList<
        GetClusterNodeConfigKubeletConfig,
        Map<String, dynamic>>(kubeletConfigs, (value) => value.toMap());
    map['labels'] = labels;
    map['linuxNodeConfigs'] = pulumi.Input.encodeList<
        GetClusterNodeConfigLinuxNodeConfig,
        Map<String, dynamic>>(linuxNodeConfigs, (value) => value.toMap());
    map['localNvmeSsdBlockConfigs'] = pulumi.Input.encodeList<
            GetClusterNodeConfigLocalNvmeSsdBlockConfig, Map<String, dynamic>>(
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
        GetClusterNodeConfigReservationAffinity,
        Map<String, dynamic>>(reservationAffinities, (value) => value.toMap());
    map['resourceLabels'] = resourceLabels;
    map['resourceManagerTags'] = resourceManagerTags;
    map['sandboxConfigs'] = pulumi.Input.encodeList<
        GetClusterNodeConfigSandboxConfig,
        Map<String, dynamic>>(sandboxConfigs, (value) => value.toMap());
    map['secondaryBootDisks'] = pulumi.Input.encodeList<
        GetClusterNodeConfigSecondaryBootDisk,
        Map<String, dynamic>>(secondaryBootDisks, (value) => value.toMap());
    map['serviceAccount'] = serviceAccount;
    map['shieldedInstanceConfigs'] = pulumi.Input.encodeList<
            GetClusterNodeConfigShieldedInstanceConfig, Map<String, dynamic>>(
        shieldedInstanceConfigs, (value) => value.toMap());
    map['soleTenantConfigs'] = pulumi.Input.encodeList<
        GetClusterNodeConfigSoleTenantConfig,
        Map<String, dynamic>>(soleTenantConfigs, (value) => value.toMap());
    map['spot'] = spot;
    map['storagePools'] = storagePools;
    map['tags'] = tags;
    map['taints'] = pulumi.Input.encodeList<GetClusterNodeConfigTaint,
        Map<String, dynamic>>(taints, (value) => value.toMap());
    map['windowsNodeConfigs'] = pulumi.Input.encodeList<
        GetClusterNodeConfigWindowsNodeConfig,
        Map<String, dynamic>>(windowsNodeConfigs, (value) => value.toMap());
    map['workloadMetadataConfigs'] = pulumi.Input.encodeList<
            GetClusterNodeConfigWorkloadMetadataConfig, Map<String, dynamic>>(
        workloadMetadataConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfig(
      advancedMachineFeatures:
          pulumi.Input.decodeList<GetClusterNodeConfigAdvancedMachineFeature>(
              map['advancedMachineFeatures'],
              (value) => GetClusterNodeConfigAdvancedMachineFeature.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bootDiskKmsKey: map['bootDiskKmsKey'] as String,
      bootDisks: pulumi.Input.decodeList<GetClusterNodeConfigBootDisk>(
          map['bootDisks'],
          (value) => GetClusterNodeConfigBootDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      confidentialNodes:
          pulumi.Input.decodeList<GetClusterNodeConfigConfidentialNode>(
              map['confidentialNodes'],
              (value) => GetClusterNodeConfigConfidentialNode.fromMap(
                  (value as Map).cast<String, dynamic>())),
      containerdConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigContainerdConfig>(
              map['containerdConfigs'],
              (value) => GetClusterNodeConfigContainerdConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
      effectiveTaints:
          pulumi.Input.decodeList<GetClusterNodeConfigEffectiveTaint>(
              map['effectiveTaints'],
              (value) => GetClusterNodeConfigEffectiveTaint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enableConfidentialStorage: map['enableConfidentialStorage'] as bool,
      ephemeralStorageConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigEphemeralStorageConfig>(
              map['ephemeralStorageConfigs'],
              (value) => GetClusterNodeConfigEphemeralStorageConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ephemeralStorageLocalSsdConfigs: pulumi.Input.decodeList<
              GetClusterNodeConfigEphemeralStorageLocalSsdConfig>(
          map['ephemeralStorageLocalSsdConfigs'],
          (value) => GetClusterNodeConfigEphemeralStorageLocalSsdConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      fastSockets: pulumi.Input.decodeList<GetClusterNodeConfigFastSocket>(
          map['fastSockets'],
          (value) => GetClusterNodeConfigFastSocket.fromMap(
              (value as Map).cast<String, dynamic>())),
      flexStart: map['flexStart'] as bool,
      gcfsConfigs: pulumi.Input.decodeList<GetClusterNodeConfigGcfsConfig>(
          map['gcfsConfigs'],
          (value) => GetClusterNodeConfigGcfsConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      guestAccelerators:
          pulumi.Input.decodeList<GetClusterNodeConfigGuestAccelerator>(
              map['guestAccelerators'],
              (value) => GetClusterNodeConfigGuestAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gvnics: pulumi.Input.decodeList<GetClusterNodeConfigGvnic>(
          map['gvnics'],
          (value) => GetClusterNodeConfigGvnic.fromMap(
              (value as Map).cast<String, dynamic>())),
      hostMaintenancePolicies:
          pulumi.Input.decodeList<GetClusterNodeConfigHostMaintenancePolicy>(
              map['hostMaintenancePolicies'],
              (value) => GetClusterNodeConfigHostMaintenancePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      imageType: map['imageType'] as String,
      kubeletConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigKubeletConfig>(
              map['kubeletConfigs'],
              (value) => GetClusterNodeConfigKubeletConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      linuxNodeConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfig>(
              map['linuxNodeConfigs'],
              (value) => GetClusterNodeConfigLinuxNodeConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localNvmeSsdBlockConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigLocalNvmeSsdBlockConfig>(
              map['localNvmeSsdBlockConfigs'],
              (value) => GetClusterNodeConfigLocalNvmeSsdBlockConfig.fromMap(
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
      reservationAffinities:
          pulumi.Input.decodeList<GetClusterNodeConfigReservationAffinity>(
              map['reservationAffinities'],
              (value) => GetClusterNodeConfigReservationAffinity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceLabels: (map['resourceLabels'] as Map).cast<String, String>(),
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
      sandboxConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigSandboxConfig>(
              map['sandboxConfigs'],
              (value) => GetClusterNodeConfigSandboxConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secondaryBootDisks:
          pulumi.Input.decodeList<GetClusterNodeConfigSecondaryBootDisk>(
              map['secondaryBootDisks'],
              (value) => GetClusterNodeConfigSecondaryBootDisk.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] as String,
      shieldedInstanceConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigShieldedInstanceConfig>(
              map['shieldedInstanceConfigs'],
              (value) => GetClusterNodeConfigShieldedInstanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      soleTenantConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigSoleTenantConfig>(
              map['soleTenantConfigs'],
              (value) => GetClusterNodeConfigSoleTenantConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      spot: map['spot'] as bool,
      storagePools: (map['storagePools'] as List).cast<String>(),
      tags: (map['tags'] as List).cast<String>(),
      taints: pulumi.Input.decodeList<GetClusterNodeConfigTaint>(
          map['taints'],
          (value) => GetClusterNodeConfigTaint.fromMap(
              (value as Map).cast<String, dynamic>())),
      windowsNodeConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigWindowsNodeConfig>(
              map['windowsNodeConfigs'],
              (value) => GetClusterNodeConfigWindowsNodeConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workloadMetadataConfigs:
          pulumi.Input.decodeList<GetClusterNodeConfigWorkloadMetadataConfig>(
              map['workloadMetadataConfigs'],
              (value) => GetClusterNodeConfigWorkloadMetadataConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
