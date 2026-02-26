import 'package:pulumi/pulumi.dart';
import 'addons_config_response2.dart';
import 'authenticator_groups_config_response2.dart';
import 'autopilot_response2.dart';
import 'binary_authorization_response2.dart';
import 'cluster_args6.dart';
import 'cluster_autoscaling_response2.dart';
import 'cluster_telemetry_response.dart';
import 'confidential_nodes_response2.dart';
import 'cost_management_config_response2.dart';
import 'database_encryption_response2.dart';
import 'enterprise_config_response2.dart';
import 'fleet_response2.dart';
import 'identity_service_config_response2.dart';
import 'ipallocation_policy_response4.dart';
import 'k8s_beta_apiconfig_response2.dart';
import 'legacy_abac_response2.dart';
import 'logging_config_response2.dart';
import 'maintenance_policy_response2.dart';
import 'master_auth_response2.dart';
import 'master_authorized_networks_config_response4.dart';
import 'max_pods_constraint_response2.dart';
import 'mesh_certificates_response2.dart';
import 'monitoring_config_response2.dart';
import 'network_config_response10.dart';
import 'network_policy_response3.dart';
import 'node_config_response5.dart';
import 'node_pool_auto_config_response2.dart';
import 'node_pool_defaults_response2.dart';
import 'node_pool_response2.dart';
import 'notification_config_response2.dart';
import 'parent_product_config_response2.dart';
import 'pod_security_policy_config_response.dart';
import 'private_cluster_config_response4.dart';
import 'protect_config_response.dart';
import 'release_channel_response2.dart';
import 'resource_usage_export_config_response2.dart';
import 'security_posture_config_response2.dart';
import 'shielded_nodes_response2.dart';
import 'status_condition_response2.dart';
import 'tpu_config_response.dart';
import 'vertical_pod_autoscaling_response2.dart';
import 'workload_altsconfig_response.dart';
import 'workload_certificates_response.dart';
import 'workload_identity_config_response2.dart';

/// Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project's [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). One firewall is added for the cluster. After cluster creation, the Kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project's global metadata indicating which CIDR range the cluster is using.
class Cluster6 extends CustomResource {
  /// Configurations for the various addons available to run in the cluster.
  late final Output<AddonsConfigResponse2> addonsConfig;

  /// Configuration controlling RBAC group membership information.
  late final Output<AuthenticatorGroupsConfigResponse2>
      authenticatorGroupsConfig;

  /// Autopilot configuration for the cluster.
  late final Output<AutopilotResponse2> autopilot;

  /// Cluster-level autoscaling configuration.
  late final Output<ClusterAutoscalingResponse2> autoscaling;

  /// Configuration for Binary Authorization.
  late final Output<BinaryAuthorizationResponse2> binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  late final Output<String> clusterIpv4Cidr;

  /// Telemetry integration for the cluster.
  late final Output<ClusterTelemetryResponse> clusterTelemetry;

  /// Which conditions caused the current cluster state.
  late final Output<List<StatusConditionResponse2>> conditions;

  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  late final Output<ConfidentialNodesResponse2> confidentialNodes;

  /// Configuration for the fine-grained cost management feature.
  late final Output<CostManagementConfigResponse2> costManagementConfig;

  /// [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final Output<String> createTime;

  /// [Output only] The current software version of the master endpoint.
  late final Output<String> currentMasterVersion;

  /// [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  late final Output<int> currentNodeCount;

  /// [Output only] Deprecated, use [NodePool.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  late final Output<String> currentNodeVersion;

  /// Configuration of etcd encryption.
  late final Output<DatabaseEncryptionResponse2> databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  late final Output<MaxPodsConstraintResponse2> defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  late final Output<String> description;

  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis.
  late final Output<K8sBetaAPIConfigResponse2> enableK8sBetaApis;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1beta1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  late final Output<bool> enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster. This field is deprecated, use tpu_config.enabled instead.
  late final Output<bool> enableTpu;

  /// [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  late final Output<String> endpoint;

  /// GKE Enterprise Configuration.
  late final Output<EnterpriseConfigResponse2> enterpriseConfig;

  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  late final Output<String> expireTime;

  /// Fleet information for the cluster.
  late final Output<FleetResponse2> fleet;

  /// Configuration for Identity Service component.
  late final Output<IdentityServiceConfigResponse2> identityServiceConfig;

  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  late final Output<String> initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  late final Output<int> initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  late final Output<List<String>> instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  late final Output<IPAllocationPolicyResponse4> ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  late final Output<String> labelFingerprint;

  /// Configuration for the legacy ABAC authorization mode.
  late final Output<LegacyAbacResponse2> legacyAbac;
  late final Output<String> location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  late final Output<List<String>> locations;

  /// Logging configuration for the cluster.
  late final Output<LoggingConfigResponse2> loggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  late final Output<String> loggingService;

  /// Configure the maintenance policy for this cluster.
  late final Output<MaintenancePolicyResponse2> maintenancePolicy;

  /// Configuration for master components.
  late final Output<Map<String, dynamic>> master;

  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  late final Output<MasterAuthResponse2> masterAuth;

