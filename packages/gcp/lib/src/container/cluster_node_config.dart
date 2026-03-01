// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_advanced_machine_features.dart';
import 'cluster_node_config_boot_disk.dart';
import 'cluster_node_config_confidential_nodes.dart';
import 'cluster_node_config_containerd_config.dart';
import 'cluster_node_config_effective_taint.dart';
import 'cluster_node_config_ephemeral_storage_config.dart';
import 'cluster_node_config_ephemeral_storage_local_ssd_config.dart';
import 'cluster_node_config_fast_socket.dart';
import 'cluster_node_config_gcfs_config.dart';
import 'cluster_node_config_guest_accelerator.dart';
import 'cluster_node_config_gvnic.dart';
import 'cluster_node_config_host_maintenance_policy.dart';
import 'cluster_node_config_kubelet_config.dart';
import 'cluster_node_config_linux_node_config.dart';
import 'cluster_node_config_local_nvme_ssd_block_config.dart';
import 'cluster_node_config_reservation_affinity.dart';
import 'cluster_node_config_sandbox_config.dart';
import 'cluster_node_config_secondary_boot_disk.dart';
import 'cluster_node_config_shielded_instance_config.dart';
import 'cluster_node_config_sole_tenant_config.dart';
import 'cluster_node_config_taint.dart';
import 'cluster_node_config_windows_node_config.dart';
import 'cluster_node_config_workload_metadata_config.dart';

class ClusterNodeConfig {
  /// Specifies options for controlling
  /// advanced machine features. Structure is documented below.
  final ClusterNodeConfigAdvancedMachineFeatures? advancedMachineFeatures;

  /// Configuration of the node pool boot disk. Structure is documented below
  final ClusterNodeConfigBootDisk? bootDisk;

  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: <https://cloud.google.com/compute/docs/disks/customer-managed-encryption>
  final String? bootDiskKmsKey;

  /// Configuration for Confidential Nodes feature. Structure is documented below.
  final ClusterNodeConfigConfidentialNodes? confidentialNodes;

  /// Parameters to customize containerd runtime. Structure is documented below.
  final ClusterNodeConfigContainerdConfig? containerdConfig;

  /// Size of the disk attached to each node, specified
  /// in GB. The smallest allowed disk size is 10GB. Defaults to 100GB. This is being migrated to `boot_disk.size_gb`, and must match if specified in both places.
  /// Prefer configuring `boot_disk`.
  final int? diskSizeGb;

  /// Type of the disk attached to each node
  /// (e.g. 'pd-standard', 'pd-balanced', 'pd-ssd', or 'hyperdisk-balanced'). Defaults to `hyperdisk-balanced` if `hyperdisk-balanced` is supported and `pd-balanced` is not supported for the machine type; otherwise defaults to `pd-balanced`. This is being migrated to `boot_disk.disk_type`, and must match if specified in both places. Prefer configuring `boot_disk`.
  final String? diskType;

  /// List of kubernetes taints applied to each node.
  final List<ClusterNodeConfigEffectiveTaint>? effectiveTaints;

  /// Enabling Confidential Storage will create boot disk with confidential mode. It is disabled by default.
  final bool? enableConfidentialStorage;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. Structure is documented below.
  final ClusterNodeConfigEphemeralStorageConfig? ephemeralStorageConfig;

  /// Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. Structure is documented below.
  final ClusterNodeConfigEphemeralStorageLocalSsdConfig?
  ephemeralStorageLocalSsdConfig;

  /// Parameters for the NCCL Fast Socket feature. If unspecified, NCCL Fast Socket will not be enabled on the node pool.
  /// Node Pool must enable gvnic.
  /// GKE version 1.25.2-gke.1700 or later.
  /// Structure is documented below.
  final ClusterNodeConfigFastSocket? fastSocket;

  /// Enables Flex Start provisioning model for the node pool.
  final bool? flexStart;

  /// Parameters for the Google Container Filesystem (GCFS).
  /// If unspecified, GCFS will not be enabled on the node pool. When enabling this feature you must specify `image_type = "COS_CONTAINERD"` and `node_version` from GKE versions 1.19 or later to use it.
  /// For GKE versions 1.19, 1.20, and 1.21, the recommended minimum `node_version` would be 1.19.15-gke.1300, 1.20.11-gke.1300, and 1.21.5-gke.1300 respectively.
  /// A `machine_type` that has more than 16 GiB of memory is also recommended.
  /// GCFS must be enabled in order to use [image streaming](https://cloud.google.com/kubernetes-engine/docs/how-to/image-streaming).
  /// Structure is documented below.
  final ClusterNodeConfigGcfsConfig? gcfsConfig;

