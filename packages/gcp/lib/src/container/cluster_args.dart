// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_addons_config.dart';
import 'cluster_anonymous_authentication_config.dart';
import 'cluster_authenticator_groups_config.dart';
import 'cluster_binary_authorization.dart';
import 'cluster_cluster_autoscaling.dart';
import 'cluster_cluster_telemetry.dart';
import 'cluster_confidential_nodes.dart';
import 'cluster_control_plane_endpoints_config.dart';
import 'cluster_cost_management_config.dart';
import 'cluster_database_encryption.dart';
import 'cluster_default_snat_status.dart';
import 'cluster_dns_config.dart';
import 'cluster_enable_k8s_beta_apis.dart';
import 'cluster_enterprise_config.dart';
import 'cluster_fleet.dart';
import 'cluster_gateway_api_config.dart';
import 'cluster_gke_auto_upgrade_config.dart';
import 'cluster_identity_service_config.dart';
import 'cluster_ip_allocation_policy.dart';
import 'cluster_logging_config.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_managed_opentelemetry_config.dart';
import 'cluster_master_auth.dart';
import 'cluster_master_authorized_networks_config.dart';
import 'cluster_mesh_certificates.dart';
import 'cluster_monitoring_config.dart';
import 'cluster_network_performance_config.dart';
import 'cluster_network_policy.dart';
import 'cluster_node_config.dart';
import 'cluster_node_pool.dart';
import 'cluster_node_pool_auto_config.dart';
import 'cluster_node_pool_defaults.dart';
import 'cluster_notification_config.dart';
import 'cluster_pod_autoscaling.dart';
import 'cluster_pod_security_policy_config.dart';
import 'cluster_private_cluster_config.dart';
import 'cluster_protect_config.dart';
import 'cluster_rbac_binding_config.dart';
import 'cluster_release_channel.dart';
import 'cluster_resource_usage_export_config.dart';
import 'cluster_secret_manager_config.dart';
import 'cluster_secret_sync_config.dart';
import 'cluster_security_posture_config.dart';
import 'cluster_service_external_ips_config.dart';
import 'cluster_tpu_config.dart';
import 'cluster_user_managed_keys_config.dart';
import 'cluster_vertical_pod_autoscaling.dart';
import 'cluster_workload_alts_config.dart';
import 'cluster_workload_identity_config.dart';