  /// The configuration options for master authorized networks feature.
  late final Output<MasterAuthorizedNetworksConfigResponse4>
      masterAuthorizedNetworksConfig;

  /// The IP prefix in CIDR notation to use for the hosted master network. This prefix will be used for assigning private IP addresses to the master or set of masters, as well as the ILB VIP. This field is deprecated, use private_cluster_config.master_ipv4_cidr_block instead.
  late final Output<String> masterIpv4CidrBlock;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  late final Output<MeshCertificatesResponse2> meshCertificates;

  /// Monitoring configuration for the cluster.
  late final Output<MonitoringConfigResponse2> monitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  late final Output<String> monitoringService;

  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  late final Output<String> name;

  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used. On output this shows the network ID instead of the name.
  late final Output<String> network;

  /// Configuration for cluster networking.
  late final Output<NetworkConfigResponse10> networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  late final Output<NetworkPolicyResponse3> networkPolicy;

  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  late final Output<NodeConfigResponse5> nodeConfig;

  /// [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  late final Output<int> nodeIpv4CidrSize;

  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  late final Output<NodePoolAutoConfigResponse2> nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  late final Output<NodePoolDefaultsResponse2> nodePoolDefaults;

  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  late final Output<List<NodePoolResponse2>> nodePools;

  /// Notification configuration of the cluster.
  late final Output<NotificationConfigResponse2> notificationConfig;

  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  late final Output<ParentProductConfigResponse2> parentProductConfig;

  /// Configuration for the PodSecurityPolicy feature.
  late final Output<PodSecurityPolicyConfigResponse> podSecurityPolicyConfig;

  /// If this is a private cluster setup. Private clusters are clusters that, by default have no external IP addresses on the nodes and where nodes and the master communicate over private IP addresses. This field is deprecated, use private_cluster_config.enable_private_nodes instead.
  late final Output<bool> privateCluster;

  /// Configuration for private cluster.
  late final Output<PrivateClusterConfigResponse4> privateClusterConfig;
  late final Output<String> project;

  /// Deprecated: Use SecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  late final Output<ProtectConfigResponse> protectConfig;

  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  late final Output<ReleaseChannelResponse2> releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  late final Output<Map<String, String>> resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is disabled when this config unspecified.
  late final Output<ResourceUsageExportConfigResponse2>
      resourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  late final Output<SecurityPostureConfigResponse2> securityPostureConfig;

  /// [Output only] Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  late final Output<String> servicesIpv4Cidr;

  /// Shielded Nodes configuration.
  late final Output<ShieldedNodesResponse2> shieldedNodes;

  /// [Output only] The current status of this cluster.
  late final Output<String> status;

  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  late final Output<String> statusMessage;

  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected. On output this shows the subnetwork ID instead of the name.
  late final Output<String> subnetwork;

  /// Configuration for Cloud TPU support;
  late final Output<TpuConfigResponse> tpuConfig;

  /// [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  late final Output<String> tpuIpv4CidrBlock;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  late final Output<VerticalPodAutoscalingResponse2> verticalPodAutoscaling;

  /// Configuration for direct-path (via ALTS) with workload identity.
  late final Output<WorkloadALTSConfigResponse> workloadAltsConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  late final Output<WorkloadCertificatesResponse> workloadCertificates;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  late final Output<WorkloadIdentityConfigResponse2> workloadIdentityConfig;

  /// [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  late final Output<String> zone;