  /// List of the type and count of accelerator cards attached to the instance.
  /// Structure documented below.
  final List<ClusterNodeConfigGuestAccelerator>? guestAccelerators;

  /// Google Virtual NIC (gVNIC) is a virtual network interface.
  /// Installing the gVNIC driver allows for more efficient traffic transmission across the Google network infrastructure.
  /// gVNIC is an alternative to the virtIO-based ethernet driver. GKE nodes must use a Container-Optimized OS node image.
  /// GKE node version 1.15.11-gke.15 or later
  /// Structure is documented below.
  final ClusterNodeConfigGvnic? gvnic;

  /// The maintenance policy for the hosts on which the GKE VMs run on.
  final ClusterNodeConfigHostMaintenancePolicy? hostMaintenancePolicy;

  /// The image type to use for this node. Note that changing the image type
  /// will delete and recreate all nodes in the node pool.
  final String? imageType;

  /// Kubelet configuration, currently supported attributes can be found [here](https://cloud.google.com/sdk/gcloud/reference/beta/container/node-pools/create#--system-config-from-file).
  /// Structure is documented below.
  ///
  /// ```
  /// kubelet_config {
  /// cpu_manager_policy   = "static"
  /// cpu_cfs_quota        = true
  /// cpu_cfs_quota_period = "100us"
  /// pod_pids_limit       = 1024
  /// }
  /// ```
  final ClusterNodeConfigKubeletConfig? kubeletConfig;

  /// The Kubernetes labels (key/value pairs) to be applied to each node. The kubernetes.io/ and k8s.io/ prefixes are
  /// reserved by Kubernetes Core components and cannot be specified.
  final Map<String, String>? labels;

  /// Parameters that can be configured on Linux nodes. Structure is documented below.
  final ClusterNodeConfigLinuxNodeConfig? linuxNodeConfig;

  /// Parameters for the local NVMe SSDs. Structure is documented below.
  final ClusterNodeConfigLocalNvmeSsdBlockConfig? localNvmeSsdBlockConfig;

  /// The amount of local SSD disks that will be
  /// attached to each cluster node. Defaults to 0.
  final int? localSsdCount;

  /// Possible Local SSD encryption modes:
  /// Accepted values are:
  /// * `STANDARD_ENCRYPTION`: The given node will be encrypted using keys managed by Google infrastructure and the keys wll be deleted when the node is deleted.
  /// * `EPHEMERAL_KEY_ENCRYPTION`: The given node will opt-in for using ephemeral key for encrypting Local SSDs. The Local SSDs will not be able to recover data in case of node crash.
  final String? localSsdEncryptionMode;

  /// Parameter for specifying the type of logging agent used in a node pool. This will override any cluster-wide default value. Valid values include DEFAULT and MAX_THROUGHPUT. See [Increasing logging agent throughput](https://cloud.google.com/stackdriver/docs/solutions/gke/managing-logs#throughput) for more information.
  final String? loggingVariant;

  /// The name of a Google Compute Engine machine type.
  /// Defaults to `e2-medium`. To create a custom machine type, value should be set as specified
  /// [here](https://cloud.google.com/compute/docs/reference/latest/instances#machineType).
  final String? machineType;

  /// The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  final String? maxRunDuration;

  /// The metadata key/value pairs assigned to instances in
  /// the cluster. From GKE `1.12` onwards, `disable-legacy-endpoints` is set to
  /// `true` by the API; if `metadata` is set but that default value is not
  /// included, the provider will attempt to unset the value. To avoid this, set the
  /// value in your config.
  final Map<String, String>? metadata;

  /// Minimum CPU platform to be used by this instance.
  /// The instance may be scheduled on the specified or newer CPU platform. Applicable
  /// values are the friendly names of CPU platforms, such as `Intel Haswell`. See the
  /// [official documentation](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// for more information.
  final String? minCpuPlatform;

  /// Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  final String? nodeGroup;

