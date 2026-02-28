// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config_response_container_v1beta1.dart';
import 'authenticator_groups_config_response_container_v1beta1.dart';
import 'autopilot_response_container_v1beta1.dart';
import 'binary_authorization_response_container_v1beta1.dart';
import 'cluster_autoscaling_response_container_v1beta1.dart';
import 'cluster_telemetry_response.dart';
import 'confidential_nodes_response_container_v1beta1.dart';
import 'cost_management_config_response_container_v1beta1.dart';
import 'database_encryption_response_container_v1beta1.dart';
import 'enterprise_config_response_container_v1beta1.dart';
import 'fleet_response_container_v1beta1.dart';
import 'identity_service_config_response_container_v1beta1.dart';
import 'ipallocation_policy_response_container_v1beta1.dart';
import 'k8s_beta_apiconfig_response_container_v1beta1.dart';
import 'legacy_abac_response_container_v1beta1.dart';
import 'logging_config_response_container_v1beta1.dart';
import 'maintenance_policy_response_container_v1beta1.dart';
import 'master_auth_response_container_v1beta1.dart';
import 'master_authorized_networks_config_response_container_v1beta1.dart';
import 'max_pods_constraint_response_container_v1beta1.dart';
import 'mesh_certificates_response_container_v1beta1.dart';
import 'monitoring_config_response_container_v1beta1.dart';
import 'network_config_response_container_v1beta1.dart';
import 'network_policy_response_container_v1beta1.dart';
import 'node_config_response_container_v1beta1.dart';
import 'node_pool_auto_config_response_container_v1beta1.dart';
import 'node_pool_defaults_response_container_v1beta1.dart';
import 'node_pool_response_container_v1beta1.dart';
import 'notification_config_response_container_v1beta1.dart';
import 'parent_product_config_response_container_v1beta1.dart';
import 'pod_security_policy_config_response.dart';
import 'private_cluster_config_response_container_v1beta1.dart';
import 'protect_config_response.dart';
import 'release_channel_response_container_v1beta1.dart';
import 'resource_usage_export_config_response_container_v1beta1.dart';
import 'security_posture_config_response_container_v1beta1.dart';
import 'shielded_nodes_response_container_v1beta1.dart';
import 'status_condition_response_container_v1beta1.dart';
import 'tpu_config_response.dart';
import 'vertical_pod_autoscaling_response_container_v1beta1.dart';
import 'workload_altsconfig_response.dart';
import 'workload_certificates_response.dart';
import 'workload_identity_config_response_container_v1beta1.dart';

/// Result data returned by getCluster.
class GetClusterContainerV1beta1Result {
  /// Configurations for the various addons available to run in the cluster.
  final AddonsConfigResponseContainerV1beta1 addonsConfig;

  /// Configuration controlling RBAC group membership information.
  final AuthenticatorGroupsConfigResponseContainerV1beta1
      authenticatorGroupsConfig;

  /// Autopilot configuration for the cluster.
  final AutopilotResponseContainerV1beta1 autopilot;

  /// Cluster-level autoscaling configuration.
  final ClusterAutoscalingResponseContainerV1beta1 autoscaling;

  /// Configuration for Binary Authorization.
  final BinaryAuthorizationResponseContainerV1beta1 binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  final String clusterIpv4Cidr;

  /// Telemetry integration for the cluster.
  final ClusterTelemetryResponse clusterTelemetry;

  /// Which conditions caused the current cluster state.
  final List<StatusConditionResponseContainerV1beta1> conditions;

  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  final ConfidentialNodesResponseContainerV1beta1 confidentialNodes;

  /// Configuration for the fine-grained cost management feature.
  final CostManagementConfigResponseContainerV1beta1 costManagementConfig;

  /// [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String createTime;

  /// [Output only] The current software version of the master endpoint.
  final String currentMasterVersion;

  /// [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  final int currentNodeCount;

  /// [Output only] Deprecated, use [NodePool.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  final String currentNodeVersion;

  /// Configuration of etcd encryption.
  final DatabaseEncryptionResponseContainerV1beta1 databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  final MaxPodsConstraintResponseContainerV1beta1 defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  final String description;

  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis.
  final K8sBetaAPIConfigResponseContainerV1beta1 enableK8sBetaApis;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1beta1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  final bool enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster. This field is deprecated, use tpu_config.enabled instead.
  final bool enableTpu;

