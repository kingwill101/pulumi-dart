// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config_response4.dart';
import 'advanced_machine_features_response4.dart';
import 'confidential_nodes_response.dart';
import 'ephemeral_storage_local_ssd_config_response.dart';
import 'fast_socket_response.dart';
import 'gcfs_config_response.dart';
import 'linux_node_config_response.dart';
import 'local_nvme_ssd_block_config_response.dart';
import 'node_kubelet_config_response.dart';
import 'node_pool_logging_config_response.dart';
import 'node_taint_response.dart';
import 'reservation_affinity_response4.dart';
import 'resource_manager_tags_response.dart';
import 'sandbox_config_response.dart';
import 'shielded_instance_config_response4.dart';
import 'sole_tenant_config_response.dart';
import 'virtual_nicresponse.dart';
import 'windows_node_config_response.dart';
import 'workload_metadata_config_response.dart';

/// Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults instead.
class NodeConfigResponse4 {
  /// A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs.
  final List<AcceleratorConfigResponse4> accelerators;

  /// Advanced features for the Compute Engine VM.
  final AdvancedMachineFeaturesResponse4 advancedMachineFeatures;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final String bootDiskKmsKey;

  /// Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
  final ConfidentialNodesResponse confidentialNodes;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  final int diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  final String diskType;

  /// Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk.
  final EphemeralStorageLocalSsdConfigResponse ephemeralStorageLocalSsdConfig;

  /// Enable or disable NCCL fast socket for the node pool.
  final FastSocketResponse fastSocket;

  /// Google Container File System (image streaming) configs.
  final GcfsConfigResponse gcfsConfig;

  /// Enable or disable gvnic in the node pool.
  final VirtualNICResponse gvnic;

  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  final String imageType;

  /// Node kubelet configs.
  final NodeKubeletConfigResponse kubeletConfig;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final Map<String, String> labels;

  /// Parameters that can be configured on Linux nodes.
  final LinuxNodeConfigResponse linuxNodeConfig;

  /// Parameters for using raw-block Local NVMe SSDs.
  final LocalNvmeSsdBlockConfigResponse localNvmeSsdBlockConfig;

  /// The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.
  final int localSsdCount;

  /// Logging configuration.
  final NodePoolLoggingConfigResponse loggingConfig;

  /// The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-types) If unspecified, the default machine type is `e2-medium`.
  final String machineType;

  /// The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" - "containerd-configure-sh" - "enable-os-login" - "gci-ensure-gke-docker" - "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" - "kube-env" - "startup-script" - "user-data" - "disable-address-manager" - "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" - "install-ssh-psm1" - "user-profile-psm1" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB. The total size of all keys and values must be less than 512 KB.
  final Map<String, String> metadata;

  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as `minCpuPlatform: "Intel Haswell"` or `minCpuPlatform: "Intel Sandy Bridge"`. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  final String minCpuPlatform;

  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  final String nodeGroup;

  /// The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  final List<String> oauthScopes;

  /// Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances.
  final bool preemptible;

  /// The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this node pool.
  final ReservationAffinityResponse4 reservationAffinity;

  /// The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
  final Map<String, String> resourceLabels;

  /// A map of resource manager tag keys and values to be attached to the nodes.
  final ResourceManagerTagsResponse resourceManagerTags;

  /// Sandbox configuration for this node.
  final SandboxConfigResponse sandboxConfig;

  /// The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  final String serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfigResponse4 shieldedInstanceConfig;

  /// Parameters for node pools to be backed by shared sole tenant node groups.
  final SoleTenantConfigResponse soleTenantConfig;

  /// Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
  final bool spot;

  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
  final List<String> tags;

  /// List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  final List<NodeTaintResponse> taints;

  /// Parameters that can be configured on Windows nodes.
  final WindowsNodeConfigResponse windowsNodeConfig;

  /// The workload metadata configuration for this node.
  final WorkloadMetadataConfigResponse workloadMetadataConfig;