  Cluster6(
    String name, {
    ClusterArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:container/v1beta1:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addonsConfig = registerOutput<AddonsConfigResponse2>('addonsConfig');
    this.authenticatorGroupsConfig =
        registerOutput<AuthenticatorGroupsConfigResponse2>(
            'authenticatorGroupsConfig');
    this.autopilot = registerOutput<AutopilotResponse2>('autopilot');
    this.autoscaling =
        registerOutput<ClusterAutoscalingResponse2>('autoscaling');
    this.binaryAuthorization =
        registerOutput<BinaryAuthorizationResponse2>('binaryAuthorization');
    this.clusterIpv4Cidr = registerOutput<String>('clusterIpv4Cidr');
    this.clusterTelemetry =
        registerOutput<ClusterTelemetryResponse>('clusterTelemetry');
    this.conditions =
        registerOutput<List<StatusConditionResponse2>>('conditions');
    this.confidentialNodes =
        registerOutput<ConfidentialNodesResponse2>('confidentialNodes');
    this.costManagementConfig =
        registerOutput<CostManagementConfigResponse2>('costManagementConfig');
    this.createTime = registerOutput<String>('createTime');
    this.currentMasterVersion = registerOutput<String>('currentMasterVersion');
    this.currentNodeCount = registerOutput<int>('currentNodeCount');
    this.currentNodeVersion = registerOutput<String>('currentNodeVersion');
    this.databaseEncryption =
        registerOutput<DatabaseEncryptionResponse2>('databaseEncryption');
    this.defaultMaxPodsConstraint =
        registerOutput<MaxPodsConstraintResponse2>('defaultMaxPodsConstraint');
    this.description = registerOutput<String>('description');
    this.enableK8sBetaApis =
        registerOutput<K8sBetaAPIConfigResponse2>('enableK8sBetaApis');
    this.enableKubernetesAlpha = registerOutput<bool>('enableKubernetesAlpha');
    this.enableTpu = registerOutput<bool>('enableTpu');
    this.endpoint = registerOutput<String>('endpoint');
    this.enterpriseConfig =
        registerOutput<EnterpriseConfigResponse2>('enterpriseConfig');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.fleet = registerOutput<FleetResponse2>('fleet');
    this.identityServiceConfig =
        registerOutput<IdentityServiceConfigResponse2>('identityServiceConfig');
    this.initialClusterVersion =
        registerOutput<String>('initialClusterVersion');
    this.initialNodeCount = registerOutput<int>('initialNodeCount');
    this.instanceGroupUrls = registerOutput<List<String>>('instanceGroupUrls');
    this.ipAllocationPolicy =
        registerOutput<IPAllocationPolicyResponse4>('ipAllocationPolicy');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.legacyAbac = registerOutput<LegacyAbacResponse2>('legacyAbac');
    this.location = registerOutput<String>('location');
    this.locations = registerOutput<List<String>>('locations');
    this.loggingConfig =
        registerOutput<LoggingConfigResponse2>('loggingConfig');
    this.loggingService = registerOutput<String>('loggingService');
    this.maintenancePolicy =
        registerOutput<MaintenancePolicyResponse2>('maintenancePolicy');
    this.master = registerOutput<Map<String, dynamic>>('master');
    this.masterAuth = registerOutput<MasterAuthResponse2>('masterAuth');
    this.masterAuthorizedNetworksConfig =
        registerOutput<MasterAuthorizedNetworksConfigResponse4>(
            'masterAuthorizedNetworksConfig');
    this.masterIpv4CidrBlock = registerOutput<String>('masterIpv4CidrBlock');
    this.meshCertificates =
        registerOutput<MeshCertificatesResponse2>('meshCertificates');
    this.monitoringConfig =
        registerOutput<MonitoringConfigResponse2>('monitoringConfig');
    this.monitoringService = registerOutput<String>('monitoringService');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkConfig =
        registerOutput<NetworkConfigResponse10>('networkConfig');
    this.networkPolicy =
        registerOutput<NetworkPolicyResponse3>('networkPolicy');
    this.nodeConfig = registerOutput<NodeConfigResponse5>('nodeConfig');
    this.nodeIpv4CidrSize = registerOutput<int>('nodeIpv4CidrSize');
    this.nodePoolAutoConfig =
        registerOutput<NodePoolAutoConfigResponse2>('nodePoolAutoConfig');
    this.nodePoolDefaults =
        registerOutput<NodePoolDefaultsResponse2>('nodePoolDefaults');
    this.nodePools = registerOutput<List<NodePoolResponse2>>('nodePools');
    this.notificationConfig =
        registerOutput<NotificationConfigResponse2>('notificationConfig');
    this.parentProductConfig =
        registerOutput<ParentProductConfigResponse2>('parentProductConfig');
    this.podSecurityPolicyConfig =
        registerOutput<PodSecurityPolicyConfigResponse>(
            'podSecurityPolicyConfig');
    this.privateCluster = registerOutput<bool>('privateCluster');
    this.privateClusterConfig =
        registerOutput<PrivateClusterConfigResponse4>('privateClusterConfig');
    this.project = registerOutput<String>('project');
    this.protectConfig = registerOutput<ProtectConfigResponse>('protectConfig');
    this.releaseChannel =
        registerOutput<ReleaseChannelResponse2>('releaseChannel');
    this.resourceLabels = registerOutput<Map<String, String>>('resourceLabels');
    this.resourceUsageExportConfig =
        registerOutput<ResourceUsageExportConfigResponse2>(
            'resourceUsageExportConfig');
    this.securityPostureConfig =
        registerOutput<SecurityPostureConfigResponse2>('securityPostureConfig');
    this.selfLink = registerOutput<String>('selfLink');
    this.servicesIpv4Cidr = registerOutput<String>('servicesIpv4Cidr');
    this.shieldedNodes =
        registerOutput<ShieldedNodesResponse2>('shieldedNodes');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.tpuConfig = registerOutput<TpuConfigResponse>('tpuConfig');
    this.tpuIpv4CidrBlock = registerOutput<String>('tpuIpv4CidrBlock');
    this.verticalPodAutoscaling =
        registerOutput<VerticalPodAutoscalingResponse2>(
            'verticalPodAutoscaling');
    this.workloadAltsConfig =
        registerOutput<WorkloadALTSConfigResponse>('workloadAltsConfig');
    this.workloadCertificates =
        registerOutput<WorkloadCertificatesResponse>('workloadCertificates');
    this.workloadIdentityConfig =
        registerOutput<WorkloadIdentityConfigResponse2>(
            'workloadIdentityConfig');
    this.zone = registerOutput<String>('zone');
  }
}
