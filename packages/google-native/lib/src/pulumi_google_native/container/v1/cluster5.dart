import 'package:pulumi/pulumi.dart';
import 'addons_config_response.dart';
import 'authenticator_groups_config_response.dart';
import 'autopilot_response.dart';
import 'binary_authorization_response.dart';
import 'cluster_args5.dart';
import 'cluster_autoscaling_response.dart';
import 'confidential_nodes_response.dart';
import 'cost_management_config_response.dart';
import 'database_encryption_response.dart';
import 'enterprise_config_response.dart';
import 'fleet_response.dart';
import 'identity_service_config_response.dart';
import 'ipallocation_policy_response3.dart';
import 'k8s_beta_apiconfig_response.dart';
import 'legacy_abac_response.dart';
import 'logging_config_response.dart';
import 'maintenance_policy_response.dart';
import 'master_auth_response.dart';
import 'master_authorized_networks_config_response3.dart';
import 'max_pods_constraint_response.dart';
import 'mesh_certificates_response.dart';
import 'monitoring_config_response.dart';
import 'network_config_response9.dart';
import 'network_policy_response2.dart';
import 'node_config_response4.dart';
import 'node_pool_auto_config_response.dart';
import 'node_pool_defaults_response.dart';
import 'node_pool_response.dart';
import 'notification_config_response.dart';
import 'parent_product_config_response.dart';
import 'private_cluster_config_response3.dart';
import 'release_channel_response.dart';
import 'resource_usage_export_config_response.dart';
import 'security_posture_config_response.dart';
import 'shielded_nodes_response.dart';
import 'status_condition_response.dart';
import 'vertical_pod_autoscaling_response.dart';
import 'workload_identity_config_response.dart';

/// Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project's [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project's global metadata indicating which CIDR range the cluster is using.
class Cluster5 extends CustomResource {
  /// Configurations for the various addons available to run in the cluster.
  late final Output<AddonsConfigResponse> addonsConfig;

  /// Configuration controlling RBAC group membership information.
  late final Output<AuthenticatorGroupsConfigResponse>
      authenticatorGroupsConfig;

  /// Autopilot configuration for the cluster.
  late final Output<AutopilotResponse> autopilot;

  /// Cluster-level autoscaling configuration.
  late final Output<ClusterAutoscalingResponse> autoscaling;

  /// Configuration for Binary Authorization.
  late final Output<BinaryAuthorizationResponse> binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  late final Output<String> clusterIpv4Cidr;

  /// Which conditions caused the current cluster state.
  late final Output<List<StatusConditionResponse>> conditions;

  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  late final Output<ConfidentialNodesResponse> confidentialNodes;

  /// Configuration for the fine-grained cost management feature.
  late final Output<CostManagementConfigResponse> costManagementConfig;

  /// [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final Output<String> createTime;

  /// [Output only] The current software version of the master endpoint.
  late final Output<String> currentMasterVersion;

  /// [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  late final Output<int> currentNodeCount;

  /// [Output only] Deprecated, use [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  late final Output<String> currentNodeVersion;

  /// Configuration of etcd encryption.
  late final Output<DatabaseEncryptionResponse> databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  late final Output<MaxPodsConstraintResponse> defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  late final Output<String> description;

  /// Beta APIs Config
  late final Output<K8sBetaAPIConfigResponse> enableK8sBetaApis;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  late final Output<bool> enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster.
  late final Output<bool> enableTpu;

  /// [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  late final Output<String> endpoint;

  /// GKE Enterprise Configuration.
  late final Output<EnterpriseConfigResponse> enterpriseConfig;

  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final Output<String> expireTime;

  /// Fleet information for the cluster.
  late final Output<FleetResponse> fleet;

  /// Configuration for Identity Service component.
  late final Output<IdentityServiceConfigResponse> identityServiceConfig;

  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  late final Output<String> initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  late final Output<int> initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  late final Output<List<String>> instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  late final Output<IPAllocationPolicyResponse3> ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  late final Output<String> labelFingerprint;

