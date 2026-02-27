// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_container_v1beta1.dart';
import 'advanced_machine_features_container_v1beta1.dart';
import 'confidential_nodes_container_v1beta1.dart';
import 'ephemeral_storage_config.dart';
import 'ephemeral_storage_local_ssd_config_container_v1beta1.dart';
import 'fast_socket_container_v1beta1.dart';
import 'gcfs_config_container_v1beta1.dart';
import 'host_maintenance_policy.dart';
import 'linux_node_config_container_v1beta1.dart';
import 'local_nvme_ssd_block_config_container_v1beta1.dart';
import 'node_kubelet_config_container_v1beta1.dart';
import 'node_pool_logging_config_container_v1beta1.dart';
import 'node_taint_container_v1beta1.dart';
import 'reservation_affinity_container_v1beta1.dart';
import 'resource_manager_tags_container_v1beta1.dart';
import 'sandbox_config_container_v1beta1.dart';
import 'shielded_instance_config_container_v1beta1.dart';
import 'sole_tenant_config_container_v1beta1.dart';
import 'virtual_niccontainer_v1beta1.dart';
import 'windows_node_config_container_v1beta1.dart';
import 'workload_metadata_config_container_v1beta1.dart';

/// Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults instead.
class NodeConfigContainerV1beta1 {
  /// A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs.
  final List<AcceleratorConfigContainerV1beta1>? accelerators;

  /// Advanced features for the Compute Engine VM.
  final AdvancedMachineFeaturesContainerV1beta1? advancedMachineFeatures;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final String? bootDiskKmsKey;

  /// Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
  final ConfidentialNodesContainerV1beta1? confidentialNodes;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  final int? diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  final String? diskType;

  /// Optional. Enable confidential storage on Hyperdisk. boot_disk_kms_key is required when enable_confidential_storage is true. This is only available for private preview.
  final bool? enableConfidentialStorage;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk.
  final EphemeralStorageConfig? ephemeralStorageConfig;

  /// Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk. This field is functionally equivalent to the ephemeral_storage_config
  final EphemeralStorageLocalSsdConfigContainerV1beta1?
      ephemeralStorageLocalSsdConfig;

  /// Enable or disable NCCL fast socket for the node pool.
  final FastSocketContainerV1beta1? fastSocket;

  /// GCFS (Google Container File System) configs.
  final GcfsConfigContainerV1beta1? gcfsConfig;

  /// Enable or disable gvnic on the node pool.
  final VirtualNICContainerV1beta1? gvnic;

  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final HostMaintenancePolicy? hostMaintenancePolicy;

  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  final String? imageType;

  /// Node kubelet configs.
  final NodeKubeletConfigContainerV1beta1? kubeletConfig;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final Map<String, String>? labels;

  /// Parameters that can be configured on Linux nodes.
  final LinuxNodeConfigContainerV1beta1? linuxNodeConfig;

  /// Parameters for using raw-block Local NVMe SSDs.
  final LocalNvmeSsdBlockConfigContainerV1beta1? localNvmeSsdBlockConfig;

  /// The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.
  final int? localSsdCount;

  /// Logging configuration.
  final NodePoolLoggingConfigContainerV1beta1? loggingConfig;

  /// The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-types). If unspecified, the default machine type is `e2-medium`.
  final String? machineType;

  /// The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" - "containerd-configure-sh" - "enable-oslogin" - "gci-ensure-gke-docker" - "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" - "kube-env" - "startup-script" - "user-data" - "disable-address-manager" - "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" - "install-ssh-psm1" - "user-profile-psm1" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB. The total size of all keys and values must be less than 512 KB.
  final Map<String, String>? metadata;

  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as `minCpuPlatform: "Intel Haswell"` or `minCpuPlatform: "Intel Sandy Bridge"`. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  final String? minCpuPlatform;

  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  final String? nodeGroup;

  /// The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  final List<String>? oauthScopes;

  /// Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances.
  final bool? preemptible;

  /// The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this node pool.
  final ReservationAffinityContainerV1beta1? reservationAffinity;

  /// The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
  final Map<String, String>? resourceLabels;

  /// A map of resource manager tag keys and values to be attached to the nodes.
  final ResourceManagerTagsContainerV1beta1? resourceManagerTags;

  /// Sandbox configuration for this node.
  final SandboxConfigContainerV1beta1? sandboxConfig;

  /// The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  final String? serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfigContainerV1beta1? shieldedInstanceConfig;

  /// Parameters for node pools to be backed by shared sole tenant node groups.
  final SoleTenantConfigContainerV1beta1? soleTenantConfig;

  /// Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
  final bool? spot;

  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
  final List<String>? tags;

  /// List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  final List<NodeTaintContainerV1beta1>? taints;

  /// Parameters that can be configured on Windows nodes.
  final WindowsNodeConfigContainerV1beta1? windowsNodeConfig;

  /// The workload metadata configuration for this node.
  final WorkloadMetadataConfigContainerV1beta1? workloadMetadataConfig;

