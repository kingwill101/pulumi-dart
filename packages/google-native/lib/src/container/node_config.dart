// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config.dart';
import 'advanced_machine_features.dart';
import 'confidential_nodes.dart';
import 'ephemeral_storage_local_ssd_config.dart';
import 'fast_socket.dart';
import 'gcfs_config.dart';
import 'linux_node_config.dart';
import 'local_nvme_ssd_block_config.dart';
import 'node_kubelet_config.dart';
import 'node_pool_logging_config.dart';
import 'node_taint.dart';
import 'reservation_affinity.dart';
import 'resource_manager_tags.dart';
import 'sandbox_config.dart';
import 'shielded_instance_config.dart';
import 'sole_tenant_config.dart';
import 'virtual_nic.dart';
import 'windows_node_config.dart';
import 'workload_metadata_config.dart';

/// Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults instead.
class NodeConfig {
  /// A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs.
  final List<AcceleratorConfig>? accelerators;

  /// Advanced features for the Compute Engine VM.
  final AdvancedMachineFeatures? advancedMachineFeatures;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final String? bootDiskKmsKey;

  /// Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
  final ConfidentialNodes? confidentialNodes;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  final int? diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  final String? diskType;

  /// Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk.
  final EphemeralStorageLocalSsdConfig? ephemeralStorageLocalSsdConfig;

  /// Enable or disable NCCL fast socket for the node pool.
  final FastSocket? fastSocket;

  /// Google Container File System (image streaming) configs.
  final GcfsConfig? gcfsConfig;

  /// Enable or disable gvnic in the node pool.
  final VirtualNIC? gvnic;

  /// The image type to use for this node. Note that for a given image type, the latest version of it will be used. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  final String? imageType;

  /// Node kubelet configs.
  final NodeKubeletConfig? kubeletConfig;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final Map<String, String>? labels;

  /// Parameters that can be configured on Linux nodes.
  final LinuxNodeConfig? linuxNodeConfig;

  /// Parameters for using raw-block Local NVMe SSDs.
  final LocalNvmeSsdBlockConfig? localNvmeSsdBlockConfig;

  /// The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.
  final int? localSsdCount;

  /// Logging configuration.
  final NodePoolLoggingConfig? loggingConfig;

  /// The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-types) If unspecified, the default machine type is `e2-medium`.
  final String? machineType;

  /// The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" - "containerd-configure-sh" - "enable-os-login" - "gci-ensure-gke-docker" - "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" - "kube-env" - "startup-script" - "user-data" - "disable-address-manager" - "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" - "install-ssh-psm1" - "user-profile-psm1" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB. The total size of all keys and values must be less than 512 KB.
  final Map<String, String>? metadata;

  /// Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as `minCpuPlatform: "Intel Haswell"` or `minCpuPlatform: "Intel Sandy Bridge"`. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  final String? minCpuPlatform;

  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  final String? nodeGroup;

  /// The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  final List<String>? oauthScopes;

  /// Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances.
  final bool? preemptible;

  /// The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this node pool.
  final ReservationAffinity? reservationAffinity;

  /// The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
  final Map<String, String>? resourceLabels;

  /// A map of resource manager tag keys and values to be attached to the nodes.
  final ResourceManagerTags? resourceManagerTags;

  /// Sandbox configuration for this node.
  final SandboxConfig? sandboxConfig;

  /// The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  final String? serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfig? shieldedInstanceConfig;

  /// Parameters for node pools to be backed by shared sole tenant node groups.
  final SoleTenantConfig? soleTenantConfig;

  /// Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
  final bool? spot;

  /// The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
  final List<String>? tags;

  /// List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  final List<NodeTaint>? taints;

  /// Parameters that can be configured on Windows nodes.
  final WindowsNodeConfig? windowsNodeConfig;

  /// The workload metadata configuration for this node.
  final WorkloadMetadataConfig? workloadMetadataConfig;