  /// Configuration for the legacy ABAC authorization mode.
  late final Output<LegacyAbacResponse> legacyAbac;
  late final Output<String> location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  late final Output<List<String>> locations;

  /// Logging configuration for the cluster.
  late final Output<LoggingConfigResponse> loggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  late final Output<String> loggingService;

  /// Configure the maintenance policy for this cluster.
  late final Output<MaintenancePolicyResponse> maintenancePolicy;

  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  late final Output<MasterAuthResponse> masterAuth;

  /// The configuration options for master authorized networks feature.
  late final Output<MasterAuthorizedNetworksConfigResponse3>
      masterAuthorizedNetworksConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  late final Output<MeshCertificatesResponse> meshCertificates;

  /// Monitoring configuration for the cluster.
  late final Output<MonitoringConfigResponse> monitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  late final Output<String> monitoringService;

  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  late final Output<String> name;

  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used.
  late final Output<String> network;

  /// Configuration for cluster networking.
  late final Output<NetworkConfigResponse9> networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  late final Output<NetworkPolicyResponse2> networkPolicy;

  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  late final Output<NodeConfigResponse4> nodeConfig;

  /// [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  late final Output<int> nodeIpv4CidrSize;

  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  late final Output<NodePoolAutoConfigResponse> nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  late final Output<NodePoolDefaultsResponse> nodePoolDefaults;

  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  late final Output<List<NodePoolResponse>> nodePools;

  /// Notification configuration of the cluster.
  late final Output<NotificationConfigResponse> notificationConfig;

  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  late final Output<ParentProductConfigResponse> parentProductConfig;

  /// Configuration for private cluster.
  late final Output<PrivateClusterConfigResponse3> privateClusterConfig;
  late final Output<String> project;

  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  late final Output<ReleaseChannelResponse> releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  late final Output<Map<String, String>> resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.
  late final Output<ResourceUsageExportConfigResponse>
      resourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  late final Output<SecurityPostureConfigResponse> securityPostureConfig;

  /// [Output only] Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  late final Output<String> servicesIpv4Cidr;

  /// Shielded Nodes configuration.
  late final Output<ShieldedNodesResponse> shieldedNodes;

  /// [Output only] The current status of this cluster.
  late final Output<String> status;

  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  late final Output<String> statusMessage;

  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected.
  late final Output<String> subnetwork;

  /// [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  late final Output<String> tpuIpv4CidrBlock;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  late final Output<VerticalPodAutoscalingResponse> verticalPodAutoscaling;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  late final Output<WorkloadIdentityConfigResponse> workloadIdentityConfig;

  /// [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  late final Output<String> zone;