  NodeConfigContainerV1beta1({
    this.accelerators,
    this.advancedMachineFeatures,
    this.bootDiskKmsKey,
    this.confidentialNodes,
    this.diskSizeGb,
    this.diskType,
    this.enableConfidentialStorage,
    this.ephemeralStorageConfig,
    this.ephemeralStorageLocalSsdConfig,
    this.fastSocket,
    this.gcfsConfig,
    this.gvnic,
    this.hostMaintenancePolicy,
    this.imageType,
    this.kubeletConfig,
    this.labels,
    this.linuxNodeConfig,
    this.localNvmeSsdBlockConfig,
    this.localSsdCount,
    this.loggingConfig,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.nodeGroup,
    this.oauthScopes,
    this.preemptible,
    this.reservationAffinity,
    this.resourceLabels,
    this.resourceManagerTags,
    this.sandboxConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.soleTenantConfig,
    this.spot,
    this.tags,
    this.taints,
    this.windowsNodeConfig,
    this.workloadMetadataConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = pulumi.Input.encodeList<
          AcceleratorConfigContainerV1beta1,
          Map<String, dynamic>>(acceleratorsValue, (value) => value.toMap());
    }
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = advancedMachineFeaturesValue.toMap();
    }
    final bootDiskKmsKeyValue = bootDiskKmsKey;
    if (bootDiskKmsKeyValue != null) {
      map['bootDiskKmsKey'] = bootDiskKmsKeyValue;
    }
    final confidentialNodesValue = confidentialNodes;
    if (confidentialNodesValue != null) {
      map['confidentialNodes'] = confidentialNodesValue.toMap();
    }
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final diskTypeValue = diskType;
    if (diskTypeValue != null) {
      map['diskType'] = diskTypeValue;
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
    final gcfsConfigValue = gcfsConfig;
    if (gcfsConfigValue != null) {
      map['gcfsConfig'] = gcfsConfigValue.toMap();
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
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = loggingConfigValue.toMap();
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
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
      map['resourceManagerTags'] = resourceManagerTagsValue.toMap();
    }
    final sandboxConfigValue = sandboxConfig;
    if (sandboxConfigValue != null) {
      map['sandboxConfig'] = sandboxConfigValue.toMap();
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taintsValue = taints;
    if (taintsValue != null) {
      map['taints'] = pulumi.Input.encodeList<NodeTaintContainerV1beta1,
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

  factory NodeConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeConfigContainerV1beta1(
      accelerators: map['accelerators'] == null
          ? null
          : pulumi.Input.decodeList<AcceleratorConfigContainerV1beta1>(
              map['accelerators'],
              (value) => AcceleratorConfigContainerV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : AdvancedMachineFeaturesContainerV1beta1.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null
          ? null
          : map['bootDiskKmsKey'] as String,
      confidentialNodes: map['confidentialNodes'] == null
          ? null
          : ConfidentialNodesContainerV1beta1.fromMap(
              (map['confidentialNodes'] as Map).cast<String, dynamic>()),
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      enableConfidentialStorage: map['enableConfidentialStorage'] == null
          ? null
          : map['enableConfidentialStorage'] as bool,
      ephemeralStorageConfig: map['ephemeralStorageConfig'] == null
          ? null
          : EphemeralStorageConfig.fromMap(
              (map['ephemeralStorageConfig'] as Map).cast<String, dynamic>()),
      ephemeralStorageLocalSsdConfig:
          map['ephemeralStorageLocalSsdConfig'] == null
              ? null
              : EphemeralStorageLocalSsdConfigContainerV1beta1.fromMap(
                  (map['ephemeralStorageLocalSsdConfig'] as Map)
                      .cast<String, dynamic>()),
      fastSocket: map['fastSocket'] == null
          ? null
          : FastSocketContainerV1beta1.fromMap(
              (map['fastSocket'] as Map).cast<String, dynamic>()),
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : GcfsConfigContainerV1beta1.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      gvnic: map['gvnic'] == null
          ? null
          : VirtualNICContainerV1beta1.fromMap(
              (map['gvnic'] as Map).cast<String, dynamic>()),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : HostMaintenancePolicy.fromMap(
              (map['hostMaintenancePolicy'] as Map).cast<String, dynamic>()),
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      kubeletConfig: map['kubeletConfig'] == null
          ? null
          : NodeKubeletConfigContainerV1beta1.fromMap(
              (map['kubeletConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      linuxNodeConfig: map['linuxNodeConfig'] == null
          ? null
          : LinuxNodeConfigContainerV1beta1.fromMap(
              (map['linuxNodeConfig'] as Map).cast<String, dynamic>()),
      localNvmeSsdBlockConfig: map['localNvmeSsdBlockConfig'] == null
          ? null
          : LocalNvmeSsdBlockConfigContainerV1beta1.fromMap(
              (map['localNvmeSsdBlockConfig'] as Map).cast<String, dynamic>()),
      localSsdCount:
          map['localSsdCount'] == null ? null : map['localSsdCount'] as int,
      loggingConfig: map['loggingConfig'] == null
          ? null
          : NodePoolLoggingConfigContainerV1beta1.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
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
          : ReservationAffinityContainerV1beta1.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourceLabels: map['resourceLabels'] == null
          ? null
          : (map['resourceLabels'] as Map).cast<String, String>(),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : ResourceManagerTagsContainerV1beta1.fromMap(
              (map['resourceManagerTags'] as Map).cast<String, dynamic>()),
      sandboxConfig: map['sandboxConfig'] == null
          ? null
          : SandboxConfigContainerV1beta1.fromMap(
              (map['sandboxConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfigContainerV1beta1.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      soleTenantConfig: map['soleTenantConfig'] == null
          ? null
          : SoleTenantConfigContainerV1beta1.fromMap(
              (map['soleTenantConfig'] as Map).cast<String, dynamic>()),
      spot: map['spot'] == null ? null : map['spot'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      taints: map['taints'] == null
          ? null
          : pulumi.Input.decodeList<NodeTaintContainerV1beta1>(
              map['taints'],
              (value) => NodeTaintContainerV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      windowsNodeConfig: map['windowsNodeConfig'] == null
          ? null
          : WindowsNodeConfigContainerV1beta1.fromMap(
              (map['windowsNodeConfig'] as Map).cast<String, dynamic>()),
      workloadMetadataConfig: map['workloadMetadataConfig'] == null
          ? null
          : WorkloadMetadataConfigContainerV1beta1.fromMap(
              (map['workloadMetadataConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