  /// The set of Google API scopes to be made available
  /// on all of the node VMs under the "default" service account.
  /// Use the "https://www.googleapis.com/auth/cloud-platform" scope to grant access to all APIs. It is recommended that you set `service_account` to a non-default service account and grant IAM roles to that service account for only the resources that it needs.
  ///
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/access-scopes) for information on migrating off of legacy access scopes.
  final List<String>? oauthScopes;

  /// A boolean that represents whether or not the underlying node VMs
  /// are preemptible. See the [official documentation](https://cloud.google.com/container-engine/docs/preemptible-vm)
  /// for more information. Defaults to false.
  final bool? preemptible;

  /// The configuration of the desired reservation which instances could take capacity from. Structure is documented below.
  final ClusterNodeConfigReservationAffinity? reservationAffinity;

  /// The GCP labels (key/value pairs) to be applied to each node. Refer [here](https://cloud.google.com/kubernetes-engine/docs/how-to/creating-managing-labels)
  /// for how these labels are applied to clusters, node pools and nodes.
  final Map<String, String>? resourceLabels;

  /// A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications found [here](https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications). A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values. Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`.
  final Map<String, String>? resourceManagerTags;

  /// Sandbox configuration for this node.
  final ClusterNodeConfigSandboxConfig? sandboxConfig;

  /// Parameters for secondary boot disks to preload container images and data on new nodes. Structure is documented below. `gcfs_config` must be `enabled=true` for this feature to work. `min_master_version` must also be set to use GKE 1.28.3-gke.106700 or later versions.
  final List<ClusterNodeConfigSecondaryBootDisk>? secondaryBootDisks;

  /// The service account to be used by the Node VMs.
  /// If not specified, the "default" service account is used.
  final String? serviceAccount;

  /// Shielded Instance options. Structure is documented below.
  final ClusterNodeConfigShieldedInstanceConfig? shieldedInstanceConfig;

  /// Allows specifying multiple [node affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity) useful for running workloads on [sole tenant nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/sole-tenancy). Structure is documented below.
  final ClusterNodeConfigSoleTenantConfig? soleTenantConfig;

  /// A boolean that represents whether the underlying node VMs are spot.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/concepts/spot-vms)
  /// for more information. Defaults to false.
  final bool? spot;

  /// The list of Storage Pools where boot disks are provisioned.
  final List<String>? storagePools;

  /// The list of instance tags applied to all nodes. Tags are used to identify
  /// valid sources or targets for network firewalls.
  final List<String>? tags;

  /// A list of [Kubernetes taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/)
  /// to apply to nodes. GKE's API can only set this field on cluster creation.
  /// However, GKE will add taints to your nodes if you enable certain features such
  /// as GPUs. If this field is set, any diffs on this field will cause the provider to
  /// recreate the underlying resource. Taint values can be updated safely in
  /// Kubernetes (eg. through `kubectl`), and it's recommended that you do not use
  /// this field to manage taints. If you do, `lifecycle.ignore_changes` is
  /// recommended. Structure is documented below.
  final List<ClusterNodeConfigTaint>? taints;

  /// Windows node configuration, currently supporting OSVersion [attribute](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/NodeConfig#osversion). The value must be one of [OS_VERSION_UNSPECIFIED, OS_VERSION_LTSC2019, OS_VERSION_LTSC2022]. For example:
  final ClusterNodeConfigWindowsNodeConfig? windowsNodeConfig;

  /// Metadata configuration to expose to workloads on the node pool.
  /// Structure is documented below.
  final ClusterNodeConfigWorkloadMetadataConfig? workloadMetadataConfig;

  /// Creates a new [ClusterNodeConfig].
  /// [advancedMachineFeatures] Specifies options for controlling
  /// [bootDisk] Configuration of the node pool boot disk. Structure is documented below
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: <https://cloud.google.com/compute/docs/disks/customer-managed-encryption>
  /// [confidentialNodes] Configuration for Confidential Nodes feature. Structure is documented below.
  /// [containerdConfig] Parameters to customize containerd runtime. Structure is documented below.
  /// [diskSizeGb] Size of the disk attached to each node, specified
  /// [diskType] Type of the disk attached to each node
  /// [effectiveTaints] List of kubernetes taints applied to each node.
  /// [enableConfidentialStorage] Enabling Confidential Storage will create boot disk with confidential mode. It is disabled by default.
  /// [ephemeralStorageConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. Structure is documented below.
  /// [ephemeralStorageLocalSsdConfig] Parameters for the ephemeral storage filesystem. If unspecified, ephemeral storage is backed by the boot disk. Structure is documented below.
  /// [fastSocket] Parameters for the NCCL Fast Socket feature. If unspecified, NCCL Fast Socket will not be enabled on the node pool.
  /// [flexStart] Enables Flex Start provisioning model for the node pool.
  /// [gcfsConfig] Parameters for the Google Container Filesystem (GCFS).
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [gvnic] Google Virtual NIC (gVNIC) is a virtual network interface.
  /// [hostMaintenancePolicy] The maintenance policy for the hosts on which the GKE VMs run on.
  /// [imageType] The image type to use for this node. Note that changing the image type
  /// [kubeletConfig] Kubelet configuration, currently supported attributes can be found [here](https://cloud.google.com/sdk/gcloud/reference/beta/container/node-pools/create#--system-config-from-file).
  /// [labels] The Kubernetes labels (key/value pairs) to be applied to each node. The kubernetes.io/ and k8s.io/ prefixes are
  /// [linuxNodeConfig] Parameters that can be configured on Linux nodes. Structure is documented below.
  /// [localNvmeSsdBlockConfig] Parameters for the local NVMe SSDs. Structure is documented below.
  /// [localSsdCount] The amount of local SSD disks that will be
  /// [localSsdEncryptionMode] Possible Local SSD encryption modes:
  /// [loggingVariant] Parameter for specifying the type of logging agent used in a node pool. This will override any cluster-wide default value. Valid values include DEFAULT and MAX_THROUGHPUT. See [Increasing logging agent throughput](https://cloud.google.com/stackdriver/docs/solutions/gke/managing-logs#throughput) for more information.
  /// [machineType] The name of a Google Compute Engine machine type.
  /// [maxRunDuration] The runtime of each node in the node pool in seconds, terminated by 's'. Example: "3600s".
  /// [metadata] The metadata key/value pairs assigned to instances in
  /// [minCpuPlatform] Minimum CPU platform to be used by this instance.
  /// [nodeGroup] Setting this field will assign instances of this pool to run on the specified node group. This is useful for running workloads on [sole tenant nodes](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
  /// [oauthScopes] The set of Google API scopes to be made available
  /// [preemptible] A boolean that represents whether or not the underlying node VMs
  /// [reservationAffinity] The configuration of the desired reservation which instances could take capacity from. Structure is documented below.
  /// [resourceLabels] The GCP labels (key/value pairs) to be applied to each node. Refer [here](https://cloud.google.com/kubernetes-engine/docs/how-to/creating-managing-labels)
  /// [resourceManagerTags] A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications found [here](https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications). A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values. Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`.
  /// [sandboxConfig] Sandbox configuration for this node.
  /// [secondaryBootDisks] Parameters for secondary boot disks to preload container images and data on new nodes. Structure is documented below. `gcfs_config` must be `enabled=true` for this feature to work. `min_master_version` must also be set to use GKE 1.28.3-gke.106700 or later versions.
  /// [serviceAccount] The service account to be used by the Node VMs.
  /// [shieldedInstanceConfig] Shielded Instance options. Structure is documented below.
  /// [soleTenantConfig] Allows specifying multiple [node affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity) useful for running workloads on [sole tenant nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/sole-tenancy). Structure is documented below.
  /// [spot] A boolean that represents whether the underlying node VMs are spot.
  /// [storagePools] The list of Storage Pools where boot disks are provisioned.
  /// [tags] The list of instance tags applied to all nodes. Tags are used to identify
  /// [taints] A list of [Kubernetes taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/)
  /// [windowsNodeConfig] Windows node configuration, currently supporting OSVersion [attribute](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/NodeConfig#osversion). The value must be one of [OS_VERSION_UNSPECIFIED, OS_VERSION_LTSC2019, OS_VERSION_LTSC2022]. For example:
  /// [workloadMetadataConfig] Metadata configuration to expose to workloads on the node pool.
  ClusterNodeConfig({
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
              ClusterNodeConfigEffectiveTaint,
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
              ClusterNodeConfigGuestAccelerator,
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
              ClusterNodeConfigSecondaryBootDisk,
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
              ClusterNodeConfigTaint,
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

  factory ClusterNodeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfig(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : ClusterNodeConfigAdvancedMachineFeatures.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>(),
            ),
      bootDisk: map['bootDisk'] == null
          ? null
          : ClusterNodeConfigBootDisk.fromMap(
              (map['bootDisk'] as Map).cast<String, dynamic>(),
            ),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null
          ? null
          : map['bootDiskKmsKey'] as String,
      confidentialNodes: map['confidentialNodes'] == null
          ? null
          : ClusterNodeConfigConfidentialNodes.fromMap(
              (map['confidentialNodes'] as Map).cast<String, dynamic>(),
            ),
      containerdConfig: map['containerdConfig'] == null
          ? null
          : ClusterNodeConfigContainerdConfig.fromMap(
              (map['containerdConfig'] as Map).cast<String, dynamic>(),
            ),
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      effectiveTaints: map['effectiveTaints'] == null
          ? null
          : pulumi.Input.decodeList<ClusterNodeConfigEffectiveTaint>(
              map['effectiveTaints'],
              (value) => ClusterNodeConfigEffectiveTaint.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      enableConfidentialStorage: map['enableConfidentialStorage'] == null
          ? null
          : map['enableConfidentialStorage'] as bool,
      ephemeralStorageConfig: map['ephemeralStorageConfig'] == null
          ? null
          : ClusterNodeConfigEphemeralStorageConfig.fromMap(
              (map['ephemeralStorageConfig'] as Map).cast<String, dynamic>(),
            ),
      ephemeralStorageLocalSsdConfig:
          map['ephemeralStorageLocalSsdConfig'] == null
          ? null
          : ClusterNodeConfigEphemeralStorageLocalSsdConfig.fromMap(
              (map['ephemeralStorageLocalSsdConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      fastSocket: map['fastSocket'] == null
          ? null
          : ClusterNodeConfigFastSocket.fromMap(
              (map['fastSocket'] as Map).cast<String, dynamic>(),
            ),
      flexStart: map['flexStart'] == null ? null : map['flexStart'] as bool,
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : ClusterNodeConfigGcfsConfig.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>(),
            ),
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<ClusterNodeConfigGuestAccelerator>(
              map['guestAccelerators'],
              (value) => ClusterNodeConfigGuestAccelerator.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      gvnic: map['gvnic'] == null
          ? null
          : ClusterNodeConfigGvnic.fromMap(
              (map['gvnic'] as Map).cast<String, dynamic>(),
            ),
      hostMaintenancePolicy: map['hostMaintenancePolicy'] == null
          ? null
          : ClusterNodeConfigHostMaintenancePolicy.fromMap(
              (map['hostMaintenancePolicy'] as Map).cast<String, dynamic>(),
            ),
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      kubeletConfig: map['kubeletConfig'] == null
          ? null
          : ClusterNodeConfigKubeletConfig.fromMap(
              (map['kubeletConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      linuxNodeConfig: map['linuxNodeConfig'] == null
          ? null
          : ClusterNodeConfigLinuxNodeConfig.fromMap(
              (map['linuxNodeConfig'] as Map).cast<String, dynamic>(),
            ),
      localNvmeSsdBlockConfig: map['localNvmeSsdBlockConfig'] == null
          ? null
          : ClusterNodeConfigLocalNvmeSsdBlockConfig.fromMap(
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
          : ClusterNodeConfigReservationAffinity.fromMap(
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
          : ClusterNodeConfigSandboxConfig.fromMap(
              (map['sandboxConfig'] as Map).cast<String, dynamic>(),
            ),
      secondaryBootDisks: map['secondaryBootDisks'] == null
          ? null
          : pulumi.Input.decodeList<ClusterNodeConfigSecondaryBootDisk>(
              map['secondaryBootDisks'],
              (value) => ClusterNodeConfigSecondaryBootDisk.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ClusterNodeConfigShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
            ),
      soleTenantConfig: map['soleTenantConfig'] == null
          ? null
          : ClusterNodeConfigSoleTenantConfig.fromMap(
              (map['soleTenantConfig'] as Map).cast<String, dynamic>(),
            ),
      spot: map['spot'] == null ? null : map['spot'] as bool,
      storagePools: map['storagePools'] == null
          ? null
          : (map['storagePools'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      taints: map['taints'] == null
          ? null
          : pulumi.Input.decodeList<ClusterNodeConfigTaint>(
              map['taints'],
              (value) => ClusterNodeConfigTaint.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      windowsNodeConfig: map['windowsNodeConfig'] == null
          ? null
          : ClusterNodeConfigWindowsNodeConfig.fromMap(
              (map['windowsNodeConfig'] as Map).cast<String, dynamic>(),
            ),
      workloadMetadataConfig: map['workloadMetadataConfig'] == null
          ? null
          : ClusterNodeConfigWorkloadMetadataConfig.fromMap(
              (map['workloadMetadataConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