  /// [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  final String endpoint;

  /// GKE Enterprise Configuration.
  final EnterpriseConfigResponseContainerV1beta1 enterpriseConfig;

  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String expireTime;

  /// Fleet information for the cluster.
  final FleetResponseContainerV1beta1 fleet;

  /// Configuration for Identity Service component.
  final IdentityServiceConfigResponseContainerV1beta1 identityServiceConfig;

  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  final String initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  final int initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  final List<String> instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  final IPAllocationPolicyResponseContainerV1beta1 ipAllocationPolicy;

  /// The fingerprint of the set of labels for this cluster.
  final String labelFingerprint;

  /// Configuration for the legacy ABAC authorization mode.
  final LegacyAbacResponseContainerV1beta1 legacyAbac;

  /// [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) or [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) in which the cluster resides.
  final String location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  final List<String> locations;

  /// Logging configuration for the cluster.
  final LoggingConfigResponseContainerV1beta1 loggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final String loggingService;

  /// Configure the maintenance policy for this cluster.
  final MaintenancePolicyResponseContainerV1beta1 maintenancePolicy;

  /// Configuration for master components.
  final Map<String, dynamic> master;

  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  final MasterAuthResponseContainerV1beta1 masterAuth;

  /// The configuration options for master authorized networks feature.
  final MasterAuthorizedNetworksConfigResponseContainerV1beta1
      masterAuthorizedNetworksConfig;

  /// The IP prefix in CIDR notation to use for the hosted master network. This prefix will be used for assigning private IP addresses to the master or set of masters, as well as the ILB VIP. This field is deprecated, use private_cluster_config.master_ipv4_cidr_block instead.
  final String masterIpv4CidrBlock;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final MeshCertificatesResponseContainerV1beta1 meshCertificates;

  /// Monitoring configuration for the cluster.
  final MonitoringConfigResponseContainerV1beta1 monitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final String monitoringService;

  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  final String name;

  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used. On output this shows the network ID instead of the name.
  final String network;

  /// Configuration for cluster networking.
  final NetworkConfigResponseContainerV1beta1 networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  final NetworkPolicyResponseContainerV1beta1 networkPolicy;

  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  final NodeConfigResponseContainerV1beta1 nodeConfig;

  /// [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  final int nodeIpv4CidrSize;

  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final NodePoolAutoConfigResponseContainerV1beta1 nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  final NodePoolDefaultsResponseContainerV1beta1 nodePoolDefaults;

  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  final List<NodePoolResponseContainerV1beta1> nodePools;

  /// Notification configuration of the cluster.
  final NotificationConfigResponseContainerV1beta1 notificationConfig;

  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  final ParentProductConfigResponseContainerV1beta1 parentProductConfig;

  /// Configuration for the PodSecurityPolicy feature.
  final PodSecurityPolicyConfigResponse podSecurityPolicyConfig;

  /// If this is a private cluster setup. Private clusters are clusters that, by default have no external IP addresses on the nodes and where nodes and the master communicate over private IP addresses. This field is deprecated, use private_cluster_config.enable_private_nodes instead.
  final bool privateCluster;

  /// Configuration for private cluster.
  final PrivateClusterConfigResponseContainerV1beta1 privateClusterConfig;

  /// Deprecated: Use SecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  final ProtectConfigResponse protectConfig;

  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  final ReleaseChannelResponseContainerV1beta1 releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  final Map<String, String> resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is disabled when this config unspecified.
  final ResourceUsageExportConfigResponseContainerV1beta1
      resourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  final SecurityPostureConfigResponseContainerV1beta1 securityPostureConfig;

  /// [Output only] Server-defined URL for the resource.
  final String selfLink;

  /// [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  final String servicesIpv4Cidr;

  /// Shielded Nodes configuration.
  final ShieldedNodesResponseContainerV1beta1 shieldedNodes;

  /// [Output only] The current status of this cluster.
  final String status;

  /// [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  final String statusMessage;

  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected. On output this shows the subnetwork ID instead of the name.
  final String subnetwork;

  /// Configuration for Cloud TPU support;
  final TpuConfigResponse tpuConfig;

  /// [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  final String tpuIpv4CidrBlock;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  final VerticalPodAutoscalingResponseContainerV1beta1 verticalPodAutoscaling;