/// {@template pulumi_container_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_container_cluster_cluster_args_doc}
class ClusterArgs {
  /// The configuration for addons supported by GKE.
  /// Structure is documented below.
  final pulumi.Input<ClusterAddonsConfig>? addonsConfig;
  /// Enable NET_ADMIN for the cluster. Defaults to
  /// `false`. This field should only be enabled for Autopilot clusters (`enable_autopilot`
  /// set to `true`).
  final pulumi.Input<bool>? allowNetAdmin;
  /// Configuration for [anonymous authentication restrictions](https://cloud.google.com/kubernetes-engine/docs/how-to/hardening-your-cluster#restrict-anon-access). Structure is documented below.
  final pulumi.Input<ClusterAnonymousAuthenticationConfig>? anonymousAuthenticationConfig;
  /// Configuration for the
  /// [Google Groups for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control#groups-setup-gsuite) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterAuthenticatorGroupsConfig>? authenticatorGroupsConfig;
  /// Configuration options for the Binary
  /// Authorization feature. Structure is documented below.
  final pulumi.Input<ClusterBinaryAuthorization>? binaryAuthorization;
  /// Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to
  /// automatically adjust the size of the cluster and create/delete node pools based
  /// on the current needs of the cluster's workload. See the
  /// [guide to using Node Auto-Provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// for more details. Structure is documented below.
  final pulumi.Input<ClusterClusterAutoscaling>? clusterAutoscaling;
  /// The IP address range of the Kubernetes pods
  /// in this cluster in CIDR notation (e.g. `10.96.0.0/14`). Leave blank to have one
  /// automatically chosen or specify a `/14` block in `10.0.0.0/8`. This field will
  /// default a new cluster to routes-based, where `ip_allocation_policy` is not defined.
  final pulumi.Input<String>? clusterIpv4Cidr;
  /// Configuration for
  /// [ClusterTelemetry](https://cloud.google.com/monitoring/kubernetes-engine/installing#controlling_the_collection_of_application_logs) feature,
  /// Structure is documented below.
  final pulumi.Input<ClusterClusterTelemetry>? clusterTelemetry;
  /// Configuration for [Confidential Nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/confidential-gke-nodes) feature. Structure is documented below documented below.
  final pulumi.Input<ClusterConfidentialNodes>? confidentialNodes;
  /// Configuration for all of the cluster's control plane endpoints.
  /// Structure is documented below.
  final pulumi.Input<ClusterControlPlaneEndpointsConfig>? controlPlaneEndpointsConfig;
  /// Configuration for the
  /// [Cost Allocation](https://cloud.google.com/kubernetes-engine/docs/how-to/cost-allocations) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterCostManagementConfig>? costManagementConfig;
  /// Structure is documented below.
  final pulumi.Input<ClusterDatabaseEncryption>? databaseEncryption;
  /// The desired datapath provider for this cluster. This is set to `LEGACY_DATAPATH` by default, which uses the IPTables-based kube-proxy implementation. Set to `ADVANCED_DATAPATH` to enable Dataplane v2.
  final pulumi.Input<String>? datapathProvider;
  /// The default maximum number of pods
  /// per node in this cluster. This doesn't work on "routes-based" clusters, clusters
  /// that don't have IP Aliasing enabled. See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  final pulumi.Input<int>? defaultMaxPodsPerNode;
  /// [GKE SNAT](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works) DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster, [API doc](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#networkconfig). Structure is documented below
  final pulumi.Input<ClusterDefaultSnatStatus>? defaultSnatStatus;
  final pulumi.Input<bool>? deletionProtection;
  /// Description of the cluster.
  final pulumi.Input<String>? description;
  /// Disable L4 load balancer VPC firewalls to enable firewall policies.
  final pulumi.Input<bool>? disableL4LbFirewallReconciliation;
  /// Configuration for [Using Cloud DNS for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/cloud-dns). Structure is documented below.
  final pulumi.Input<ClusterDnsConfig>? dnsConfig;
  /// Enable Autopilot for this cluster. Defaults to `false`.
  /// Note that when this option is enabled, certain features of Standard GKE are not available.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison)
  /// for available features.
  final pulumi.Input<bool>? enableAutopilot;
  /// Whether CiliumClusterWideNetworkPolicy is enabled on this cluster. Defaults to false.
  final pulumi.Input<bool>? enableCiliumClusterwideNetworkPolicy;
  /// Whether FQDN Network Policy is enabled on this cluster. Users who enable this feature for existing Standard clusters must restart the GKE Dataplane V2 `anetd` DaemonSet after enabling it. See the [Enable FQDN Network Policy in an existing cluster](https://cloud.google.com/kubernetes-engine/docs/how-to/fqdn-network-policies#enable_fqdn_network_policy_in_an_existing_cluster) for more information.
  final pulumi.Input<bool>? enableFqdnNetworkPolicy;
  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final pulumi.Input<bool>? enableIntranodeVisibility;
  /// Configuration for Kubernetes Beta APIs.
  /// Structure is documented below.
  final pulumi.Input<ClusterEnableK8sBetaApis>? enableK8sBetaApis;
  /// Whether to enable Kubernetes Alpha features for
  /// this cluster. Note that when this option is enabled, the cluster cannot be upgraded
  /// and will be automatically deleted after 30 days.
  final pulumi.Input<bool>? enableKubernetesAlpha;
  /// Whether L4ILB Subsetting is enabled for this cluster.
  final pulumi.Input<bool>? enableL4IlbSubsetting;
  /// Whether the ABAC authorizer is enabled for this cluster.
  /// When enabled, identities in the system, including service accounts, nodes, and controllers,
  /// will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  /// Defaults to `false`
  final pulumi.Input<bool>? enableLegacyAbac;
  /// Whether multi-networking is enabled for this cluster.
  final pulumi.Input<bool>? enableMultiNetworking;
  /// Enable Shielded Nodes features on all nodes in this cluster.  Defaults to `true`.
  final pulumi.Input<bool>? enableShieldedNodes;
  /// Whether to enable Cloud TPU resources in this cluster.
  /// See the [official documentation](https://cloud.google.com/tpu/docs/kubernetes-engine-setup).
  final pulumi.Input<bool>? enableTpu;
  /// (DEPRECATED) Configuration for [Enterprise edition].(https://cloud.google.com/kubernetes-engine/enterprise/docs/concepts/gke-editions). Structure is documented below. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  final pulumi.Input<ClusterEnterpriseConfig>? enterpriseConfig;
  /// Fleet configuration for the cluster. Structure is documented below.
  final pulumi.Input<ClusterFleet>? fleet;
  /// Configuration for [GKE Gateway API controller](https://cloud.google.com/kubernetes-engine/docs/concepts/gateway-api). Structure is documented below.
  final pulumi.Input<ClusterGatewayApiConfig>? gatewayApiConfig;
  /// Configuration options for the auto-upgrade patch type feature, which provide more control over the speed of automatic upgrades of your GKE clusters.
  /// Structure is documented below.
  final pulumi.Input<ClusterGkeAutoUpgradeConfig>? gkeAutoUpgradeConfig;
  /// . Structure is documented below.
  final pulumi.Input<ClusterIdentityServiceConfig>? identityServiceConfig;
  /// Defines the config of in-transit encryption. Valid values are `IN_TRANSIT_ENCRYPTION_DISABLED` and `IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT`.
  final pulumi.Input<String>? inTransitEncryptionConfig;
  /// The number of nodes to create in this
  /// cluster's default node pool. In regional or multi-zonal clusters, this is the
  /// number of nodes per zone. Must be set if `node_pool` is not set. If you're using
  /// `gcp.container.NodePool` objects with no default node pool, you'll need to
  /// set this to a value of at least `1`, alongside setting
  /// `remove_default_node_pool` to `true`.
  final pulumi.Input<int>? initialNodeCount;
  /// Configuration of cluster IP allocation for
  /// VPC-native clusters. If this block is unset during creation, it will be set by the GKE backend.
  /// Structure is documented below.
  final pulumi.Input<ClusterIpAllocationPolicy>? ipAllocationPolicy;
  /// The location (region or zone) in which the cluster
  /// master will be created, as well as the default node location. If you specify a
  /// zone (such as `us-central1-a`), the cluster will be a zonal cluster with a
  /// single cluster master. If you specify a region (such as `us-west1`), the
  /// cluster will be a regional cluster with multiple masters spread across zones in
  /// the region, and with default node locations in those zones as well
  final pulumi.Input<String>? location;
  /// Logging configuration for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterLoggingConfig>? loggingConfig;
  /// The logging service that the cluster should
  /// write logs to. Available options include `logging.googleapis.com`(Legacy Stackdriver),
  /// `logging.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Logging), and `none`. Defaults to `logging.googleapis.com/kubernetes`
  final pulumi.Input<String>? loggingService;
  /// The maintenance policy to use for the cluster. Structure is
  /// documented below.
  final pulumi.Input<ClusterMaintenancePolicy>? maintenancePolicy;
  /// Configuration for the [GKE Managed OpenTelemetry](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/managed-otel-gke) feature. Structure is documented below.
  final pulumi.Input<ClusterManagedOpentelemetryConfig>? managedOpentelemetryConfig;
  /// The authentication information for accessing the
  /// Kubernetes master. Some values in this block are only returned by the API if
  /// your service account has permission to get credentials for your GKE cluster. If
  /// you see an unexpected diff unsetting your client cert, ensure you have the
  /// `container.clusters.getCredentials` permission.
  /// Structure is documented below.
  final pulumi.Input<ClusterMasterAuth>? masterAuth;
  /// The desired
  /// configuration options for master authorized networks. Omit the
  /// nested `cidr_blocks` attribute to disallow external access (except
  /// the cluster node IPs, which GKE automatically whitelists).
  /// Structure is documented below.
  final pulumi.Input<ClusterMasterAuthorizedNetworksConfig>? masterAuthorizedNetworksConfig;
  /// Structure is documented below.
  final pulumi.Input<ClusterMeshCertificates>? meshCertificates;
  /// The minimum version of the master. GKE
  /// will auto-update the master to new versions, so this does not guarantee the
  /// current master version--use the read-only `master_version` field to obtain that.
  /// If unset, the cluster's version will be set by GKE to the version of the most recent
  /// official release (which is not necessarily the latest version).  Most users will find
  /// the `gcp.container.getEngineVersions` data source useful - it indicates which versions
  /// are available. If you intend to specify versions manually,
  /// [the docs](https://cloud.google.com/kubernetes-engine/versioning-and-upgrades#specifying_cluster_version)
  /// describe the various acceptable formats for this field.
  ///
  /// > If you are using the `gcp.container.getEngineVersions` datasource with a regional cluster, ensure that you have provided a `location`
  /// to the datasource. A region can have a different set of supported versions than its corresponding zones, and not all zones in a
  /// region are guaranteed to support the same version.
  final pulumi.Input<String>? minMasterVersion;
  /// Monitoring configuration for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterMonitoringConfig>? monitoringConfig;
  /// The monitoring service that the cluster
  /// should write metrics to.
  /// Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API.
  /// VM metrics will be collected by Google Compute Engine regardless of this setting
  /// Available options include
  /// `monitoring.googleapis.com`(Legacy Stackdriver), `monitoring.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Monitoring), and `none`.
  /// Defaults to `monitoring.googleapis.com/kubernetes`
  final pulumi.Input<String>? monitoringService;
  /// The name of the cluster, unique within the project and
  /// location.
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The name or self_link of the Google Compute Engine
  /// network to which the cluster is connected. For Shared VPC, set this to the self link of the
  /// shared network.
  final pulumi.Input<String>? network;
  /// Network bandwidth tier configuration.
  final pulumi.Input<ClusterNetworkPerformanceConfig>? networkPerformanceConfig;
  /// Configuration options for the
  /// [NetworkPolicy](https://kubernetes.io/docs/concepts/services-networking/networkpolicies/)
  /// feature. Structure is documented below.
  final pulumi.Input<ClusterNetworkPolicy>? networkPolicy;
  /// Determines whether alias IPs or routes will be used for pod IPs in the cluster.
  /// Options are `VPC_NATIVE` or `ROUTES`. `VPC_NATIVE` enables [IP aliasing](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-aliases). Newly created clusters will default to `VPC_NATIVE`.
  final pulumi.Input<String>? networkingMode;
  /// Parameters used in creating the default node pool.
  /// Generally, this field should not be used at the same time as a
  /// `gcp.container.NodePool` or a `node_pool` block; this configuration
  /// manages the default node pool, which isn't recommended to be used.
  /// Structure is documented below.
  final pulumi.Input<ClusterNodeConfig>? nodeConfig;
  /// The list of zones in which the cluster's nodes
  /// are located. Nodes must be in the region of their regional cluster or in the
  /// same region as their cluster's zone for zonal clusters. If this is specified for
  /// a zonal cluster, omit the cluster's zone.
  ///
  /// > A "multi-zonal" cluster is a zonal cluster with at least one additional zone
  /// defined; in a multi-zonal cluster, the cluster master is only present in a
  /// single zone while nodes are present in each of the primary zone and the node
  /// locations. In contrast, in a regional cluster, cluster master nodes are present
  /// in multiple zones in the region. For that reason, regional clusters should be
  /// preferred.
  final pulumi.Input<List<String>>? nodeLocations;
  /// Node pool configs that apply to auto-provisioned node pools in
  /// [autopilot](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison) clusters and
  /// [node auto-provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)-enabled clusters. Structure is documented below.
  final pulumi.Input<ClusterNodePoolAutoConfig>? nodePoolAutoConfig;
  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object. Structure is documented below.
  final pulumi.Input<ClusterNodePoolDefaults>? nodePoolDefaults;
  /// List of node pools associated with this cluster.
  /// See gcp.container.NodePool for schema.
  /// **Warning:** node pools defined inside a cluster can't be changed (or added/removed) after
  /// cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability
  /// to say "these are the _only_ node pools associated with this cluster", use the
  /// gcp.container.NodePool resource instead of this property.
  final pulumi.Input<List<ClusterNodePool>>? nodePools;
  /// The Kubernetes version on the nodes. Must either be unset
  /// or set to the same value as `min_master_version` on create. Defaults to the default
  /// version set by GKE which is not necessarily the latest version. This only affects
  /// nodes in the default node pool. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the `gcp.container.getEngineVersions` data source's
  /// `version_prefix` field to approximate fuzzy versions.
  /// To update nodes in other node pools, use the `version` attribute on the node pool.
  final pulumi.Input<String>? nodeVersion;
  /// Configuration for the [cluster upgrade notifications](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-upgrade-notifications) feature. Structure is documented below.
  final pulumi.Input<ClusterNotificationConfig>? notificationConfig;
  /// Configuration for the
  /// Structure is documented below.
  final pulumi.Input<ClusterPodAutoscaling>? podAutoscaling;
  /// Configuration for the
  /// [PodSecurityPolicy](https://cloud.google.com/kubernetes-engine/docs/how-to/pod-security-policies) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterPodSecurityPolicyConfig>? podSecurityPolicyConfig;
  /// Configuration for [private clusters](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters),
  /// clusters with private nodes. Structure is documented below.
  final pulumi.Input<ClusterPrivateClusterConfig>? privateClusterConfig;
  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4).
  final pulumi.Input<String>? privateIpv6GoogleAccess;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Enable/Disable Protect API features for the cluster. Structure is documented below.
  final pulumi.Input<ClusterProtectConfig>? protectConfig;
  /// RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. Structure is documented below.
  ///
  /// <a name="nested_default_snat_status"></a>The `default_snat_status` block supports
  final pulumi.Input<ClusterRbacBindingConfig>? rbacBindingConfig;
  /// Configuration options for the [Release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels)
  /// feature, which provide more control over automatic upgrades of your GKE clusters.
  /// When updating this field, GKE imposes specific version requirements. See
  /// [Selecting a new release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels#selecting_a_new_release_channel)
  /// for more details; the `gcp.container.getEngineVersions` datasource can provide
  /// the default version for a channel. Note that removing the `release_channel`
  /// field from your config will cause the provider to stop managing your cluster's
  /// release channel, but will not unenroll it. Instead, use the `"UNSPECIFIED"`
  /// channel. Structure is documented below.
  final pulumi.Input<ClusterReleaseChannel>? releaseChannel;
  /// If `true`, deletes the default node
  /// pool upon cluster creation. If you're using `gcp.container.NodePool`
  /// resources with no default node pool, this should be set to `true`, alongside
  /// setting `initial_node_count` to at least `1`.
  final pulumi.Input<bool>? removeDefaultNodePool;
  /// The GCE resource labels (a map of key/value pairs) to be applied to the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? resourceLabels;
  /// Configuration for the
  /// [ResourceUsageExportConfig](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-usage-metering) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterResourceUsageExportConfig>? resourceUsageExportConfig;
  /// Configuration for the
  /// [SecretManagerConfig](https://cloud.google.com/secret-manager/docs/secret-manager-managed-csi-component) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterSecretManagerConfig>? secretManagerConfig;
  /// Configuration for the
  /// [SecretSyncConfig](https://cloud.google.com/secret-manager/docs/sync-k8-secrets) feature.
  /// Structure is documented below.
  final pulumi.Input<ClusterSecretSyncConfig>? secretSyncConfig;
  /// Enable/Disable Security Posture API features for the cluster. Structure is documented below.
  final pulumi.Input<ClusterSecurityPostureConfig>? securityPostureConfig;
  /// Structure is documented below.
  final pulumi.Input<ClusterServiceExternalIpsConfig>? serviceExternalIpsConfig;
  /// The name or self_link of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final pulumi.Input<String>? subnetwork;
  /// TPU configuration for the cluster.
  final pulumi.Input<ClusterTpuConfig>? tpuConfig;
  /// The custom keys configuration of the cluster Structure is documented below.
  final pulumi.Input<ClusterUserManagedKeysConfig>? userManagedKeysConfig;
  /// Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it.
  /// Structure is documented below.
  final pulumi.Input<ClusterVerticalPodAutoscaling>? verticalPodAutoscaling;
  /// Configuration for [direct-path (via ALTS) with workload identity.](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#workloadaltsconfig). Structure is documented below.
  final pulumi.Input<ClusterWorkloadAltsConfig>? workloadAltsConfig;
  /// Workload Identity allows Kubernetes service accounts to act as a user-managed
  /// [Google IAM Service Account](https://cloud.google.com/iam/docs/service-accounts#user-managed_service_accounts).
  /// Structure is documented below.
  final pulumi.Input<ClusterWorkloadIdentityConfig>? workloadIdentityConfig;

  /// Creates a new [ClusterArgs].
  /// [addonsConfig] The configuration for addons supported by GKE.
  /// [allowNetAdmin] Enable NET_ADMIN for the cluster. Defaults to
  /// [anonymousAuthenticationConfig] Configuration for [anonymous authentication restrictions](https://cloud.google.com/kubernetes-engine/docs/how-to/hardening-your-cluster#restrict-anon-access). Structure is documented below.
  /// [authenticatorGroupsConfig] Configuration for the
  /// [binaryAuthorization] Configuration options for the Binary
  /// [clusterAutoscaling] Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to
  /// [clusterIpv4Cidr] The IP address range of the Kubernetes pods
  /// [clusterTelemetry] Configuration for
  /// [confidentialNodes] Configuration for [Confidential Nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/confidential-gke-nodes) feature. Structure is documented below documented below.
  /// [controlPlaneEndpointsConfig] Configuration for all of the cluster's control plane endpoints.
  /// [costManagementConfig] Configuration for the
  /// [databaseEncryption] Structure is documented below.
  /// [datapathProvider] The desired datapath provider for this cluster. This is set to `LEGACY_DATAPATH` by default, which uses the IPTables-based kube-proxy implementation. Set to `ADVANCED_DATAPATH` to enable Dataplane v2.
  /// [defaultMaxPodsPerNode] The default maximum number of pods
  /// [defaultSnatStatus] [GKE SNAT](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works) DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster, [API doc](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#networkconfig). Structure is documented below
  /// [deletionProtection] Optional.
  /// [description] Description of the cluster.
  /// [disableL4LbFirewallReconciliation] Disable L4 load balancer VPC firewalls to enable firewall policies.
  /// [dnsConfig] Configuration for [Using Cloud DNS for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/cloud-dns). Structure is documented below.
  /// [enableAutopilot] Enable Autopilot for this cluster. Defaults to `false`.
  /// [enableCiliumClusterwideNetworkPolicy] Whether CiliumClusterWideNetworkPolicy is enabled on this cluster. Defaults to false.
  /// [enableFqdnNetworkPolicy] Whether FQDN Network Policy is enabled on this cluster. Users who enable this feature for existing Standard clusters must restart the GKE Dataplane V2 `anetd` DaemonSet after enabling it. See the [Enable FQDN Network Policy in an existing cluster](https://cloud.google.com/kubernetes-engine/docs/how-to/fqdn-network-policies#enable_fqdn_network_policy_in_an_existing_cluster) for more information.
  /// [enableIntranodeVisibility] Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  /// [enableK8sBetaApis] Configuration for Kubernetes Beta APIs.
  /// [enableKubernetesAlpha] Whether to enable Kubernetes Alpha features for
  /// [enableL4IlbSubsetting] Whether L4ILB Subsetting is enabled for this cluster.
  /// [enableLegacyAbac] Whether the ABAC authorizer is enabled for this cluster.
  /// [enableMultiNetworking] Whether multi-networking is enabled for this cluster.
  /// [enableShieldedNodes] Enable Shielded Nodes features on all nodes in this cluster.  Defaults to `true`.
  /// [enableTpu] Whether to enable Cloud TPU resources in this cluster.
  /// [enterpriseConfig] (DEPRECATED) Configuration for [Enterprise edition].(https://cloud.google.com/kubernetes-engine/enterprise/docs/concepts/gke-editions). Structure is documented below. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  /// [fleet] Fleet configuration for the cluster. Structure is documented below.
  /// [gatewayApiConfig] Configuration for [GKE Gateway API controller](https://cloud.google.com/kubernetes-engine/docs/concepts/gateway-api). Structure is documented below.
  /// [gkeAutoUpgradeConfig] Configuration options for the auto-upgrade patch type feature, which provide more control over the speed of automatic upgrades of your GKE clusters.
  /// [identityServiceConfig] . Structure is documented below.
  /// [inTransitEncryptionConfig] Defines the config of in-transit encryption. Valid values are `IN_TRANSIT_ENCRYPTION_DISABLED` and `IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT`.
  /// [initialNodeCount] The number of nodes to create in this
  /// [ipAllocationPolicy] Configuration of cluster IP allocation for
  /// [location] The location (region or zone) in which the cluster
  /// [loggingConfig] Logging configuration for the cluster.
  /// [loggingService] The logging service that the cluster should
  /// [maintenancePolicy] The maintenance policy to use for the cluster. Structure is
  /// [managedOpentelemetryConfig] Configuration for the [GKE Managed OpenTelemetry](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/managed-otel-gke) feature. Structure is documented below.
  /// [masterAuth] The authentication information for accessing the
  /// [masterAuthorizedNetworksConfig] The desired
  /// [meshCertificates] Structure is documented below.
  /// [minMasterVersion] The minimum version of the master. GKE
  /// [monitoringConfig] Monitoring configuration for the cluster.
  /// [monitoringService] The monitoring service that the cluster
  /// [name] The name of the cluster, unique within the project and
  /// [network] The name or self_link of the Google Compute Engine
  /// [networkPerformanceConfig] Network bandwidth tier configuration.
  /// [networkPolicy] Configuration options for the
  /// [networkingMode] Determines whether alias IPs or routes will be used for pod IPs in the cluster.
  /// [nodeConfig] Parameters used in creating the default node pool.
  /// [nodeLocations] The list of zones in which the cluster's nodes
  /// [nodePoolAutoConfig] Node pool configs that apply to auto-provisioned node pools in
  /// [nodePoolDefaults] Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object. Structure is documented below.
  /// [nodePools] List of node pools associated with this cluster.
  /// [nodeVersion] The Kubernetes version on the nodes. Must either be unset
  /// [notificationConfig] Configuration for the [cluster upgrade notifications](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-upgrade-notifications) feature. Structure is documented below.
  /// [podAutoscaling] Configuration for the
  /// [podSecurityPolicyConfig] Configuration for the
  /// [privateClusterConfig] Configuration for [private clusters](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters),
  /// [privateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [protectConfig] Enable/Disable Protect API features for the cluster. Structure is documented below.
  /// [rbacBindingConfig] RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. Structure is documented below.
  /// [releaseChannel] Configuration options for the [Release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels)
  /// [removeDefaultNodePool] If `true`, deletes the default node
  /// [resourceLabels] The GCE resource labels (a map of key/value pairs) to be applied to the cluster.
  /// [resourceUsageExportConfig] Configuration for the
  /// [secretManagerConfig] Configuration for the
  /// [secretSyncConfig] Configuration for the
  /// [securityPostureConfig] Enable/Disable Security Posture API features for the cluster. Structure is documented below.
  /// [serviceExternalIpsConfig] Structure is documented below.
  /// [subnetwork] The name or self_link of the Google Compute Engine
  /// [tpuConfig] TPU configuration for the cluster.
  /// [userManagedKeysConfig] The custom keys configuration of the cluster Structure is documented below.
  /// [verticalPodAutoscaling] Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it.
  /// [workloadAltsConfig] Configuration for [direct-path (via ALTS) with workload identity.](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#workloadaltsconfig). Structure is documented below.
  /// [workloadIdentityConfig] Workload Identity allows Kubernetes service accounts to act as a user-managed
  ClusterArgs({
    ClusterAddonsConfig? addonsConfig,
    bool? allowNetAdmin,
    ClusterAnonymousAuthenticationConfig? anonymousAuthenticationConfig,
    ClusterAuthenticatorGroupsConfig? authenticatorGroupsConfig,
    ClusterBinaryAuthorization? binaryAuthorization,
    ClusterClusterAutoscaling? clusterAutoscaling,
    String? clusterIpv4Cidr,
    ClusterClusterTelemetry? clusterTelemetry,
    ClusterConfidentialNodes? confidentialNodes,
    ClusterControlPlaneEndpointsConfig? controlPlaneEndpointsConfig,
    ClusterCostManagementConfig? costManagementConfig,
    ClusterDatabaseEncryption? databaseEncryption,
    String? datapathProvider,
    int? defaultMaxPodsPerNode,
    ClusterDefaultSnatStatus? defaultSnatStatus,
    bool? deletionProtection,
    String? description,
    bool? disableL4LbFirewallReconciliation,
    ClusterDnsConfig? dnsConfig,
    bool? enableAutopilot,
    bool? enableCiliumClusterwideNetworkPolicy,
    bool? enableFqdnNetworkPolicy,
    bool? enableIntranodeVisibility,
    ClusterEnableK8sBetaApis? enableK8sBetaApis,
    bool? enableKubernetesAlpha,
    bool? enableL4IlbSubsetting,
    bool? enableLegacyAbac,
    bool? enableMultiNetworking,
    bool? enableShieldedNodes,
    bool? enableTpu,
    ClusterEnterpriseConfig? enterpriseConfig,
    ClusterFleet? fleet,
    ClusterGatewayApiConfig? gatewayApiConfig,
    ClusterGkeAutoUpgradeConfig? gkeAutoUpgradeConfig,
    ClusterIdentityServiceConfig? identityServiceConfig,
    String? inTransitEncryptionConfig,
    int? initialNodeCount,
    ClusterIpAllocationPolicy? ipAllocationPolicy,
    String? location,
    ClusterLoggingConfig? loggingConfig,
    String? loggingService,
    ClusterMaintenancePolicy? maintenancePolicy,
    ClusterManagedOpentelemetryConfig? managedOpentelemetryConfig,
    ClusterMasterAuth? masterAuth,
    ClusterMasterAuthorizedNetworksConfig? masterAuthorizedNetworksConfig,
    ClusterMeshCertificates? meshCertificates,
    String? minMasterVersion,
    ClusterMonitoringConfig? monitoringConfig,
    String? monitoringService,
    String? name,
    String? network,
    ClusterNetworkPerformanceConfig? networkPerformanceConfig,
    ClusterNetworkPolicy? networkPolicy,
    String? networkingMode,
    ClusterNodeConfig? nodeConfig,
    List<String>? nodeLocations,
    ClusterNodePoolAutoConfig? nodePoolAutoConfig,
    ClusterNodePoolDefaults? nodePoolDefaults,
    List<ClusterNodePool>? nodePools,
    String? nodeVersion,
    ClusterNotificationConfig? notificationConfig,
    ClusterPodAutoscaling? podAutoscaling,
    ClusterPodSecurityPolicyConfig? podSecurityPolicyConfig,
    ClusterPrivateClusterConfig? privateClusterConfig,
    String? privateIpv6GoogleAccess,
    String? project,
    ClusterProtectConfig? protectConfig,
    ClusterRbacBindingConfig? rbacBindingConfig,
    ClusterReleaseChannel? releaseChannel,
    bool? removeDefaultNodePool,
    Map<String, String>? resourceLabels,
    ClusterResourceUsageExportConfig? resourceUsageExportConfig,
    ClusterSecretManagerConfig? secretManagerConfig,
    ClusterSecretSyncConfig? secretSyncConfig,
    ClusterSecurityPostureConfig? securityPostureConfig,
    ClusterServiceExternalIpsConfig? serviceExternalIpsConfig,
    String? subnetwork,
    ClusterTpuConfig? tpuConfig,
    ClusterUserManagedKeysConfig? userManagedKeysConfig,
    ClusterVerticalPodAutoscaling? verticalPodAutoscaling,
    ClusterWorkloadAltsConfig? workloadAltsConfig,
    ClusterWorkloadIdentityConfig? workloadIdentityConfig,
  }) :
      addonsConfig = pulumi.Input.asOptionalInput<ClusterAddonsConfig>(addonsConfig),
      allowNetAdmin = pulumi.Input.asOptionalInput<bool>(allowNetAdmin),
      anonymousAuthenticationConfig = pulumi.Input.asOptionalInput<ClusterAnonymousAuthenticationConfig>(anonymousAuthenticationConfig),
      authenticatorGroupsConfig = pulumi.Input.asOptionalInput<ClusterAuthenticatorGroupsConfig>(authenticatorGroupsConfig),
      binaryAuthorization = pulumi.Input.asOptionalInput<ClusterBinaryAuthorization>(binaryAuthorization),
      clusterAutoscaling = pulumi.Input.asOptionalInput<ClusterClusterAutoscaling>(clusterAutoscaling),
      clusterIpv4Cidr = pulumi.Input.asOptionalInput<String>(clusterIpv4Cidr),
      clusterTelemetry = pulumi.Input.asOptionalInput<ClusterClusterTelemetry>(clusterTelemetry),
      confidentialNodes = pulumi.Input.asOptionalInput<ClusterConfidentialNodes>(confidentialNodes),
      controlPlaneEndpointsConfig = pulumi.Input.asOptionalInput<ClusterControlPlaneEndpointsConfig>(controlPlaneEndpointsConfig),
      costManagementConfig = pulumi.Input.asOptionalInput<ClusterCostManagementConfig>(costManagementConfig),
      databaseEncryption = pulumi.Input.asOptionalInput<ClusterDatabaseEncryption>(databaseEncryption),
      datapathProvider = pulumi.Input.asOptionalInput<String>(datapathProvider),
      defaultMaxPodsPerNode = pulumi.Input.asOptionalInput<int>(defaultMaxPodsPerNode),
      defaultSnatStatus = pulumi.Input.asOptionalInput<ClusterDefaultSnatStatus>(defaultSnatStatus),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableL4LbFirewallReconciliation = pulumi.Input.asOptionalInput<bool>(disableL4LbFirewallReconciliation),
      dnsConfig = pulumi.Input.asOptionalInput<ClusterDnsConfig>(dnsConfig),
      enableAutopilot = pulumi.Input.asOptionalInput<bool>(enableAutopilot),
      enableCiliumClusterwideNetworkPolicy = pulumi.Input.asOptionalInput<bool>(enableCiliumClusterwideNetworkPolicy),
      enableFqdnNetworkPolicy = pulumi.Input.asOptionalInput<bool>(enableFqdnNetworkPolicy),
      enableIntranodeVisibility = pulumi.Input.asOptionalInput<bool>(enableIntranodeVisibility),
      enableK8sBetaApis = pulumi.Input.asOptionalInput<ClusterEnableK8sBetaApis>(enableK8sBetaApis),
      enableKubernetesAlpha = pulumi.Input.asOptionalInput<bool>(enableKubernetesAlpha),
      enableL4IlbSubsetting = pulumi.Input.asOptionalInput<bool>(enableL4IlbSubsetting),
      enableLegacyAbac = pulumi.Input.asOptionalInput<bool>(enableLegacyAbac),
      enableMultiNetworking = pulumi.Input.asOptionalInput<bool>(enableMultiNetworking),
      enableShieldedNodes = pulumi.Input.asOptionalInput<bool>(enableShieldedNodes),
      enableTpu = pulumi.Input.asOptionalInput<bool>(enableTpu),
      enterpriseConfig = pulumi.Input.asOptionalInput<ClusterEnterpriseConfig>(enterpriseConfig),
      fleet = pulumi.Input.asOptionalInput<ClusterFleet>(fleet),
      gatewayApiConfig = pulumi.Input.asOptionalInput<ClusterGatewayApiConfig>(gatewayApiConfig),
      gkeAutoUpgradeConfig = pulumi.Input.asOptionalInput<ClusterGkeAutoUpgradeConfig>(gkeAutoUpgradeConfig),
      identityServiceConfig = pulumi.Input.asOptionalInput<ClusterIdentityServiceConfig>(identityServiceConfig),
      inTransitEncryptionConfig = pulumi.Input.asOptionalInput<String>(inTransitEncryptionConfig),
      initialNodeCount = pulumi.Input.asOptionalInput<int>(initialNodeCount),
      ipAllocationPolicy = pulumi.Input.asOptionalInput<ClusterIpAllocationPolicy>(ipAllocationPolicy),
      location = pulumi.Input.asOptionalInput<String>(location),
      loggingConfig = pulumi.Input.asOptionalInput<ClusterLoggingConfig>(loggingConfig),
      loggingService = pulumi.Input.asOptionalInput<String>(loggingService),
      maintenancePolicy = pulumi.Input.asOptionalInput<ClusterMaintenancePolicy>(maintenancePolicy),
      managedOpentelemetryConfig = pulumi.Input.asOptionalInput<ClusterManagedOpentelemetryConfig>(managedOpentelemetryConfig),
      masterAuth = pulumi.Input.asOptionalInput<ClusterMasterAuth>(masterAuth),
      masterAuthorizedNetworksConfig = pulumi.Input.asOptionalInput<ClusterMasterAuthorizedNetworksConfig>(masterAuthorizedNetworksConfig),
      meshCertificates = pulumi.Input.asOptionalInput<ClusterMeshCertificates>(meshCertificates),
      minMasterVersion = pulumi.Input.asOptionalInput<String>(minMasterVersion),
      monitoringConfig = pulumi.Input.asOptionalInput<ClusterMonitoringConfig>(monitoringConfig),
      monitoringService = pulumi.Input.asOptionalInput<String>(monitoringService),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkPerformanceConfig = pulumi.Input.asOptionalInput<ClusterNetworkPerformanceConfig>(networkPerformanceConfig),
      networkPolicy = pulumi.Input.asOptionalInput<ClusterNetworkPolicy>(networkPolicy),
      networkingMode = pulumi.Input.asOptionalInput<String>(networkingMode),
      nodeConfig = pulumi.Input.asOptionalInput<ClusterNodeConfig>(nodeConfig),
      nodeLocations = pulumi.Input.asOptionalInput<List<String>>(nodeLocations),
      nodePoolAutoConfig = pulumi.Input.asOptionalInput<ClusterNodePoolAutoConfig>(nodePoolAutoConfig),
      nodePoolDefaults = pulumi.Input.asOptionalInput<ClusterNodePoolDefaults>(nodePoolDefaults),
      nodePools = pulumi.Input.asOptionalInput<List<ClusterNodePool>>(nodePools),
      nodeVersion = pulumi.Input.asOptionalInput<String>(nodeVersion),
      notificationConfig = pulumi.Input.asOptionalInput<ClusterNotificationConfig>(notificationConfig),
      podAutoscaling = pulumi.Input.asOptionalInput<ClusterPodAutoscaling>(podAutoscaling),
      podSecurityPolicyConfig = pulumi.Input.asOptionalInput<ClusterPodSecurityPolicyConfig>(podSecurityPolicyConfig),
      privateClusterConfig = pulumi.Input.asOptionalInput<ClusterPrivateClusterConfig>(privateClusterConfig),
      privateIpv6GoogleAccess = pulumi.Input.asOptionalInput<String>(privateIpv6GoogleAccess),
      project = pulumi.Input.asOptionalInput<String>(project),
      protectConfig = pulumi.Input.asOptionalInput<ClusterProtectConfig>(protectConfig),
      rbacBindingConfig = pulumi.Input.asOptionalInput<ClusterRbacBindingConfig>(rbacBindingConfig),
      releaseChannel = pulumi.Input.asOptionalInput<ClusterReleaseChannel>(releaseChannel),
      removeDefaultNodePool = pulumi.Input.asOptionalInput<bool>(removeDefaultNodePool),
      resourceLabels = pulumi.Input.asOptionalInput<Map<String, String>>(resourceLabels),
      resourceUsageExportConfig = pulumi.Input.asOptionalInput<ClusterResourceUsageExportConfig>(resourceUsageExportConfig),
      secretManagerConfig = pulumi.Input.asOptionalInput<ClusterSecretManagerConfig>(secretManagerConfig),
      secretSyncConfig = pulumi.Input.asOptionalInput<ClusterSecretSyncConfig>(secretSyncConfig),
      securityPostureConfig = pulumi.Input.asOptionalInput<ClusterSecurityPostureConfig>(securityPostureConfig),
      serviceExternalIpsConfig = pulumi.Input.asOptionalInput<ClusterServiceExternalIpsConfig>(serviceExternalIpsConfig),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      tpuConfig = pulumi.Input.asOptionalInput<ClusterTpuConfig>(tpuConfig),
      userManagedKeysConfig = pulumi.Input.asOptionalInput<ClusterUserManagedKeysConfig>(userManagedKeysConfig),
      verticalPodAutoscaling = pulumi.Input.asOptionalInput<ClusterVerticalPodAutoscaling>(verticalPodAutoscaling),
      workloadAltsConfig = pulumi.Input.asOptionalInput<ClusterWorkloadAltsConfig>(workloadAltsConfig),
      workloadIdentityConfig = pulumi.Input.asOptionalInput<ClusterWorkloadIdentityConfig>(workloadIdentityConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAddonsConfig, Map<String, dynamic>>(addonsConfig, (value) => value.toMap()),
      'allowNetAdmin': ?allowNetAdmin,
      'anonymousAuthenticationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAnonymousAuthenticationConfig, Map<String, dynamic>>(anonymousAuthenticationConfig, (value) => value.toMap()),
      'authenticatorGroupsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAuthenticatorGroupsConfig, Map<String, dynamic>>(authenticatorGroupsConfig, (value) => value.toMap()),
      'binaryAuthorization': ?pulumi.Input.mapOptionalInputValue<ClusterBinaryAuthorization, Map<String, dynamic>>(binaryAuthorization, (value) => value.toMap()),
      'clusterAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterClusterAutoscaling, Map<String, dynamic>>(clusterAutoscaling, (value) => value.toMap()),
      'clusterIpv4Cidr': ?clusterIpv4Cidr,
      'clusterTelemetry': ?pulumi.Input.mapOptionalInputValue<ClusterClusterTelemetry, Map<String, dynamic>>(clusterTelemetry, (value) => value.toMap()),
      'confidentialNodes': ?pulumi.Input.mapOptionalInputValue<ClusterConfidentialNodes, Map<String, dynamic>>(confidentialNodes, (value) => value.toMap()),
      'controlPlaneEndpointsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterControlPlaneEndpointsConfig, Map<String, dynamic>>(controlPlaneEndpointsConfig, (value) => value.toMap()),
      'costManagementConfig': ?pulumi.Input.mapOptionalInputValue<ClusterCostManagementConfig, Map<String, dynamic>>(costManagementConfig, (value) => value.toMap()),
      'databaseEncryption': ?pulumi.Input.mapOptionalInputValue<ClusterDatabaseEncryption, Map<String, dynamic>>(databaseEncryption, (value) => value.toMap()),
      'datapathProvider': ?datapathProvider,
      'defaultMaxPodsPerNode': ?defaultMaxPodsPerNode,
      'defaultSnatStatus': ?pulumi.Input.mapOptionalInputValue<ClusterDefaultSnatStatus, Map<String, dynamic>>(defaultSnatStatus, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'disableL4LbFirewallReconciliation': ?disableL4LbFirewallReconciliation,
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterDnsConfig, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'enableAutopilot': ?enableAutopilot,
      'enableCiliumClusterwideNetworkPolicy': ?enableCiliumClusterwideNetworkPolicy,
      'enableFqdnNetworkPolicy': ?enableFqdnNetworkPolicy,
      'enableIntranodeVisibility': ?enableIntranodeVisibility,
      'enableK8sBetaApis': ?pulumi.Input.mapOptionalInputValue<ClusterEnableK8sBetaApis, Map<String, dynamic>>(enableK8sBetaApis, (value) => value.toMap()),
      'enableKubernetesAlpha': ?enableKubernetesAlpha,
      'enableL4IlbSubsetting': ?enableL4IlbSubsetting,
      'enableLegacyAbac': ?enableLegacyAbac,
      'enableMultiNetworking': ?enableMultiNetworking,
      'enableShieldedNodes': ?enableShieldedNodes,
      'enableTpu': ?enableTpu,
      'enterpriseConfig': ?pulumi.Input.mapOptionalInputValue<ClusterEnterpriseConfig, Map<String, dynamic>>(enterpriseConfig, (value) => value.toMap()),
      'fleet': ?pulumi.Input.mapOptionalInputValue<ClusterFleet, Map<String, dynamic>>(fleet, (value) => value.toMap()),
      'gatewayApiConfig': ?pulumi.Input.mapOptionalInputValue<ClusterGatewayApiConfig, Map<String, dynamic>>(gatewayApiConfig, (value) => value.toMap()),
      'gkeAutoUpgradeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterGkeAutoUpgradeConfig, Map<String, dynamic>>(gkeAutoUpgradeConfig, (value) => value.toMap()),
      'identityServiceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterIdentityServiceConfig, Map<String, dynamic>>(identityServiceConfig, (value) => value.toMap()),
      'inTransitEncryptionConfig': ?inTransitEncryptionConfig,
      'initialNodeCount': ?initialNodeCount,
      'ipAllocationPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterIpAllocationPolicy, Map<String, dynamic>>(ipAllocationPolicy, (value) => value.toMap()),
      'location': ?location,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'loggingService': ?loggingService,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'managedOpentelemetryConfig': ?pulumi.Input.mapOptionalInputValue<ClusterManagedOpentelemetryConfig, Map<String, dynamic>>(managedOpentelemetryConfig, (value) => value.toMap()),
      'masterAuth': ?pulumi.Input.mapOptionalInputValue<ClusterMasterAuth, Map<String, dynamic>>(masterAuth, (value) => value.toMap()),
      'masterAuthorizedNetworksConfig': ?pulumi.Input.mapOptionalInputValue<ClusterMasterAuthorizedNetworksConfig, Map<String, dynamic>>(masterAuthorizedNetworksConfig, (value) => value.toMap()),
      'meshCertificates': ?pulumi.Input.mapOptionalInputValue<ClusterMeshCertificates, Map<String, dynamic>>(meshCertificates, (value) => value.toMap()),
      'minMasterVersion': ?minMasterVersion,
      'monitoringConfig': ?pulumi.Input.mapOptionalInputValue<ClusterMonitoringConfig, Map<String, dynamic>>(monitoringConfig, (value) => value.toMap()),
      'monitoringService': ?monitoringService,
      'name': ?name,
      'network': ?network,
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPerformanceConfig, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'networkPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkPolicy, Map<String, dynamic>>(networkPolicy, (value) => value.toMap()),
      'networkingMode': ?networkingMode,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeLocations': ?nodeLocations,
      'nodePoolAutoConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolAutoConfig, Map<String, dynamic>>(nodePoolAutoConfig, (value) => value.toMap()),
      'nodePoolDefaults': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolDefaults, Map<String, dynamic>>(nodePoolDefaults, (value) => value.toMap()),
      'nodePools': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePool>, List<Map<String, dynamic>>>(nodePools, (value) => pulumi.Input.encodeList<ClusterNodePool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeVersion': ?nodeVersion,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'podAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterPodAutoscaling, Map<String, dynamic>>(podAutoscaling, (value) => value.toMap()),
      'podSecurityPolicyConfig': ?pulumi.Input.mapOptionalInputValue<ClusterPodSecurityPolicyConfig, Map<String, dynamic>>(podSecurityPolicyConfig, (value) => value.toMap()),
      'privateClusterConfig': ?pulumi.Input.mapOptionalInputValue<ClusterPrivateClusterConfig, Map<String, dynamic>>(privateClusterConfig, (value) => value.toMap()),
      'privateIpv6GoogleAccess': ?privateIpv6GoogleAccess,
      'project': ?project,
      'protectConfig': ?pulumi.Input.mapOptionalInputValue<ClusterProtectConfig, Map<String, dynamic>>(protectConfig, (value) => value.toMap()),
      'rbacBindingConfig': ?pulumi.Input.mapOptionalInputValue<ClusterRbacBindingConfig, Map<String, dynamic>>(rbacBindingConfig, (value) => value.toMap()),
      'releaseChannel': ?pulumi.Input.mapOptionalInputValue<ClusterReleaseChannel, Map<String, dynamic>>(releaseChannel, (value) => value.toMap()),
      'removeDefaultNodePool': ?removeDefaultNodePool,
      'resourceLabels': ?resourceLabels,
      'resourceUsageExportConfig': ?pulumi.Input.mapOptionalInputValue<ClusterResourceUsageExportConfig, Map<String, dynamic>>(resourceUsageExportConfig, (value) => value.toMap()),
      'secretManagerConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecretManagerConfig, Map<String, dynamic>>(secretManagerConfig, (value) => value.toMap()),
      'secretSyncConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecretSyncConfig, Map<String, dynamic>>(secretSyncConfig, (value) => value.toMap()),
      'securityPostureConfig': ?pulumi.Input.mapOptionalInputValue<ClusterSecurityPostureConfig, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
      'serviceExternalIpsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterServiceExternalIpsConfig, Map<String, dynamic>>(serviceExternalIpsConfig, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
      'tpuConfig': ?pulumi.Input.mapOptionalInputValue<ClusterTpuConfig, Map<String, dynamic>>(tpuConfig, (value) => value.toMap()),
      'userManagedKeysConfig': ?pulumi.Input.mapOptionalInputValue<ClusterUserManagedKeysConfig, Map<String, dynamic>>(userManagedKeysConfig, (value) => value.toMap()),
      'verticalPodAutoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterVerticalPodAutoscaling, Map<String, dynamic>>(verticalPodAutoscaling, (value) => value.toMap()),
      'workloadAltsConfig': ?pulumi.Input.mapOptionalInputValue<ClusterWorkloadAltsConfig, Map<String, dynamic>>(workloadAltsConfig, (value) => value.toMap()),
      'workloadIdentityConfig': ?pulumi.Input.mapOptionalInputValue<ClusterWorkloadIdentityConfig, Map<String, dynamic>>(workloadIdentityConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      addonsConfig: map['addonsConfig'] == null ? null : ClusterAddonsConfig.fromMap((map['addonsConfig'] as Map).cast<String, dynamic>()),
      allowNetAdmin: map['allowNetAdmin'] == null ? null : map['allowNetAdmin'] as bool,
      anonymousAuthenticationConfig: map['anonymousAuthenticationConfig'] == null ? null : ClusterAnonymousAuthenticationConfig.fromMap((map['anonymousAuthenticationConfig'] as Map).cast<String, dynamic>()),
      authenticatorGroupsConfig: map['authenticatorGroupsConfig'] == null ? null : ClusterAuthenticatorGroupsConfig.fromMap((map['authenticatorGroupsConfig'] as Map).cast<String, dynamic>()),
      binaryAuthorization: map['binaryAuthorization'] == null ? null : ClusterBinaryAuthorization.fromMap((map['binaryAuthorization'] as Map).cast<String, dynamic>()),
      clusterAutoscaling: map['clusterAutoscaling'] == null ? null : ClusterClusterAutoscaling.fromMap((map['clusterAutoscaling'] as Map).cast<String, dynamic>()),
      clusterIpv4Cidr: map['clusterIpv4Cidr'] == null ? null : map['clusterIpv4Cidr'] as String,
      clusterTelemetry: map['clusterTelemetry'] == null ? null : ClusterClusterTelemetry.fromMap((map['clusterTelemetry'] as Map).cast<String, dynamic>()),
      confidentialNodes: map['confidentialNodes'] == null ? null : ClusterConfidentialNodes.fromMap((map['confidentialNodes'] as Map).cast<String, dynamic>()),
      controlPlaneEndpointsConfig: map['controlPlaneEndpointsConfig'] == null ? null : ClusterControlPlaneEndpointsConfig.fromMap((map['controlPlaneEndpointsConfig'] as Map).cast<String, dynamic>()),
      costManagementConfig: map['costManagementConfig'] == null ? null : ClusterCostManagementConfig.fromMap((map['costManagementConfig'] as Map).cast<String, dynamic>()),
      databaseEncryption: map['databaseEncryption'] == null ? null : ClusterDatabaseEncryption.fromMap((map['databaseEncryption'] as Map).cast<String, dynamic>()),
      datapathProvider: map['datapathProvider'] == null ? null : map['datapathProvider'] as String,
      defaultMaxPodsPerNode: map['defaultMaxPodsPerNode'] == null ? null : map['defaultMaxPodsPerNode'] as int,
      defaultSnatStatus: map['defaultSnatStatus'] == null ? null : ClusterDefaultSnatStatus.fromMap((map['defaultSnatStatus'] as Map).cast<String, dynamic>()),
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      disableL4LbFirewallReconciliation: map['disableL4LbFirewallReconciliation'] == null ? null : map['disableL4LbFirewallReconciliation'] as bool,
      dnsConfig: map['dnsConfig'] == null ? null : ClusterDnsConfig.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>()),
      enableAutopilot: map['enableAutopilot'] == null ? null : map['enableAutopilot'] as bool,
      enableCiliumClusterwideNetworkPolicy: map['enableCiliumClusterwideNetworkPolicy'] == null ? null : map['enableCiliumClusterwideNetworkPolicy'] as bool,
      enableFqdnNetworkPolicy: map['enableFqdnNetworkPolicy'] == null ? null : map['enableFqdnNetworkPolicy'] as bool,
      enableIntranodeVisibility: map['enableIntranodeVisibility'] == null ? null : map['enableIntranodeVisibility'] as bool,
      enableK8sBetaApis: map['enableK8sBetaApis'] == null ? null : ClusterEnableK8sBetaApis.fromMap((map['enableK8sBetaApis'] as Map).cast<String, dynamic>()),
      enableKubernetesAlpha: map['enableKubernetesAlpha'] == null ? null : map['enableKubernetesAlpha'] as bool,
      enableL4IlbSubsetting: map['enableL4IlbSubsetting'] == null ? null : map['enableL4IlbSubsetting'] as bool,
      enableLegacyAbac: map['enableLegacyAbac'] == null ? null : map['enableLegacyAbac'] as bool,
      enableMultiNetworking: map['enableMultiNetworking'] == null ? null : map['enableMultiNetworking'] as bool,
      enableShieldedNodes: map['enableShieldedNodes'] == null ? null : map['enableShieldedNodes'] as bool,
      enableTpu: map['enableTpu'] == null ? null : map['enableTpu'] as bool,
      enterpriseConfig: map['enterpriseConfig'] == null ? null : ClusterEnterpriseConfig.fromMap((map['enterpriseConfig'] as Map).cast<String, dynamic>()),
      fleet: map['fleet'] == null ? null : ClusterFleet.fromMap((map['fleet'] as Map).cast<String, dynamic>()),
      gatewayApiConfig: map['gatewayApiConfig'] == null ? null : ClusterGatewayApiConfig.fromMap((map['gatewayApiConfig'] as Map).cast<String, dynamic>()),
      gkeAutoUpgradeConfig: map['gkeAutoUpgradeConfig'] == null ? null : ClusterGkeAutoUpgradeConfig.fromMap((map['gkeAutoUpgradeConfig'] as Map).cast<String, dynamic>()),
      identityServiceConfig: map['identityServiceConfig'] == null ? null : ClusterIdentityServiceConfig.fromMap((map['identityServiceConfig'] as Map).cast<String, dynamic>()),
      inTransitEncryptionConfig: map['inTransitEncryptionConfig'] == null ? null : map['inTransitEncryptionConfig'] as String,
      initialNodeCount: map['initialNodeCount'] == null ? null : map['initialNodeCount'] as int,
      ipAllocationPolicy: map['ipAllocationPolicy'] == null ? null : ClusterIpAllocationPolicy.fromMap((map['ipAllocationPolicy'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      loggingConfig: map['loggingConfig'] == null ? null : ClusterLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      loggingService: map['loggingService'] == null ? null : map['loggingService'] as String,
      maintenancePolicy: map['maintenancePolicy'] == null ? null : ClusterMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>()),
      managedOpentelemetryConfig: map['managedOpentelemetryConfig'] == null ? null : ClusterManagedOpentelemetryConfig.fromMap((map['managedOpentelemetryConfig'] as Map).cast<String, dynamic>()),
      masterAuth: map['masterAuth'] == null ? null : ClusterMasterAuth.fromMap((map['masterAuth'] as Map).cast<String, dynamic>()),
      masterAuthorizedNetworksConfig: map['masterAuthorizedNetworksConfig'] == null ? null : ClusterMasterAuthorizedNetworksConfig.fromMap((map['masterAuthorizedNetworksConfig'] as Map).cast<String, dynamic>()),
      meshCertificates: map['meshCertificates'] == null ? null : ClusterMeshCertificates.fromMap((map['meshCertificates'] as Map).cast<String, dynamic>()),
      minMasterVersion: map['minMasterVersion'] == null ? null : map['minMasterVersion'] as String,
      monitoringConfig: map['monitoringConfig'] == null ? null : ClusterMonitoringConfig.fromMap((map['monitoringConfig'] as Map).cast<String, dynamic>()),
      monitoringService: map['monitoringService'] == null ? null : map['monitoringService'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : ClusterNetworkPerformanceConfig.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      networkPolicy: map['networkPolicy'] == null ? null : ClusterNetworkPolicy.fromMap((map['networkPolicy'] as Map).cast<String, dynamic>()),
      networkingMode: map['networkingMode'] == null ? null : map['networkingMode'] as String,
      nodeConfig: map['nodeConfig'] == null ? null : ClusterNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>()),
      nodeLocations: map['nodeLocations'] == null ? null : (map['nodeLocations'] as List).cast<String>(),
      nodePoolAutoConfig: map['nodePoolAutoConfig'] == null ? null : ClusterNodePoolAutoConfig.fromMap((map['nodePoolAutoConfig'] as Map).cast<String, dynamic>()),
      nodePoolDefaults: map['nodePoolDefaults'] == null ? null : ClusterNodePoolDefaults.fromMap((map['nodePoolDefaults'] as Map).cast<String, dynamic>()),
      nodePools: map['nodePools'] == null ? null : pulumi.Input.decodeList<ClusterNodePool>(map['nodePools'], (value) => ClusterNodePool.fromMap((value as Map).cast<String, dynamic>())),
      nodeVersion: map['nodeVersion'] == null ? null : map['nodeVersion'] as String,
      notificationConfig: map['notificationConfig'] == null ? null : ClusterNotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>()),
      podAutoscaling: map['podAutoscaling'] == null ? null : ClusterPodAutoscaling.fromMap((map['podAutoscaling'] as Map).cast<String, dynamic>()),
      podSecurityPolicyConfig: map['podSecurityPolicyConfig'] == null ? null : ClusterPodSecurityPolicyConfig.fromMap((map['podSecurityPolicyConfig'] as Map).cast<String, dynamic>()),
      privateClusterConfig: map['privateClusterConfig'] == null ? null : ClusterPrivateClusterConfig.fromMap((map['privateClusterConfig'] as Map).cast<String, dynamic>()),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : map['privateIpv6GoogleAccess'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      protectConfig: map['protectConfig'] == null ? null : ClusterProtectConfig.fromMap((map['protectConfig'] as Map).cast<String, dynamic>()),
      rbacBindingConfig: map['rbacBindingConfig'] == null ? null : ClusterRbacBindingConfig.fromMap((map['rbacBindingConfig'] as Map).cast<String, dynamic>()),
      releaseChannel: map['releaseChannel'] == null ? null : ClusterReleaseChannel.fromMap((map['releaseChannel'] as Map).cast<String, dynamic>()),
      removeDefaultNodePool: map['removeDefaultNodePool'] == null ? null : map['removeDefaultNodePool'] as bool,
      resourceLabels: map['resourceLabels'] == null ? null : (map['resourceLabels'] as Map).cast<String, String>(),
      resourceUsageExportConfig: map['resourceUsageExportConfig'] == null ? null : ClusterResourceUsageExportConfig.fromMap((map['resourceUsageExportConfig'] as Map).cast<String, dynamic>()),
      secretManagerConfig: map['secretManagerConfig'] == null ? null : ClusterSecretManagerConfig.fromMap((map['secretManagerConfig'] as Map).cast<String, dynamic>()),
      secretSyncConfig: map['secretSyncConfig'] == null ? null : ClusterSecretSyncConfig.fromMap((map['secretSyncConfig'] as Map).cast<String, dynamic>()),
      securityPostureConfig: map['securityPostureConfig'] == null ? null : ClusterSecurityPostureConfig.fromMap((map['securityPostureConfig'] as Map).cast<String, dynamic>()),
      serviceExternalIpsConfig: map['serviceExternalIpsConfig'] == null ? null : ClusterServiceExternalIpsConfig.fromMap((map['serviceExternalIpsConfig'] as Map).cast<String, dynamic>()),
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
      tpuConfig: map['tpuConfig'] == null ? null : ClusterTpuConfig.fromMap((map['tpuConfig'] as Map).cast<String, dynamic>()),
      userManagedKeysConfig: map['userManagedKeysConfig'] == null ? null : ClusterUserManagedKeysConfig.fromMap((map['userManagedKeysConfig'] as Map).cast<String, dynamic>()),
      verticalPodAutoscaling: map['verticalPodAutoscaling'] == null ? null : ClusterVerticalPodAutoscaling.fromMap((map['verticalPodAutoscaling'] as Map).cast<String, dynamic>()),
      workloadAltsConfig: map['workloadAltsConfig'] == null ? null : ClusterWorkloadAltsConfig.fromMap((map['workloadAltsConfig'] as Map).cast<String, dynamic>()),
      workloadIdentityConfig: map['workloadIdentityConfig'] == null ? null : ClusterWorkloadIdentityConfig.fromMap((map['workloadIdentityConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