  NodeConfigResponse4({
    required this.accelerators,
    required this.advancedMachineFeatures,
    required this.bootDiskKmsKey,
    required this.confidentialNodes,
    required this.diskSizeGb,
    required this.diskType,
    required this.ephemeralStorageLocalSsdConfig,
    required this.fastSocket,
    required this.gcfsConfig,
    required this.gvnic,
    required this.imageType,
    required this.kubeletConfig,
    required this.labels,
    required this.linuxNodeConfig,
    required this.localNvmeSsdBlockConfig,
    required this.localSsdCount,
    required this.loggingConfig,
    required this.machineType,
    required this.metadata,
    required this.minCpuPlatform,
    required this.nodeGroup,
    required this.oauthScopes,
    required this.preemptible,
    required this.reservationAffinity,
    required this.resourceLabels,
    required this.resourceManagerTags,
    required this.sandboxConfig,
    required this.serviceAccount,
    required this.shieldedInstanceConfig,
    required this.soleTenantConfig,
    required this.spot,
    required this.tags,
    required this.taints,
    required this.windowsNodeConfig,
    required this.workloadMetadataConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerators'] =
        Input.encodeList<AcceleratorConfigResponse4, Map<String, dynamic>>(
            accelerators, (value) => value.toMap());
    map['advancedMachineFeatures'] = advancedMachineFeatures.toMap();
    map['bootDiskKmsKey'] = bootDiskKmsKey;
    map['confidentialNodes'] = confidentialNodes.toMap();
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    map['ephemeralStorageLocalSsdConfig'] =
        ephemeralStorageLocalSsdConfig.toMap();
    map['fastSocket'] = fastSocket.toMap();
    map['gcfsConfig'] = gcfsConfig.toMap();
    map['gvnic'] = gvnic.toMap();
    map['imageType'] = imageType;
    map['kubeletConfig'] = kubeletConfig.toMap();
    map['labels'] = labels;
    map['linuxNodeConfig'] = linuxNodeConfig.toMap();
    map['localNvmeSsdBlockConfig'] = localNvmeSsdBlockConfig.toMap();
    map['localSsdCount'] = localSsdCount;
    map['loggingConfig'] = loggingConfig.toMap();
    map['machineType'] = machineType;
    map['metadata'] = metadata;
    map['minCpuPlatform'] = minCpuPlatform;
    map['nodeGroup'] = nodeGroup;
    map['oauthScopes'] = oauthScopes;
    map['preemptible'] = preemptible;
    map['reservationAffinity'] = reservationAffinity.toMap();
    map['resourceLabels'] = resourceLabels;
    map['resourceManagerTags'] = resourceManagerTags.toMap();
    map['sandboxConfig'] = sandboxConfig.toMap();
    map['serviceAccount'] = serviceAccount;
    map['shieldedInstanceConfig'] = shieldedInstanceConfig.toMap();
    map['soleTenantConfig'] = soleTenantConfig.toMap();
    map['spot'] = spot;
    map['tags'] = tags;
    map['taints'] = Input.encodeList<NodeTaintResponse, Map<String, dynamic>>(
        taints, (value) => value.toMap());
    map['windowsNodeConfig'] = windowsNodeConfig.toMap();
    map['workloadMetadataConfig'] = workloadMetadataConfig.toMap();
    return map;
  }

  factory NodeConfigResponse4.fromMap(Map<String, dynamic> map) {
    return NodeConfigResponse4(
      accelerators: Input.decodeList<AcceleratorConfigResponse4>(
          map['accelerators'],
          (value) => AcceleratorConfigResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      advancedMachineFeatures: AdvancedMachineFeaturesResponse4.fromMap(
          (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      bootDiskKmsKey: map['bootDiskKmsKey'] as String,
      confidentialNodes: ConfidentialNodesResponse.fromMap(
          (map['confidentialNodes'] as Map).cast<String, dynamic>()),
      diskSizeGb: map['diskSizeGb'] as int,
      diskType: map['diskType'] as String,
      ephemeralStorageLocalSsdConfig:
          EphemeralStorageLocalSsdConfigResponse.fromMap(
              (map['ephemeralStorageLocalSsdConfig'] as Map)
                  .cast<String, dynamic>()),
      fastSocket: FastSocketResponse.fromMap(
          (map['fastSocket'] as Map).cast<String, dynamic>()),
      gcfsConfig: GcfsConfigResponse.fromMap(
          (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      gvnic: VirtualNICResponse.fromMap(
          (map['gvnic'] as Map).cast<String, dynamic>()),
      imageType: map['imageType'] as String,
      kubeletConfig: NodeKubeletConfigResponse.fromMap(
          (map['kubeletConfig'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      linuxNodeConfig: LinuxNodeConfigResponse.fromMap(
          (map['linuxNodeConfig'] as Map).cast<String, dynamic>()),
      localNvmeSsdBlockConfig: LocalNvmeSsdBlockConfigResponse.fromMap(
          (map['localNvmeSsdBlockConfig'] as Map).cast<String, dynamic>()),
      localSsdCount: map['localSsdCount'] as int,
      loggingConfig: NodePoolLoggingConfigResponse.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
      machineType: map['machineType'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      minCpuPlatform: map['minCpuPlatform'] as String,
      nodeGroup: map['nodeGroup'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
      preemptible: map['preemptible'] as bool,
      reservationAffinity: ReservationAffinityResponse4.fromMap(
          (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourceLabels: (map['resourceLabels'] as Map).cast<String, String>(),
      resourceManagerTags: ResourceManagerTagsResponse.fromMap(
          (map['resourceManagerTags'] as Map).cast<String, dynamic>()),
      sandboxConfig: SandboxConfigResponse.fromMap(
          (map['sandboxConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      shieldedInstanceConfig: ShieldedInstanceConfigResponse4.fromMap(
          (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      soleTenantConfig: SoleTenantConfigResponse.fromMap(
          (map['soleTenantConfig'] as Map).cast<String, dynamic>()),
      spot: map['spot'] as bool,
      tags: (map['tags'] as List).cast<String>(),
      taints: Input.decodeList<NodeTaintResponse>(
          map['taints'],
          (value) => NodeTaintResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      windowsNodeConfig: WindowsNodeConfigResponse.fromMap(
          (map['windowsNodeConfig'] as Map).cast<String, dynamic>()),
      workloadMetadataConfig: WorkloadMetadataConfigResponse.fromMap(
          (map['workloadMetadataConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