  /// Creates a new [NodeConfig].
  /// [accelerators] A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute/docs/gpus for more information about support for GPUs.
  /// [advancedMachineFeatures] Advanced features for the Compute Engine VM.
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  /// [confidentialNodes] Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled.
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  /// [diskType] Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  /// [ephemeralStorageLocalSsdConfig] Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is backed by the boot disk.
  /// [fastSocket] Enable or disable NCCL fast socket for the node pool.
  /// [gcfsConfig] Google Container File System (image streaming) configs.
  /// [gvnic] Enable or disable gvnic in the node pool.
  /// [imageType] The image type to use for this node. Note that for a given image type, the latest version of it will be used. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  /// [kubeletConfig] Node kubelet configs.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  /// [linuxNodeConfig] Parameters that can be configured on Linux nodes.
  /// [localNvmeSsdBlockConfig] Parameters for using raw-block Local NVMe SSDs.
  /// [localSsdCount] The number of local SSD disks to be attached to the node. The limit for this value is dependent upon the maximum number of disks available on a machine per zone. See: https://cloud.google.com/compute/docs/disks/local-ssd for more information.
  /// [loggingConfig] Logging configuration.
  /// [machineType] The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-types) If unspecified, the default machine type is `e2-medium`.
  /// [metadata] The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regexp `[a-zA-Z0-9-_]+` and be less than 128 bytes in length. These are reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project or be one of the reserved keys: - "cluster-location" - "cluster-name" - "cluster-uid" - "configure-sh" - "containerd-configure-sh" - "enable-os-login" - "gci-ensure-gke-docker" - "gci-metrics-enabled" - "gci-update-strategy" - "instance-template" - "kube-env" - "startup-script" - "user-data" - "disable-address-manager" - "windows-startup-script-ps1" - "common-psm1" - "k8s-node-setup-psm1" - "install-ssh-psm1" - "user-profile-psm1" Values are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on them is that each value's size must be less than or equal to 32 KB. The total size of all keys and values must be less than 512 KB.
  /// [minCpuPlatform] Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as `minCpuPlatform: "Intel Haswell"` or `minCpuPlatform: "Intel Sandy Bridge"`. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// [nodeGroup] Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  /// [oauthScopes] The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  /// [preemptible] Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/docs/instances/preemptible for more information about preemptible VM instances.
  /// [reservationAffinity] The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this node pool.
  /// [resourceLabels] The resource labels for the node pool to use to annotate any related Google Compute Engine resources.
  /// [resourceManagerTags] A map of resource manager tag keys and values to be attached to the nodes.
  /// [sandboxConfig] Sandbox configuration for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [soleTenantConfig] Parameters for node pools to be backed by shared sole tenant node groups.
  /// [spot] Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
  /// [tags] The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during cluster or node pool creation. Each tag within the list must comply with RFC1035.
  /// [taints] List of kubernetes taints to be applied to each node. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  /// [windowsNodeConfig] Parameters that can be configured on Windows nodes.
  /// [workloadMetadataConfig] The workload metadata configuration for this node.
  NodeConfig({
    this.accelerators,
    this.advancedMachineFeatures,
    this.bootDiskKmsKey,
    this.confidentialNodes,
    this.diskSizeGb,
    this.diskType,
    this.ephemeralStorageLocalSsdConfig,
    this.fastSocket,
    this.gcfsConfig,
    this.gvnic,
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
    return <String, dynamic>{
      'accelerators': ?accelerators == null
          ? null
          : pulumi.Input.encodeList<AcceleratorConfig, Map<String, dynamic>>(
              accelerators!,
              (value) => value.toMap(),
            ),
      'advancedMachineFeatures': ?advancedMachineFeatures == null
          ? null
          : advancedMachineFeatures!.toMap(),
      'bootDiskKmsKey': ?bootDiskKmsKey,
      'confidentialNodes': ?confidentialNodes == null
          ? null
          : confidentialNodes!.toMap(),
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'ephemeralStorageLocalSsdConfig': ?ephemeralStorageLocalSsdConfig == null
          ? null
          : ephemeralStorageLocalSsdConfig!.toMap(),
      'fastSocket': ?fastSocket == null ? null : fastSocket!.toMap(),
      'gcfsConfig': ?gcfsConfig == null ? null : gcfsConfig!.toMap(),
      'gvnic': ?gvnic == null ? null : gvnic!.toMap(),
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
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
      'machineType': ?machineType,
      'metadata': ?metadata,
      'minCpuPlatform': ?minCpuPlatform,
      'nodeGroup': ?nodeGroup,
      'oauthScopes': ?oauthScopes,
      'preemptible': ?preemptible,
      'reservationAffinity': ?reservationAffinity == null
          ? null
          : reservationAffinity!.toMap(),
      'resourceLabels': ?resourceLabels,
      'resourceManagerTags': ?resourceManagerTags == null
          ? null
          : resourceManagerTags!.toMap(),
      'sandboxConfig': ?sandboxConfig == null ? null : sandboxConfig!.toMap(),
      'serviceAccount': ?serviceAccount,
      'shieldedInstanceConfig': ?shieldedInstanceConfig == null
          ? null
          : shieldedInstanceConfig!.toMap(),
      'soleTenantConfig': ?soleTenantConfig == null
          ? null
          : soleTenantConfig!.toMap(),
      'spot': ?spot,
      'tags': ?tags,
      'taints': ?taints == null
          ? null
          : pulumi.Input.encodeList<NodeTaint, Map<String, dynamic>>(
              taints!,
              (value) => value.toMap(),
            ),
      'windowsNodeConfig': ?windowsNodeConfig == null
          ? null
          : windowsNodeConfig!.toMap(),
      'workloadMetadataConfig': ?workloadMetadataConfig == null
          ? null
          : workloadMetadataConfig!.toMap(),
    };
  }

  factory NodeConfig.fromMap(Map<String, dynamic> map) {
    return NodeConfig(
      accelerators: map['accelerators'] == null
          ? null
          : pulumi.Input.decodeList<AcceleratorConfig>(
              map['accelerators'],
              (value) => AcceleratorConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : AdvancedMachineFeatures.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>(),
            ),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null
          ? null
          : map['bootDiskKmsKey'] as String,
      confidentialNodes: map['confidentialNodes'] == null
          ? null
          : ConfidentialNodes.fromMap(
              (map['confidentialNodes'] as Map).cast<String, dynamic>(),
            ),
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      ephemeralStorageLocalSsdConfig:
          map['ephemeralStorageLocalSsdConfig'] == null
          ? null
          : EphemeralStorageLocalSsdConfig.fromMap(
              (map['ephemeralStorageLocalSsdConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      fastSocket: map['fastSocket'] == null
          ? null
          : FastSocket.fromMap(
              (map['fastSocket'] as Map).cast<String, dynamic>(),
            ),
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : GcfsConfig.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>(),
            ),
      gvnic: map['gvnic'] == null
          ? null
          : VirtualNIC.fromMap((map['gvnic'] as Map).cast<String, dynamic>()),
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      kubeletConfig: map['kubeletConfig'] == null
          ? null
          : NodeKubeletConfig.fromMap(
              (map['kubeletConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      linuxNodeConfig: map['linuxNodeConfig'] == null
          ? null
          : LinuxNodeConfig.fromMap(
              (map['linuxNodeConfig'] as Map).cast<String, dynamic>(),
            ),
      localNvmeSsdBlockConfig: map['localNvmeSsdBlockConfig'] == null
          ? null
          : LocalNvmeSsdBlockConfig.fromMap(
              (map['localNvmeSsdBlockConfig'] as Map).cast<String, dynamic>(),
            ),
      localSsdCount: map['localSsdCount'] == null
          ? null
          : map['localSsdCount'] as int,
      loggingConfig: map['loggingConfig'] == null
          ? null
          : NodePoolLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>(),
            ),
      machineType: map['machineType'] == null
          ? null
          : map['machineType'] as String,
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
          : ReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>(),
            ),
      resourceLabels: map['resourceLabels'] == null
          ? null
          : (map['resourceLabels'] as Map).cast<String, String>(),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : ResourceManagerTags.fromMap(
              (map['resourceManagerTags'] as Map).cast<String, dynamic>(),
            ),
      sandboxConfig: map['sandboxConfig'] == null
          ? null
          : SandboxConfig.fromMap(
              (map['sandboxConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
            ),
      soleTenantConfig: map['soleTenantConfig'] == null
          ? null
          : SoleTenantConfig.fromMap(
              (map['soleTenantConfig'] as Map).cast<String, dynamic>(),
            ),
      spot: map['spot'] == null ? null : map['spot'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      taints: map['taints'] == null
          ? null
          : pulumi.Input.decodeList<NodeTaint>(
              map['taints'],
              (value) =>
                  NodeTaint.fromMap((value as Map).cast<String, dynamic>()),
            ),
      windowsNodeConfig: map['windowsNodeConfig'] == null
          ? null
          : WindowsNodeConfig.fromMap(
              (map['windowsNodeConfig'] as Map).cast<String, dynamic>(),
            ),
      workloadMetadataConfig: map['workloadMetadataConfig'] == null
          ? null
          : WorkloadMetadataConfig.fromMap(
              (map['workloadMetadataConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