  /// Configuration for direct-path (via ALTS) with workload identity.
  final WorkloadALTSConfigResponse workloadAltsConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final WorkloadCertificatesResponse workloadCertificates;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  final WorkloadIdentityConfigResponseContainerV1beta1 workloadIdentityConfig;

  /// [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  final String zone;

  /// Creates a new [GetClusterContainerV1beta1Result].
  /// [addonsConfig] Configurations for the various addons available to run in the cluster.
  /// [authenticatorGroupsConfig] Configuration controlling RBAC group membership information.
  /// [autopilot] Autopilot configuration for the cluster.
  /// [autoscaling] Cluster-level autoscaling configuration.
  /// [binaryAuthorization] Configuration for Binary Authorization.
  /// [clusterIpv4Cidr] The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  /// [clusterTelemetry] Telemetry integration for the cluster.
  /// [conditions] Which conditions caused the current cluster state.
  /// [confidentialNodes] Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  /// [costManagementConfig] Configuration for the fine-grained cost management feature.
  /// [createTime] [Output only] The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [currentMasterVersion] [Output only] The current software version of the master endpoint.
  /// [currentNodeCount] [Output only] The number of nodes currently in the cluster. Deprecated. Call Kubernetes API directly to retrieve node information.
  /// [currentNodeVersion] [Output only] Deprecated, use [NodePool.version](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters.nodePools) instead. The current version of the node software components. If they are currently at multiple versions because they're in the process of being upgraded, this reflects the minimum version of all nodes.
  /// [databaseEncryption] Configuration of etcd encryption.
  /// [defaultMaxPodsConstraint] The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  /// [description] An optional description of this cluster.
  /// [enableK8sBetaApis] Kubernetes open source beta apis enabled on the cluster. Only beta apis.
  /// [enableKubernetesAlpha] Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1beta1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  /// [enableTpu] Enable the ability to use Cloud TPUs in this cluster. This field is deprecated, use tpu_config.enabled instead.
  /// [endpoint] [Output only] The IP address of this cluster's master endpoint. The endpoint can be accessed from the internet at `https://username:password@endpoint/`. See the `masterAuth` property of this resource for username and password information.
  /// [enterpriseConfig] GKE Enterprise Configuration.
  /// [etag] This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  /// [expireTime] [Output only] The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [fleet] Fleet information for the cluster.
  /// [identityServiceConfig] Configuration for Identity Service component.
  /// [initialClusterVersion] The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  /// [initialNodeCount] The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  /// [instanceGroupUrls] Deprecated. Use node_pools.instance_group_urls.
  /// [ipAllocationPolicy] Configuration for cluster IP allocation.
  /// [labelFingerprint] The fingerprint of the set of labels for this cluster.
  /// [legacyAbac] Configuration for the legacy ABAC authorization mode.
  /// [location] [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) or [region](https://cloud.google.com/compute/docs/regions-zones/regions-zones#available) in which the cluster resides.
  /// [locations] The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  /// [loggingConfig] Logging configuration for the cluster.
  /// [loggingService] The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  /// [maintenancePolicy] Configure the maintenance policy for this cluster.
  /// [master] Configuration for master components.
  /// [masterAuth] The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  /// [masterAuthorizedNetworksConfig] The configuration options for master authorized networks feature.
  /// [masterIpv4CidrBlock] The IP prefix in CIDR notation to use for the hosted master network. This prefix will be used for assigning private IP addresses to the master or set of masters, as well as the ILB VIP. This field is deprecated, use private_cluster_config.master_ipv4_cidr_block instead.
  /// [meshCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [monitoringConfig] Monitoring configuration for the cluster.
  /// [monitoringService] The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  /// [name] The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  /// [network] The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used. On output this shows the network ID instead of the name.
  /// [networkConfig] Configuration for cluster networking.
  /// [networkPolicy] Configuration options for the NetworkPolicy feature.
  /// [nodeConfig] Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  /// [nodeIpv4CidrSize] [Output only] The size of the address space on each node for hosting containers. This is provisioned from within the `container_ipv4_cidr` range. This field will only be set when cluster is in route-based network mode.
  /// [nodePoolAutoConfig] Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [nodePoolDefaults] Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  /// [nodePools] The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  /// [notificationConfig] Notification configuration of the cluster.
  /// [parentProductConfig] The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  /// [podSecurityPolicyConfig] Configuration for the PodSecurityPolicy feature.
  /// [privateCluster] If this is a private cluster setup. Private clusters are clusters that, by default have no external IP addresses on the nodes and where nodes and the master communicate over private IP addresses. This field is deprecated, use private_cluster_config.enable_private_nodes instead.
  /// [privateClusterConfig] Configuration for private cluster.
  /// [protectConfig] Deprecated: Use SecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  /// [releaseChannel] Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  /// [resourceLabels] The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  /// [resourceUsageExportConfig] Configuration for exporting resource usages. Resource usage export is disabled when this config unspecified.
  /// [securityPostureConfig] Enable/Disable Security Posture API features for the cluster.
  /// [selfLink] [Output only] Server-defined URL for the resource.
  /// [servicesIpv4Cidr] [Output only] The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last `/16` from the container CIDR.
  /// [shieldedNodes] Shielded Nodes configuration.
  /// [status] [Output only] The current status of this cluster.
  /// [statusMessage] [Output only] Deprecated. Use conditions instead. Additional information about the current status of this cluster, if available.
  /// [subnetwork] The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected. On output this shows the subnetwork ID instead of the name.
  /// [tpuConfig] Configuration for Cloud TPU support;
  /// [tpuIpv4CidrBlock] [Output only] The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `1.2.3.4/29`).
  /// [verticalPodAutoscaling] Cluster-level Vertical Pod Autoscaling configuration.
  /// [workloadAltsConfig] Configuration for direct-path (via ALTS) with workload identity.
  /// [workloadCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [workloadIdentityConfig] Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  /// [zone] [Output only] The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field is deprecated, use location instead.
  GetClusterContainerV1beta1Result({
    required this.addonsConfig,
    required this.authenticatorGroupsConfig,
    required this.autopilot,
    required this.autoscaling,
    required this.binaryAuthorization,
    required this.clusterIpv4Cidr,
    required this.clusterTelemetry,
    required this.conditions,
    required this.confidentialNodes,
    required this.costManagementConfig,
    required this.createTime,
    required this.currentMasterVersion,
    required this.currentNodeCount,
    required this.currentNodeVersion,
    required this.databaseEncryption,
    required this.defaultMaxPodsConstraint,
    required this.description,
    required this.enableK8sBetaApis,
    required this.enableKubernetesAlpha,
    required this.enableTpu,
    required this.endpoint,
    required this.enterpriseConfig,
    required this.etag,
    required this.expireTime,
    required this.fleet,
    required this.identityServiceConfig,
    required this.initialClusterVersion,
    required this.initialNodeCount,
    required this.instanceGroupUrls,
    required this.ipAllocationPolicy,
    required this.labelFingerprint,
    required this.legacyAbac,
    required this.location,
    required this.locations,
    required this.loggingConfig,
    required this.loggingService,
    required this.maintenancePolicy,
    required this.master,
    required this.masterAuth,
    required this.masterAuthorizedNetworksConfig,
    required this.masterIpv4CidrBlock,
    required this.meshCertificates,
    required this.monitoringConfig,
    required this.monitoringService,
    required this.name,
    required this.network,
    required this.networkConfig,
    required this.networkPolicy,
    required this.nodeConfig,
    required this.nodeIpv4CidrSize,
    required this.nodePoolAutoConfig,
    required this.nodePoolDefaults,
    required this.nodePools,
    required this.notificationConfig,
    required this.parentProductConfig,
    required this.podSecurityPolicyConfig,
    required this.privateCluster,
    required this.privateClusterConfig,
    required this.protectConfig,
    required this.releaseChannel,
    required this.resourceLabels,
    required this.resourceUsageExportConfig,
    required this.securityPostureConfig,
    required this.selfLink,
    required this.servicesIpv4Cidr,
    required this.shieldedNodes,
    required this.status,
    required this.statusMessage,
    required this.subnetwork,
    required this.tpuConfig,
    required this.tpuIpv4CidrBlock,
    required this.verticalPodAutoscaling,
    required this.workloadAltsConfig,
    required this.workloadCertificates,
    required this.workloadIdentityConfig,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addonsConfig'] = addonsConfig.toMap();
    map['authenticatorGroupsConfig'] = authenticatorGroupsConfig.toMap();
    map['autopilot'] = autopilot.toMap();
    map['autoscaling'] = autoscaling.toMap();
    map['binaryAuthorization'] = binaryAuthorization.toMap();
    map['clusterIpv4Cidr'] = clusterIpv4Cidr;
    map['clusterTelemetry'] = clusterTelemetry.toMap();
    map['conditions'] = pulumi.Input.encodeList<
        StatusConditionResponseContainerV1beta1,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    map['confidentialNodes'] = confidentialNodes.toMap();
    map['costManagementConfig'] = costManagementConfig.toMap();
    map['createTime'] = createTime;
    map['currentMasterVersion'] = currentMasterVersion;
    map['currentNodeCount'] = currentNodeCount;
    map['currentNodeVersion'] = currentNodeVersion;
    map['databaseEncryption'] = databaseEncryption.toMap();
    map['defaultMaxPodsConstraint'] = defaultMaxPodsConstraint.toMap();
    map['description'] = description;
    map['enableK8sBetaApis'] = enableK8sBetaApis.toMap();
    map['enableKubernetesAlpha'] = enableKubernetesAlpha;
    map['enableTpu'] = enableTpu;
    map['endpoint'] = endpoint;
    map['enterpriseConfig'] = enterpriseConfig.toMap();
    map['etag'] = etag;
    map['expireTime'] = expireTime;
    map['fleet'] = fleet.toMap();
    map['identityServiceConfig'] = identityServiceConfig.toMap();
    map['initialClusterVersion'] = initialClusterVersion;
    map['initialNodeCount'] = initialNodeCount;
    map['instanceGroupUrls'] = instanceGroupUrls;
    map['ipAllocationPolicy'] = ipAllocationPolicy.toMap();
    map['labelFingerprint'] = labelFingerprint;
    map['legacyAbac'] = legacyAbac.toMap();
    map['location'] = location;
    map['locations'] = locations;
    map['loggingConfig'] = loggingConfig.toMap();
    map['loggingService'] = loggingService;
    map['maintenancePolicy'] = maintenancePolicy.toMap();
    map['master'] = master;
    map['masterAuth'] = masterAuth.toMap();
    map['masterAuthorizedNetworksConfig'] =
        masterAuthorizedNetworksConfig.toMap();
    map['masterIpv4CidrBlock'] = masterIpv4CidrBlock;
    map['meshCertificates'] = meshCertificates.toMap();
    map['monitoringConfig'] = monitoringConfig.toMap();
    map['monitoringService'] = monitoringService;
    map['name'] = name;
    map['network'] = network;
    map['networkConfig'] = networkConfig.toMap();
    map['networkPolicy'] = networkPolicy.toMap();
    map['nodeConfig'] = nodeConfig.toMap();
    map['nodeIpv4CidrSize'] = nodeIpv4CidrSize;
    map['nodePoolAutoConfig'] = nodePoolAutoConfig.toMap();
    map['nodePoolDefaults'] = nodePoolDefaults.toMap();
    map['nodePools'] = pulumi.Input.encodeList<NodePoolResponseContainerV1beta1,
        Map<String, dynamic>>(nodePools, (value) => value.toMap());
    map['notificationConfig'] = notificationConfig.toMap();
    map['parentProductConfig'] = parentProductConfig.toMap();
    map['podSecurityPolicyConfig'] = podSecurityPolicyConfig.toMap();
    map['privateCluster'] = privateCluster;
    map['privateClusterConfig'] = privateClusterConfig.toMap();
    map['protectConfig'] = protectConfig.toMap();
    map['releaseChannel'] = releaseChannel.toMap();
    map['resourceLabels'] = resourceLabels;
    map['resourceUsageExportConfig'] = resourceUsageExportConfig.toMap();
    map['securityPostureConfig'] = securityPostureConfig.toMap();
    map['selfLink'] = selfLink;
    map['servicesIpv4Cidr'] = servicesIpv4Cidr;
    map['shieldedNodes'] = shieldedNodes.toMap();
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    map['subnetwork'] = subnetwork;
    map['tpuConfig'] = tpuConfig.toMap();
    map['tpuIpv4CidrBlock'] = tpuIpv4CidrBlock;
    map['verticalPodAutoscaling'] = verticalPodAutoscaling.toMap();
    map['workloadAltsConfig'] = workloadAltsConfig.toMap();
    map['workloadCertificates'] = workloadCertificates.toMap();
    map['workloadIdentityConfig'] = workloadIdentityConfig.toMap();
    map['zone'] = zone;
    return map;
  }

  factory GetClusterContainerV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetClusterContainerV1beta1Result(
      addonsConfig: AddonsConfigResponseContainerV1beta1.fromMap(
          (map['addonsConfig'] as Map).cast<String, dynamic>()),
      authenticatorGroupsConfig:
          AuthenticatorGroupsConfigResponseContainerV1beta1.fromMap(
              (map['authenticatorGroupsConfig'] as Map)
                  .cast<String, dynamic>()),
      autopilot: AutopilotResponseContainerV1beta1.fromMap(
          (map['autopilot'] as Map).cast<String, dynamic>()),
      autoscaling: ClusterAutoscalingResponseContainerV1beta1.fromMap(
          (map['autoscaling'] as Map).cast<String, dynamic>()),
      binaryAuthorization: BinaryAuthorizationResponseContainerV1beta1.fromMap(
          (map['binaryAuthorization'] as Map).cast<String, dynamic>()),
      clusterIpv4Cidr: map['clusterIpv4Cidr'] as String,
      clusterTelemetry: ClusterTelemetryResponse.fromMap(
          (map['clusterTelemetry'] as Map).cast<String, dynamic>()),
      conditions:
          pulumi.Input.decodeList<StatusConditionResponseContainerV1beta1>(
              map['conditions'],
              (value) => StatusConditionResponseContainerV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      confidentialNodes: ConfidentialNodesResponseContainerV1beta1.fromMap(
          (map['confidentialNodes'] as Map).cast<String, dynamic>()),
      costManagementConfig:
          CostManagementConfigResponseContainerV1beta1.fromMap(
              (map['costManagementConfig'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      currentMasterVersion: map['currentMasterVersion'] as String,
      currentNodeCount: map['currentNodeCount'] as int,
      currentNodeVersion: map['currentNodeVersion'] as String,
      databaseEncryption: DatabaseEncryptionResponseContainerV1beta1.fromMap(
          (map['databaseEncryption'] as Map).cast<String, dynamic>()),
      defaultMaxPodsConstraint:
          MaxPodsConstraintResponseContainerV1beta1.fromMap(
              (map['defaultMaxPodsConstraint'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      enableK8sBetaApis: K8sBetaAPIConfigResponseContainerV1beta1.fromMap(
          (map['enableK8sBetaApis'] as Map).cast<String, dynamic>()),
      enableKubernetesAlpha: map['enableKubernetesAlpha'] as bool,
      enableTpu: map['enableTpu'] as bool,
      endpoint: map['endpoint'] as String,
      enterpriseConfig: EnterpriseConfigResponseContainerV1beta1.fromMap(
          (map['enterpriseConfig'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      fleet: FleetResponseContainerV1beta1.fromMap(
          (map['fleet'] as Map).cast<String, dynamic>()),
      identityServiceConfig:
          IdentityServiceConfigResponseContainerV1beta1.fromMap(
              (map['identityServiceConfig'] as Map).cast<String, dynamic>()),
      initialClusterVersion: map['initialClusterVersion'] as String,
      initialNodeCount: map['initialNodeCount'] as int,
      instanceGroupUrls: (map['instanceGroupUrls'] as List).cast<String>(),
      ipAllocationPolicy: IPAllocationPolicyResponseContainerV1beta1.fromMap(
          (map['ipAllocationPolicy'] as Map).cast<String, dynamic>()),
      labelFingerprint: map['labelFingerprint'] as String,
      legacyAbac: LegacyAbacResponseContainerV1beta1.fromMap(
          (map['legacyAbac'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      locations: (map['locations'] as List).cast<String>(),
      loggingConfig: LoggingConfigResponseContainerV1beta1.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
      loggingService: map['loggingService'] as String,
      maintenancePolicy: MaintenancePolicyResponseContainerV1beta1.fromMap(
          (map['maintenancePolicy'] as Map).cast<String, dynamic>()),
      master: (map['master'] as Map).cast<String, dynamic>(),
      masterAuth: MasterAuthResponseContainerV1beta1.fromMap(
          (map['masterAuth'] as Map).cast<String, dynamic>()),
      masterAuthorizedNetworksConfig:
          MasterAuthorizedNetworksConfigResponseContainerV1beta1.fromMap(
              (map['masterAuthorizedNetworksConfig'] as Map)
                  .cast<String, dynamic>()),
      masterIpv4CidrBlock: map['masterIpv4CidrBlock'] as String,
      meshCertificates: MeshCertificatesResponseContainerV1beta1.fromMap(
          (map['meshCertificates'] as Map).cast<String, dynamic>()),
      monitoringConfig: MonitoringConfigResponseContainerV1beta1.fromMap(
          (map['monitoringConfig'] as Map).cast<String, dynamic>()),
      monitoringService: map['monitoringService'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkConfig: NetworkConfigResponseContainerV1beta1.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      networkPolicy: NetworkPolicyResponseContainerV1beta1.fromMap(
          (map['networkPolicy'] as Map).cast<String, dynamic>()),
      nodeConfig: NodeConfigResponseContainerV1beta1.fromMap(
          (map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeIpv4CidrSize: map['nodeIpv4CidrSize'] as int,
      nodePoolAutoConfig: NodePoolAutoConfigResponseContainerV1beta1.fromMap(
          (map['nodePoolAutoConfig'] as Map).cast<String, dynamic>()),
      nodePoolDefaults: NodePoolDefaultsResponseContainerV1beta1.fromMap(
          (map['nodePoolDefaults'] as Map).cast<String, dynamic>()),
      nodePools: pulumi.Input.decodeList<NodePoolResponseContainerV1beta1>(
          map['nodePools'],
          (value) => NodePoolResponseContainerV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
      notificationConfig: NotificationConfigResponseContainerV1beta1.fromMap(
          (map['notificationConfig'] as Map).cast<String, dynamic>()),
      parentProductConfig: ParentProductConfigResponseContainerV1beta1.fromMap(
          (map['parentProductConfig'] as Map).cast<String, dynamic>()),
      podSecurityPolicyConfig: PodSecurityPolicyConfigResponse.fromMap(
          (map['podSecurityPolicyConfig'] as Map).cast<String, dynamic>()),
      privateCluster: map['privateCluster'] as bool,
      privateClusterConfig:
          PrivateClusterConfigResponseContainerV1beta1.fromMap(
              (map['privateClusterConfig'] as Map).cast<String, dynamic>()),
      protectConfig: ProtectConfigResponse.fromMap(
          (map['protectConfig'] as Map).cast<String, dynamic>()),
      releaseChannel: ReleaseChannelResponseContainerV1beta1.fromMap(
          (map['releaseChannel'] as Map).cast<String, dynamic>()),
      resourceLabels: (map['resourceLabels'] as Map).cast<String, String>(),
      resourceUsageExportConfig:
          ResourceUsageExportConfigResponseContainerV1beta1.fromMap(
              (map['resourceUsageExportConfig'] as Map)
                  .cast<String, dynamic>()),
      securityPostureConfig:
          SecurityPostureConfigResponseContainerV1beta1.fromMap(
              (map['securityPostureConfig'] as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      servicesIpv4Cidr: map['servicesIpv4Cidr'] as String,
      shieldedNodes: ShieldedNodesResponseContainerV1beta1.fromMap(
          (map['shieldedNodes'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      subnetwork: map['subnetwork'] as String,
      tpuConfig: TpuConfigResponse.fromMap(
          (map['tpuConfig'] as Map).cast<String, dynamic>()),
      tpuIpv4CidrBlock: map['tpuIpv4CidrBlock'] as String,
      verticalPodAutoscaling:
          VerticalPodAutoscalingResponseContainerV1beta1.fromMap(
              (map['verticalPodAutoscaling'] as Map).cast<String, dynamic>()),
      workloadAltsConfig: WorkloadALTSConfigResponse.fromMap(
          (map['workloadAltsConfig'] as Map).cast<String, dynamic>()),
      workloadCertificates: WorkloadCertificatesResponse.fromMap(
          (map['workloadCertificates'] as Map).cast<String, dynamic>()),
      workloadIdentityConfig:
          WorkloadIdentityConfigResponseContainerV1beta1.fromMap(
              (map['workloadIdentityConfig'] as Map).cast<String, dynamic>()),
      zone: map['zone'] as String,
    );
  }
}