  Cluster5(
    String name, {
    ClusterArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:container/v1:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addonsConfig = Output.createUnknown<AddonsConfigResponse>();
    this.authenticatorGroupsConfig =
        Output.createUnknown<AuthenticatorGroupsConfigResponse>();
    this.autopilot = Output.createUnknown<AutopilotResponse>();
    this.autoscaling = Output.createUnknown<ClusterAutoscalingResponse>();
    this.binaryAuthorization =
        Output.createUnknown<BinaryAuthorizationResponse>();
    this.clusterIpv4Cidr = Output.createUnknown<String>();
    this.conditions = Output.createUnknown<List<StatusConditionResponse>>();
    this.confidentialNodes = Output.createUnknown<ConfidentialNodesResponse>();
    this.costManagementConfig =
        Output.createUnknown<CostManagementConfigResponse>();
    this.createTime = Output.createUnknown<String>();
    this.currentMasterVersion = Output.createUnknown<String>();
    this.currentNodeCount = Output.createUnknown<int>();
    this.currentNodeVersion = Output.createUnknown<String>();
    this.databaseEncryption =
        Output.createUnknown<DatabaseEncryptionResponse>();
    this.defaultMaxPodsConstraint =
        Output.createUnknown<MaxPodsConstraintResponse>();
    this.description = Output.createUnknown<String>();
    this.enableK8sBetaApis = Output.createUnknown<K8sBetaAPIConfigResponse>();
    this.enableKubernetesAlpha = Output.createUnknown<bool>();
    this.enableTpu = Output.createUnknown<bool>();
    this.endpoint = Output.createUnknown<String>();
    this.enterpriseConfig = Output.createUnknown<EnterpriseConfigResponse>();
    this.etag = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.fleet = Output.createUnknown<FleetResponse>();
    this.identityServiceConfig =
        Output.createUnknown<IdentityServiceConfigResponse>();
    this.initialClusterVersion = Output.createUnknown<String>();
    this.initialNodeCount = Output.createUnknown<int>();
    this.instanceGroupUrls = Output.createUnknown<List<String>>();
    this.ipAllocationPolicy =
        Output.createUnknown<IPAllocationPolicyResponse3>();
    this.labelFingerprint = Output.createUnknown<String>();
    this.legacyAbac = Output.createUnknown<LegacyAbacResponse>();
    this.location = Output.createUnknown<String>();
    this.locations = Output.createUnknown<List<String>>();
    this.loggingConfig = Output.createUnknown<LoggingConfigResponse>();
    this.loggingService = Output.createUnknown<String>();
    this.maintenancePolicy = Output.createUnknown<MaintenancePolicyResponse>();
    this.masterAuth = Output.createUnknown<MasterAuthResponse>();
    this.masterAuthorizedNetworksConfig =
        Output.createUnknown<MasterAuthorizedNetworksConfigResponse3>();
    this.meshCertificates = Output.createUnknown<MeshCertificatesResponse>();
    this.monitoringConfig = Output.createUnknown<MonitoringConfigResponse>();
    this.monitoringService = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.networkConfig = Output.createUnknown<NetworkConfigResponse9>();
    this.networkPolicy = Output.createUnknown<NetworkPolicyResponse2>();
    this.nodeConfig = Output.createUnknown<NodeConfigResponse4>();
    this.nodeIpv4CidrSize = Output.createUnknown<int>();
    this.nodePoolAutoConfig =
        Output.createUnknown<NodePoolAutoConfigResponse>();
    this.nodePoolDefaults = Output.createUnknown<NodePoolDefaultsResponse>();
    this.nodePools = Output.createUnknown<List<NodePoolResponse>>();
    this.notificationConfig =
        Output.createUnknown<NotificationConfigResponse>();
    this.parentProductConfig =
        Output.createUnknown<ParentProductConfigResponse>();
    this.privateClusterConfig =
        Output.createUnknown<PrivateClusterConfigResponse3>();
    this.project = Output.createUnknown<String>();
    this.releaseChannel = Output.createUnknown<ReleaseChannelResponse>();
    this.resourceLabels = Output.createUnknown<Map<String, String>>();
    this.resourceUsageExportConfig =
        Output.createUnknown<ResourceUsageExportConfigResponse>();
    this.securityPostureConfig =
        Output.createUnknown<SecurityPostureConfigResponse>();
    this.selfLink = Output.createUnknown<String>();
    this.servicesIpv4Cidr = Output.createUnknown<String>();
    this.shieldedNodes = Output.createUnknown<ShieldedNodesResponse>();
    this.status = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
    this.subnetwork = Output.createUnknown<String>();
    this.tpuIpv4CidrBlock = Output.createUnknown<String>();
    this.verticalPodAutoscaling =
        Output.createUnknown<VerticalPodAutoscalingResponse>();
    this.workloadIdentityConfig =
        Output.createUnknown<WorkloadIdentityConfigResponse>();
    this.zone = Output.createUnknown<String>();
  }
}
