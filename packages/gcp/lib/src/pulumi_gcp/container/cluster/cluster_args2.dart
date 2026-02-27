// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_addons_config/cluster_addons_config.dart';
import '../cluster_anonymous_authentication_config/cluster_anonymous_authentication_config.dart';
import '../cluster_authenticator_groups_config/cluster_authenticator_groups_config.dart';
import '../cluster_binary_authorization/cluster_binary_authorization.dart';
import '../cluster_cluster_autoscaling/cluster_cluster_autoscaling.dart';
import '../cluster_cluster_telemetry/cluster_cluster_telemetry.dart';
import '../cluster_confidential_nodes/cluster_confidential_nodes.dart';
import '../cluster_control_plane_endpoints_config/cluster_control_plane_endpoints_config.dart';
import '../cluster_cost_management_config/cluster_cost_management_config.dart';
import '../cluster_database_encryption/cluster_database_encryption.dart';
import '../cluster_default_snat_status/cluster_default_snat_status.dart';
import '../cluster_dns_config/cluster_dns_config.dart';
import '../cluster_enable_k8s_beta_apis/cluster_enable_k8s_beta_apis.dart';
import '../cluster_enterprise_config/cluster_enterprise_config.dart';
import '../cluster_fleet/cluster_fleet.dart';
import '../cluster_gateway_api_config/cluster_gateway_api_config.dart';
import '../cluster_gke_auto_upgrade_config/cluster_gke_auto_upgrade_config.dart';
import '../cluster_identity_service_config/cluster_identity_service_config.dart';
import '../cluster_ip_allocation_policy/cluster_ip_allocation_policy.dart';
import '../cluster_logging_config/cluster_logging_config.dart';
import '../cluster_maintenance_policy/cluster_maintenance_policy.dart';
import '../cluster_managed_opentelemetry_config/cluster_managed_opentelemetry_config.dart';
import '../cluster_master_auth/cluster_master_auth.dart';
import '../cluster_master_authorized_networks_config/cluster_master_authorized_networks_config.dart';
import '../cluster_mesh_certificates/cluster_mesh_certificates.dart';
import '../cluster_monitoring_config/cluster_monitoring_config.dart';
import '../cluster_network_performance_config/cluster_network_performance_config.dart';
import '../cluster_network_policy/cluster_network_policy.dart';
import '../cluster_node_config/cluster_node_config.dart';
import '../cluster_node_pool/cluster_node_pool.dart';
import '../cluster_node_pool_auto_config/cluster_node_pool_auto_config.dart';
import '../cluster_node_pool_defaults/cluster_node_pool_defaults.dart';
import '../cluster_notification_config/cluster_notification_config.dart';
import '../cluster_pod_autoscaling/cluster_pod_autoscaling.dart';
import '../cluster_pod_security_policy_config/cluster_pod_security_policy_config.dart';
import '../cluster_private_cluster_config/cluster_private_cluster_config.dart';
import '../cluster_protect_config/cluster_protect_config.dart';
import '../cluster_rbac_binding_config/cluster_rbac_binding_config.dart';
import '../cluster_release_channel/cluster_release_channel.dart';
import '../cluster_resource_usage_export_config/cluster_resource_usage_export_config.dart';
import '../cluster_secret_manager_config/cluster_secret_manager_config.dart';
import '../cluster_secret_sync_config/cluster_secret_sync_config.dart';
import '../cluster_security_posture_config/cluster_security_posture_config.dart';
import '../cluster_service_external_ips_config/cluster_service_external_ips_config.dart';
import '../cluster_tpu_config/cluster_tpu_config.dart';
import '../cluster_user_managed_keys_config/cluster_user_managed_keys_config.dart';
import '../cluster_vertical_pod_autoscaling/cluster_vertical_pod_autoscaling.dart';
import '../cluster_workload_alts_config/cluster_workload_alts_config.dart';
import '../cluster_workload_identity_config/cluster_workload_identity_config.dart';

/// The set of arguments for Cluster.
class ClusterArgs2 {
  /// The configuration for addons supported by GKE.
  /// Structure is documented below.
  final Input<ClusterAddonsConfig>? addonsConfig;

  /// Enable NET_ADMIN for the cluster. Defaults to
  /// `false`. This field should only be enabled for Autopilot clusters (`enable_autopilot`
  /// set to `true`).
  final Input<bool>? allowNetAdmin;

  /// Configuration for [anonymous authentication restrictions](https://cloud.google.com/kubernetes-engine/docs/how-to/hardening-your-cluster#restrict-anon-access). Structure is documented below.
  final Input<ClusterAnonymousAuthenticationConfig>?
      anonymousAuthenticationConfig;

  /// Configuration for the
  /// [Google Groups for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control#groups-setup-gsuite) feature.
  /// Structure is documented below.
  final Input<ClusterAuthenticatorGroupsConfig>? authenticatorGroupsConfig;

  /// Configuration options for the Binary
  /// Authorization feature. Structure is documented below.
  final Input<ClusterBinaryAuthorization>? binaryAuthorization;

  /// Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to
  /// automatically adjust the size of the cluster and create/delete node pools based
  /// on the current needs of the cluster's workload. See the
  /// [guide to using Node Auto-Provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// for more details. Structure is documented below.
  final Input<ClusterClusterAutoscaling>? clusterAutoscaling;

  /// The IP address range of the Kubernetes pods
  /// in this cluster in CIDR notation (e.g. `10.96.0.0/14`). Leave blank to have one
  /// automatically chosen or specify a `/14` block in `10.0.0.0/8`. This field will
  /// default a new cluster to routes-based, where `ip_allocation_policy` is not defined.
  final Input<String>? clusterIpv4Cidr;

  /// Configuration for
  /// [ClusterTelemetry](https://cloud.google.com/monitoring/kubernetes-engine/installing#controlling_the_collection_of_application_logs) feature,
  /// Structure is documented below.
  final Input<ClusterClusterTelemetry>? clusterTelemetry;

  /// Configuration for [Confidential Nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/confidential-gke-nodes) feature. Structure is documented below documented below.
  final Input<ClusterConfidentialNodes>? confidentialNodes;

  /// Configuration for all of the cluster's control plane endpoints.
  /// Structure is documented below.
  final Input<ClusterControlPlaneEndpointsConfig>? controlPlaneEndpointsConfig;

  /// Configuration for the
  /// [Cost Allocation](https://cloud.google.com/kubernetes-engine/docs/how-to/cost-allocations) feature.
  /// Structure is documented below.
  final Input<ClusterCostManagementConfig>? costManagementConfig;

  /// Structure is documented below.
  final Input<ClusterDatabaseEncryption>? databaseEncryption;

  /// The desired datapath provider for this cluster. This is set to `LEGACY_DATAPATH` by default, which uses the IPTables-based kube-proxy implementation. Set to `ADVANCED_DATAPATH` to enable Dataplane v2.
  final Input<String>? datapathProvider;

  /// The default maximum number of pods
  /// per node in this cluster. This doesn't work on "routes-based" clusters, clusters
  /// that don't have IP Aliasing enabled. See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  final Input<int>? defaultMaxPodsPerNode;

  /// [GKE SNAT](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works) DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster, [API doc](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#networkconfig). Structure is documented below
  final Input<ClusterDefaultSnatStatus>? defaultSnatStatus;
  final Input<bool>? deletionProtection;

  /// Description of the cluster.
  final Input<String>? description;

  /// Disable L4 load balancer VPC firewalls to enable firewall policies.
  final Input<bool>? disableL4LbFirewallReconciliation;

  /// Configuration for [Using Cloud DNS for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/cloud-dns). Structure is documented below.
  final Input<ClusterDnsConfig>? dnsConfig;

  /// Enable Autopilot for this cluster. Defaults to `false`.
  /// Note that when this option is enabled, certain features of Standard GKE are not available.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison)
  /// for available features.
  final Input<bool>? enableAutopilot;

  /// Whether CiliumClusterWideNetworkPolicy is enabled on this cluster. Defaults to false.
  final Input<bool>? enableCiliumClusterwideNetworkPolicy;

  /// Whether FQDN Network Policy is enabled on this cluster. Users who enable this feature for existing Standard clusters must restart the GKE Dataplane V2 `anetd` DaemonSet after enabling it. See the [Enable FQDN Network Policy in an existing cluster](https://cloud.google.com/kubernetes-engine/docs/how-to/fqdn-network-policies#enable_fqdn_network_policy_in_an_existing_cluster) for more information.
  final Input<bool>? enableFqdnNetworkPolicy;

  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  final Input<bool>? enableIntranodeVisibility;

  /// Configuration for Kubernetes Beta APIs.
  /// Structure is documented below.
  final Input<ClusterEnableK8sBetaApis>? enableK8sBetaApis;

  /// Whether to enable Kubernetes Alpha features for
  /// this cluster. Note that when this option is enabled, the cluster cannot be upgraded
  /// and will be automatically deleted after 30 days.
  final Input<bool>? enableKubernetesAlpha;

  /// Whether L4ILB Subsetting is enabled for this cluster.
  final Input<bool>? enableL4IlbSubsetting;

  /// Whether the ABAC authorizer is enabled for this cluster.
  /// When enabled, identities in the system, including service accounts, nodes, and controllers,
  /// will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  /// Defaults to `false`
  final Input<bool>? enableLegacyAbac;

  /// Whether multi-networking is enabled for this cluster.
  final Input<bool>? enableMultiNetworking;

  /// Enable Shielded Nodes features on all nodes in this cluster.  Defaults to `true`.
  final Input<bool>? enableShieldedNodes;

  /// Whether to enable Cloud TPU resources in this cluster.
  /// See the [official documentation](https://cloud.google.com/tpu/docs/kubernetes-engine-setup).
  final Input<bool>? enableTpu;

  /// (DEPRECATED) Configuration for [Enterprise edition].(https://cloud.google.com/kubernetes-engine/enterprise/docs/concepts/gke-editions). Structure is documented below. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  final Input<ClusterEnterpriseConfig>? enterpriseConfig;

  /// Fleet configuration for the cluster. Structure is documented below.
  final Input<ClusterFleet>? fleet;

  /// Configuration for [GKE Gateway API controller](https://cloud.google.com/kubernetes-engine/docs/concepts/gateway-api). Structure is documented below.
  final Input<ClusterGatewayApiConfig>? gatewayApiConfig;

  /// Configuration options for the auto-upgrade patch type feature, which provide more control over the speed of automatic upgrades of your GKE clusters.
  /// Structure is documented below.
  final Input<ClusterGkeAutoUpgradeConfig>? gkeAutoUpgradeConfig;

  /// . Structure is documented below.
  final Input<ClusterIdentityServiceConfig>? identityServiceConfig;

  /// Defines the config of in-transit encryption. Valid values are `IN_TRANSIT_ENCRYPTION_DISABLED` and `IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT`.
  final Input<String>? inTransitEncryptionConfig;

  /// The number of nodes to create in this
  /// cluster's default node pool. In regional or multi-zonal clusters, this is the
  /// number of nodes per zone. Must be set if `node_pool` is not set. If you're using
  /// `gcp.container.NodePool` objects with no default node pool, you'll need to
  /// set this to a value of at least `1`, alongside setting
  /// `remove_default_node_pool` to `true`.
  final Input<int>? initialNodeCount;

  /// Configuration of cluster IP allocation for
  /// VPC-native clusters. If this block is unset during creation, it will be set by the GKE backend.
  /// Structure is documented below.
  final Input<ClusterIpAllocationPolicy>? ipAllocationPolicy;

  /// The location (region or zone) in which the cluster
  /// master will be created, as well as the default node location. If you specify a
  /// zone (such as `us-central1-a`), the cluster will be a zonal cluster with a
  /// single cluster master. If you specify a region (such as `us-west1`), the
  /// cluster will be a regional cluster with multiple masters spread across zones in
  /// the region, and with default node locations in those zones as well
  final Input<String>? location;

  /// Logging configuration for the cluster.
  /// Structure is documented below.
  final Input<ClusterLoggingConfig>? loggingConfig;

  /// The logging service that the cluster should
  /// write logs to. Available options include `logging.googleapis.com`(Legacy Stackdriver),
  /// `logging.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Logging), and `none`. Defaults to `logging.googleapis.com/kubernetes`
  final Input<String>? loggingService;

  /// The maintenance policy to use for the cluster. Structure is
  /// documented below.
  final Input<ClusterMaintenancePolicy>? maintenancePolicy;

  /// Configuration for the [GKE Managed OpenTelemetry](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/managed-otel-gke) feature. Structure is documented below.
  final Input<ClusterManagedOpentelemetryConfig>? managedOpentelemetryConfig;

  /// The authentication information for accessing the
  /// Kubernetes master. Some values in this block are only returned by the API if
  /// your service account has permission to get credentials for your GKE cluster. If
  /// you see an unexpected diff unsetting your client cert, ensure you have the
  /// `container.clusters.getCredentials` permission.
  /// Structure is documented below.
  final Input<ClusterMasterAuth>? masterAuth;

  /// The desired
  /// configuration options for master authorized networks. Omit the
  /// nested `cidr_blocks` attribute to disallow external access (except
  /// the cluster node IPs, which GKE automatically whitelists).
  /// Structure is documented below.
  final Input<ClusterMasterAuthorizedNetworksConfig>?
      masterAuthorizedNetworksConfig;

  /// Structure is documented below.
  final Input<ClusterMeshCertificates>? meshCertificates;

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
  final Input<String>? minMasterVersion;

  /// Monitoring configuration for the cluster.
  /// Structure is documented below.
  final Input<ClusterMonitoringConfig>? monitoringConfig;

  /// The monitoring service that the cluster
  /// should write metrics to.
  /// Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API.
  /// VM metrics will be collected by Google Compute Engine regardless of this setting
  /// Available options include
  /// `monitoring.googleapis.com`(Legacy Stackdriver), `monitoring.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Monitoring), and `none`.
  /// Defaults to `monitoring.googleapis.com/kubernetes`
  final Input<String>? monitoringService;

  /// The name of the cluster, unique within the project and
  /// location.
  ///
  /// - - -
  final Input<String>? name;

  /// The name or self_link of the Google Compute Engine
  /// network to which the cluster is connected. For Shared VPC, set this to the self link of the
  /// shared network.
  final Input<String>? network;

  /// Network bandwidth tier configuration.
  final Input<ClusterNetworkPerformanceConfig>? networkPerformanceConfig;

  /// Configuration options for the
  /// [NetworkPolicy](https://kubernetes.io/docs/concepts/services-networking/networkpolicies/)
  /// feature. Structure is documented below.
  final Input<ClusterNetworkPolicy>? networkPolicy;

  /// Determines whether alias IPs or routes will be used for pod IPs in the cluster.
  /// Options are `VPC_NATIVE` or `ROUTES`. `VPC_NATIVE` enables [IP aliasing](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-aliases). Newly created clusters will default to `VPC_NATIVE`.
  final Input<String>? networkingMode;

  /// Parameters used in creating the default node pool.
  /// Generally, this field should not be used at the same time as a
  /// `gcp.container.NodePool` or a `node_pool` block; this configuration
  /// manages the default node pool, which isn't recommended to be used.
  /// Structure is documented below.
  final Input<ClusterNodeConfig>? nodeConfig;

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
  final Input<List<String>>? nodeLocations;

  /// Node pool configs that apply to auto-provisioned node pools in
  /// [autopilot](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison) clusters and
  /// [node auto-provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)-enabled clusters. Structure is documented below.
  final Input<ClusterNodePoolAutoConfig>? nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object. Structure is documented below.
  final Input<ClusterNodePoolDefaults>? nodePoolDefaults;

  /// List of node pools associated with this cluster.
  /// See gcp.container.NodePool for schema.
  /// **Warning:** node pools defined inside a cluster can't be changed (or added/removed) after
  /// cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability
  /// to say "these are the _only_ node pools associated with this cluster", use the
  /// gcp.container.NodePool resource instead of this property.
  final Input<List<ClusterNodePool>>? nodePools;

  /// The Kubernetes version on the nodes. Must either be unset
  /// or set to the same value as `min_master_version` on create. Defaults to the default
  /// version set by GKE which is not necessarily the latest version. This only affects
  /// nodes in the default node pool. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the `gcp.container.getEngineVersions` data source's
  /// `version_prefix` field to approximate fuzzy versions.
  /// To update nodes in other node pools, use the `version` attribute on the node pool.
  final Input<String>? nodeVersion;

  /// Configuration for the [cluster upgrade notifications](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-upgrade-notifications) feature. Structure is documented below.
  final Input<ClusterNotificationConfig>? notificationConfig;

  /// Configuration for the
  /// Structure is documented below.
  final Input<ClusterPodAutoscaling>? podAutoscaling;

  /// Configuration for the
  /// [PodSecurityPolicy](https://cloud.google.com/kubernetes-engine/docs/how-to/pod-security-policies) feature.
  /// Structure is documented below.
  final Input<ClusterPodSecurityPolicyConfig>? podSecurityPolicyConfig;

  /// Configuration for [private clusters](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters),
  /// clusters with private nodes. Structure is documented below.
  final Input<ClusterPrivateClusterConfig>? privateClusterConfig;

  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4).
  final Input<String>? privateIpv6GoogleAccess;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// Enable/Disable Protect API features for the cluster. Structure is documented below.
  final Input<ClusterProtectConfig>? protectConfig;

  /// RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. Structure is documented below.
  ///
  /// <a name="nested_default_snat_status"></a>The `default_snat_status` block supports
  final Input<ClusterRbacBindingConfig>? rbacBindingConfig;

  /// Configuration options for the [Release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels)
  /// feature, which provide more control over automatic upgrades of your GKE clusters.
  /// When updating this field, GKE imposes specific version requirements. See
  /// [Selecting a new release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels#selecting_a_new_release_channel)
  /// for more details; the `gcp.container.getEngineVersions` datasource can provide
  /// the default version for a channel. Note that removing the `release_channel`
  /// field from your config will cause the provider to stop managing your cluster's
  /// release channel, but will not unenroll it. Instead, use the `"UNSPECIFIED"`
  /// channel. Structure is documented below.
  final Input<ClusterReleaseChannel>? releaseChannel;

  /// If `true`, deletes the default node
  /// pool upon cluster creation. If you're using `gcp.container.NodePool`
  /// resources with no default node pool, this should be set to `true`, alongside
  /// setting `initial_node_count` to at least `1`.
  final Input<bool>? removeDefaultNodePool;

  /// The GCE resource labels (a map of key/value pairs) to be applied to the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Input<Map<String, String>>? resourceLabels;

  /// Configuration for the
  /// [ResourceUsageExportConfig](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-usage-metering) feature.
  /// Structure is documented below.
  final Input<ClusterResourceUsageExportConfig>? resourceUsageExportConfig;

  /// Configuration for the
  /// [SecretManagerConfig](https://cloud.google.com/secret-manager/docs/secret-manager-managed-csi-component) feature.
  /// Structure is documented below.
  final Input<ClusterSecretManagerConfig>? secretManagerConfig;

  /// Configuration for the
  /// [SecretSyncConfig](https://cloud.google.com/secret-manager/docs/sync-k8-secrets) feature.
  /// Structure is documented below.
  final Input<ClusterSecretSyncConfig>? secretSyncConfig;

  /// Enable/Disable Security Posture API features for the cluster. Structure is documented below.
  final Input<ClusterSecurityPostureConfig>? securityPostureConfig;

  /// Structure is documented below.
  final Input<ClusterServiceExternalIpsConfig>? serviceExternalIpsConfig;

  /// The name or self_link of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final Input<String>? subnetwork;

  /// TPU configuration for the cluster.
  final Input<ClusterTpuConfig>? tpuConfig;

  /// The custom keys configuration of the cluster Structure is documented below.
  final Input<ClusterUserManagedKeysConfig>? userManagedKeysConfig;

  /// Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it.
  /// Structure is documented below.
  final Input<ClusterVerticalPodAutoscaling>? verticalPodAutoscaling;

  /// Configuration for [direct-path (via ALTS) with workload identity.](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#workloadaltsconfig). Structure is documented below.
  final Input<ClusterWorkloadAltsConfig>? workloadAltsConfig;

  /// Workload Identity allows Kubernetes service accounts to act as a user-managed
  /// [Google IAM Service Account](https://cloud.google.com/iam/docs/service-accounts#user-managed_service_accounts).
  /// Structure is documented below.
  final Input<ClusterWorkloadIdentityConfig>? workloadIdentityConfig;

  ClusterArgs2({
    this.addonsConfig,
    this.allowNetAdmin,
    this.anonymousAuthenticationConfig,
    this.authenticatorGroupsConfig,
    this.binaryAuthorization,
    this.clusterAutoscaling,
    this.clusterIpv4Cidr,
    this.clusterTelemetry,
    this.confidentialNodes,
    this.controlPlaneEndpointsConfig,
    this.costManagementConfig,
    this.databaseEncryption,
    this.datapathProvider,
    this.defaultMaxPodsPerNode,
    this.defaultSnatStatus,
    this.deletionProtection,
    this.description,
    this.disableL4LbFirewallReconciliation,
    this.dnsConfig,
    this.enableAutopilot,
    this.enableCiliumClusterwideNetworkPolicy,
    this.enableFqdnNetworkPolicy,
    this.enableIntranodeVisibility,
    this.enableK8sBetaApis,
    this.enableKubernetesAlpha,
    this.enableL4IlbSubsetting,
    this.enableLegacyAbac,
    this.enableMultiNetworking,
    this.enableShieldedNodes,
    this.enableTpu,
    this.enterpriseConfig,
    this.fleet,
    this.gatewayApiConfig,
    this.gkeAutoUpgradeConfig,
    this.identityServiceConfig,
    this.inTransitEncryptionConfig,
    this.initialNodeCount,
    this.ipAllocationPolicy,
    this.location,
    this.loggingConfig,
    this.loggingService,
    this.maintenancePolicy,
    this.managedOpentelemetryConfig,
    this.masterAuth,
    this.masterAuthorizedNetworksConfig,
    this.meshCertificates,
    this.minMasterVersion,
    this.monitoringConfig,
    this.monitoringService,
    this.name,
    this.network,
    this.networkPerformanceConfig,
    this.networkPolicy,
    this.networkingMode,
    this.nodeConfig,
    this.nodeLocations,
    this.nodePoolAutoConfig,
    this.nodePoolDefaults,
    this.nodePools,
    this.nodeVersion,
    this.notificationConfig,
    this.podAutoscaling,
    this.podSecurityPolicyConfig,
    this.privateClusterConfig,
    this.privateIpv6GoogleAccess,
    this.project,
    this.protectConfig,
    this.rbacBindingConfig,
    this.releaseChannel,
    this.removeDefaultNodePool,
    this.resourceLabels,
    this.resourceUsageExportConfig,
    this.secretManagerConfig,
    this.secretSyncConfig,
    this.securityPostureConfig,
    this.serviceExternalIpsConfig,
    this.subnetwork,
    this.tpuConfig,
    this.userManagedKeysConfig,
    this.verticalPodAutoscaling,
    this.workloadAltsConfig,
    this.workloadIdentityConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addonsConfigValue = addonsConfig;
    if (addonsConfigValue != null) {
      map['addonsConfig'] = Input.mapOptionalInputValue<ClusterAddonsConfig,
          Map<String, dynamic>>(addonsConfigValue, (value) => value.toMap());
    }
    final allowNetAdminValue = allowNetAdmin;
    if (allowNetAdminValue != null) {
      map['allowNetAdmin'] = allowNetAdminValue;
    }
    final anonymousAuthenticationConfigValue = anonymousAuthenticationConfig;
    if (anonymousAuthenticationConfigValue != null) {
      map['anonymousAuthenticationConfig'] = Input.mapOptionalInputValue<
              ClusterAnonymousAuthenticationConfig, Map<String, dynamic>>(
          anonymousAuthenticationConfigValue, (value) => value.toMap());
    }
    final authenticatorGroupsConfigValue = authenticatorGroupsConfig;
    if (authenticatorGroupsConfigValue != null) {
      map['authenticatorGroupsConfig'] = Input.mapOptionalInputValue<
              ClusterAuthenticatorGroupsConfig, Map<String, dynamic>>(
          authenticatorGroupsConfigValue, (value) => value.toMap());
    }
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
              ClusterBinaryAuthorization, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clusterAutoscalingValue = clusterAutoscaling;
    if (clusterAutoscalingValue != null) {
      map['clusterAutoscaling'] = Input.mapOptionalInputValue<
              ClusterClusterAutoscaling, Map<String, dynamic>>(
          clusterAutoscalingValue, (value) => value.toMap());
    }
    final clusterIpv4CidrValue = clusterIpv4Cidr;
    if (clusterIpv4CidrValue != null) {
      map['clusterIpv4Cidr'] = clusterIpv4CidrValue;
    }
    final clusterTelemetryValue = clusterTelemetry;
    if (clusterTelemetryValue != null) {
      map['clusterTelemetry'] = Input.mapOptionalInputValue<
              ClusterClusterTelemetry, Map<String, dynamic>>(
          clusterTelemetryValue, (value) => value.toMap());
    }
    final confidentialNodesValue = confidentialNodes;
    if (confidentialNodesValue != null) {
      map['confidentialNodes'] = Input.mapOptionalInputValue<
              ClusterConfidentialNodes, Map<String, dynamic>>(
          confidentialNodesValue, (value) => value.toMap());
    }
    final controlPlaneEndpointsConfigValue = controlPlaneEndpointsConfig;
    if (controlPlaneEndpointsConfigValue != null) {
      map['controlPlaneEndpointsConfig'] = Input.mapOptionalInputValue<
              ClusterControlPlaneEndpointsConfig, Map<String, dynamic>>(
          controlPlaneEndpointsConfigValue, (value) => value.toMap());
    }
    final costManagementConfigValue = costManagementConfig;
    if (costManagementConfigValue != null) {
      map['costManagementConfig'] = Input.mapOptionalInputValue<
              ClusterCostManagementConfig, Map<String, dynamic>>(
          costManagementConfigValue, (value) => value.toMap());
    }
    final databaseEncryptionValue = databaseEncryption;
    if (databaseEncryptionValue != null) {
      map['databaseEncryption'] = Input.mapOptionalInputValue<
              ClusterDatabaseEncryption, Map<String, dynamic>>(
          databaseEncryptionValue, (value) => value.toMap());
    }
    final datapathProviderValue = datapathProvider;
    if (datapathProviderValue != null) {
      map['datapathProvider'] = datapathProviderValue;
    }
    final defaultMaxPodsPerNodeValue = defaultMaxPodsPerNode;
    if (defaultMaxPodsPerNodeValue != null) {
      map['defaultMaxPodsPerNode'] = defaultMaxPodsPerNodeValue;
    }
    final defaultSnatStatusValue = defaultSnatStatus;
    if (defaultSnatStatusValue != null) {
      map['defaultSnatStatus'] = Input.mapOptionalInputValue<
              ClusterDefaultSnatStatus, Map<String, dynamic>>(
          defaultSnatStatusValue, (value) => value.toMap());
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableL4LbFirewallReconciliationValue =
        disableL4LbFirewallReconciliation;
    if (disableL4LbFirewallReconciliationValue != null) {
      map['disableL4LbFirewallReconciliation'] =
          disableL4LbFirewallReconciliationValue;
    }
    final dnsConfigValue = dnsConfig;
    if (dnsConfigValue != null) {
      map['dnsConfig'] =
          Input.mapOptionalInputValue<ClusterDnsConfig, Map<String, dynamic>>(
              dnsConfigValue, (value) => value.toMap());
    }
    final enableAutopilotValue = enableAutopilot;
    if (enableAutopilotValue != null) {
      map['enableAutopilot'] = enableAutopilotValue;
    }
    final enableCiliumClusterwideNetworkPolicyValue =
        enableCiliumClusterwideNetworkPolicy;
    if (enableCiliumClusterwideNetworkPolicyValue != null) {
      map['enableCiliumClusterwideNetworkPolicy'] =
          enableCiliumClusterwideNetworkPolicyValue;
    }
    final enableFqdnNetworkPolicyValue = enableFqdnNetworkPolicy;
    if (enableFqdnNetworkPolicyValue != null) {
      map['enableFqdnNetworkPolicy'] = enableFqdnNetworkPolicyValue;
    }
    final enableIntranodeVisibilityValue = enableIntranodeVisibility;
    if (enableIntranodeVisibilityValue != null) {
      map['enableIntranodeVisibility'] = enableIntranodeVisibilityValue;
    }
    final enableK8sBetaApisValue = enableK8sBetaApis;
    if (enableK8sBetaApisValue != null) {
      map['enableK8sBetaApis'] = Input.mapOptionalInputValue<
              ClusterEnableK8sBetaApis, Map<String, dynamic>>(
          enableK8sBetaApisValue, (value) => value.toMap());
    }
    final enableKubernetesAlphaValue = enableKubernetesAlpha;
    if (enableKubernetesAlphaValue != null) {
      map['enableKubernetesAlpha'] = enableKubernetesAlphaValue;
    }
    final enableL4IlbSubsettingValue = enableL4IlbSubsetting;
    if (enableL4IlbSubsettingValue != null) {
      map['enableL4IlbSubsetting'] = enableL4IlbSubsettingValue;
    }
    final enableLegacyAbacValue = enableLegacyAbac;
    if (enableLegacyAbacValue != null) {
      map['enableLegacyAbac'] = enableLegacyAbacValue;
    }
    final enableMultiNetworkingValue = enableMultiNetworking;
    if (enableMultiNetworkingValue != null) {
      map['enableMultiNetworking'] = enableMultiNetworkingValue;
    }
    final enableShieldedNodesValue = enableShieldedNodes;
    if (enableShieldedNodesValue != null) {
      map['enableShieldedNodes'] = enableShieldedNodesValue;
    }
    final enableTpuValue = enableTpu;
    if (enableTpuValue != null) {
      map['enableTpu'] = enableTpuValue;
    }
    final enterpriseConfigValue = enterpriseConfig;
    if (enterpriseConfigValue != null) {
      map['enterpriseConfig'] = Input.mapOptionalInputValue<
              ClusterEnterpriseConfig, Map<String, dynamic>>(
          enterpriseConfigValue, (value) => value.toMap());
    }
    final fleetValue = fleet;
    if (fleetValue != null) {
      map['fleet'] =
          Input.mapOptionalInputValue<ClusterFleet, Map<String, dynamic>>(
              fleetValue, (value) => value.toMap());
    }
    final gatewayApiConfigValue = gatewayApiConfig;
    if (gatewayApiConfigValue != null) {
      map['gatewayApiConfig'] = Input.mapOptionalInputValue<
              ClusterGatewayApiConfig, Map<String, dynamic>>(
          gatewayApiConfigValue, (value) => value.toMap());
    }
    final gkeAutoUpgradeConfigValue = gkeAutoUpgradeConfig;
    if (gkeAutoUpgradeConfigValue != null) {
      map['gkeAutoUpgradeConfig'] = Input.mapOptionalInputValue<
              ClusterGkeAutoUpgradeConfig, Map<String, dynamic>>(
          gkeAutoUpgradeConfigValue, (value) => value.toMap());
    }
    final identityServiceConfigValue = identityServiceConfig;
    if (identityServiceConfigValue != null) {
      map['identityServiceConfig'] = Input.mapOptionalInputValue<
              ClusterIdentityServiceConfig, Map<String, dynamic>>(
          identityServiceConfigValue, (value) => value.toMap());
    }
    final inTransitEncryptionConfigValue = inTransitEncryptionConfig;
    if (inTransitEncryptionConfigValue != null) {
      map['inTransitEncryptionConfig'] = inTransitEncryptionConfigValue;
    }
    final initialNodeCountValue = initialNodeCount;
    if (initialNodeCountValue != null) {
      map['initialNodeCount'] = initialNodeCountValue;
    }
    final ipAllocationPolicyValue = ipAllocationPolicy;
    if (ipAllocationPolicyValue != null) {
      map['ipAllocationPolicy'] = Input.mapOptionalInputValue<
              ClusterIpAllocationPolicy, Map<String, dynamic>>(
          ipAllocationPolicyValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = Input.mapOptionalInputValue<ClusterLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final loggingServiceValue = loggingService;
    if (loggingServiceValue != null) {
      map['loggingService'] = loggingServiceValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = Input.mapOptionalInputValue<
              ClusterMaintenancePolicy, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final managedOpentelemetryConfigValue = managedOpentelemetryConfig;
    if (managedOpentelemetryConfigValue != null) {
      map['managedOpentelemetryConfig'] = Input.mapOptionalInputValue<
              ClusterManagedOpentelemetryConfig, Map<String, dynamic>>(
          managedOpentelemetryConfigValue, (value) => value.toMap());
    }
    final masterAuthValue = masterAuth;
    if (masterAuthValue != null) {
      map['masterAuth'] =
          Input.mapOptionalInputValue<ClusterMasterAuth, Map<String, dynamic>>(
              masterAuthValue, (value) => value.toMap());
    }
    final masterAuthorizedNetworksConfigValue = masterAuthorizedNetworksConfig;
    if (masterAuthorizedNetworksConfigValue != null) {
      map['masterAuthorizedNetworksConfig'] = Input.mapOptionalInputValue<
              ClusterMasterAuthorizedNetworksConfig, Map<String, dynamic>>(
          masterAuthorizedNetworksConfigValue, (value) => value.toMap());
    }
    final meshCertificatesValue = meshCertificates;
    if (meshCertificatesValue != null) {
      map['meshCertificates'] = Input.mapOptionalInputValue<
              ClusterMeshCertificates, Map<String, dynamic>>(
          meshCertificatesValue, (value) => value.toMap());
    }
    final minMasterVersionValue = minMasterVersion;
    if (minMasterVersionValue != null) {
      map['minMasterVersion'] = minMasterVersionValue;
    }
    final monitoringConfigValue = monitoringConfig;
    if (monitoringConfigValue != null) {
      map['monitoringConfig'] = Input.mapOptionalInputValue<
              ClusterMonitoringConfig, Map<String, dynamic>>(
          monitoringConfigValue, (value) => value.toMap());
    }
    final monitoringServiceValue = monitoringService;
    if (monitoringServiceValue != null) {
      map['monitoringService'] = monitoringServiceValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = Input.mapOptionalInputValue<
              ClusterNetworkPerformanceConfig, Map<String, dynamic>>(
          networkPerformanceConfigValue, (value) => value.toMap());
    }
    final networkPolicyValue = networkPolicy;
    if (networkPolicyValue != null) {
      map['networkPolicy'] = Input.mapOptionalInputValue<ClusterNetworkPolicy,
          Map<String, dynamic>>(networkPolicyValue, (value) => value.toMap());
    }
    final networkingModeValue = networkingMode;
    if (networkingModeValue != null) {
      map['networkingMode'] = networkingModeValue;
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] =
          Input.mapOptionalInputValue<ClusterNodeConfig, Map<String, dynamic>>(
              nodeConfigValue, (value) => value.toMap());
    }
    final nodeLocationsValue = nodeLocations;
    if (nodeLocationsValue != null) {
      map['nodeLocations'] = nodeLocationsValue;
    }
    final nodePoolAutoConfigValue = nodePoolAutoConfig;
    if (nodePoolAutoConfigValue != null) {
      map['nodePoolAutoConfig'] = Input.mapOptionalInputValue<
              ClusterNodePoolAutoConfig, Map<String, dynamic>>(
          nodePoolAutoConfigValue, (value) => value.toMap());
    }
    final nodePoolDefaultsValue = nodePoolDefaults;
    if (nodePoolDefaultsValue != null) {
      map['nodePoolDefaults'] = Input.mapOptionalInputValue<
              ClusterNodePoolDefaults, Map<String, dynamic>>(
          nodePoolDefaultsValue, (value) => value.toMap());
    }
    final nodePoolsValue = nodePools;
    if (nodePoolsValue != null) {
      map['nodePools'] = Input.mapOptionalInputValue<List<ClusterNodePool>,
              List<Map<String, dynamic>>>(
          nodePoolsValue,
          (value) => Input.encodeList<ClusterNodePool, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final nodeVersionValue = nodeVersion;
    if (nodeVersionValue != null) {
      map['nodeVersion'] = nodeVersionValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              ClusterNotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final podAutoscalingValue = podAutoscaling;
    if (podAutoscalingValue != null) {
      map['podAutoscaling'] = Input.mapOptionalInputValue<ClusterPodAutoscaling,
          Map<String, dynamic>>(podAutoscalingValue, (value) => value.toMap());
    }
    final podSecurityPolicyConfigValue = podSecurityPolicyConfig;
    if (podSecurityPolicyConfigValue != null) {
      map['podSecurityPolicyConfig'] = Input.mapOptionalInputValue<
              ClusterPodSecurityPolicyConfig, Map<String, dynamic>>(
          podSecurityPolicyConfigValue, (value) => value.toMap());
    }
    final privateClusterConfigValue = privateClusterConfig;
    if (privateClusterConfigValue != null) {
      map['privateClusterConfig'] = Input.mapOptionalInputValue<
              ClusterPrivateClusterConfig, Map<String, dynamic>>(
          privateClusterConfigValue, (value) => value.toMap());
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] = privateIpv6GoogleAccessValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protectConfigValue = protectConfig;
    if (protectConfigValue != null) {
      map['protectConfig'] = Input.mapOptionalInputValue<ClusterProtectConfig,
          Map<String, dynamic>>(protectConfigValue, (value) => value.toMap());
    }
    final rbacBindingConfigValue = rbacBindingConfig;
    if (rbacBindingConfigValue != null) {
      map['rbacBindingConfig'] = Input.mapOptionalInputValue<
              ClusterRbacBindingConfig, Map<String, dynamic>>(
          rbacBindingConfigValue, (value) => value.toMap());
    }
    final releaseChannelValue = releaseChannel;
    if (releaseChannelValue != null) {
      map['releaseChannel'] = Input.mapOptionalInputValue<ClusterReleaseChannel,
          Map<String, dynamic>>(releaseChannelValue, (value) => value.toMap());
    }
    final removeDefaultNodePoolValue = removeDefaultNodePool;
    if (removeDefaultNodePoolValue != null) {
      map['removeDefaultNodePool'] = removeDefaultNodePoolValue;
    }
    final resourceLabelsValue = resourceLabels;
    if (resourceLabelsValue != null) {
      map['resourceLabels'] = resourceLabelsValue;
    }
    final resourceUsageExportConfigValue = resourceUsageExportConfig;
    if (resourceUsageExportConfigValue != null) {
      map['resourceUsageExportConfig'] = Input.mapOptionalInputValue<
              ClusterResourceUsageExportConfig, Map<String, dynamic>>(
          resourceUsageExportConfigValue, (value) => value.toMap());
    }
    final secretManagerConfigValue = secretManagerConfig;
    if (secretManagerConfigValue != null) {
      map['secretManagerConfig'] = Input.mapOptionalInputValue<
              ClusterSecretManagerConfig, Map<String, dynamic>>(
          secretManagerConfigValue, (value) => value.toMap());
    }
    final secretSyncConfigValue = secretSyncConfig;
    if (secretSyncConfigValue != null) {
      map['secretSyncConfig'] = Input.mapOptionalInputValue<
              ClusterSecretSyncConfig, Map<String, dynamic>>(
          secretSyncConfigValue, (value) => value.toMap());
    }
    final securityPostureConfigValue = securityPostureConfig;
    if (securityPostureConfigValue != null) {
      map['securityPostureConfig'] = Input.mapOptionalInputValue<
              ClusterSecurityPostureConfig, Map<String, dynamic>>(
          securityPostureConfigValue, (value) => value.toMap());
    }
    final serviceExternalIpsConfigValue = serviceExternalIpsConfig;
    if (serviceExternalIpsConfigValue != null) {
      map['serviceExternalIpsConfig'] = Input.mapOptionalInputValue<
              ClusterServiceExternalIpsConfig, Map<String, dynamic>>(
          serviceExternalIpsConfigValue, (value) => value.toMap());
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final tpuConfigValue = tpuConfig;
    if (tpuConfigValue != null) {
      map['tpuConfig'] =
          Input.mapOptionalInputValue<ClusterTpuConfig, Map<String, dynamic>>(
              tpuConfigValue, (value) => value.toMap());
    }
    final userManagedKeysConfigValue = userManagedKeysConfig;
    if (userManagedKeysConfigValue != null) {
      map['userManagedKeysConfig'] = Input.mapOptionalInputValue<
              ClusterUserManagedKeysConfig, Map<String, dynamic>>(
          userManagedKeysConfigValue, (value) => value.toMap());
    }
    final verticalPodAutoscalingValue = verticalPodAutoscaling;
    if (verticalPodAutoscalingValue != null) {
      map['verticalPodAutoscaling'] = Input.mapOptionalInputValue<
              ClusterVerticalPodAutoscaling, Map<String, dynamic>>(
          verticalPodAutoscalingValue, (value) => value.toMap());
    }
    final workloadAltsConfigValue = workloadAltsConfig;
    if (workloadAltsConfigValue != null) {
      map['workloadAltsConfig'] = Input.mapOptionalInputValue<
              ClusterWorkloadAltsConfig, Map<String, dynamic>>(
          workloadAltsConfigValue, (value) => value.toMap());
    }
    final workloadIdentityConfigValue = workloadIdentityConfig;
    if (workloadIdentityConfigValue != null) {
      map['workloadIdentityConfig'] = Input.mapOptionalInputValue<
              ClusterWorkloadIdentityConfig, Map<String, dynamic>>(
          workloadIdentityConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterArgs2.fromMap(Map<String, dynamic> map) {
    return ClusterArgs2(
      addonsConfig:
          Input.asOptionalInput<ClusterAddonsConfig>(map['addonsConfig']),
      allowNetAdmin: Input.asOptionalInput<bool>(map['allowNetAdmin']),
      anonymousAuthenticationConfig:
          Input.asOptionalInput<ClusterAnonymousAuthenticationConfig>(
              map['anonymousAuthenticationConfig']),
      authenticatorGroupsConfig:
          Input.asOptionalInput<ClusterAuthenticatorGroupsConfig>(
              map['authenticatorGroupsConfig']),
      binaryAuthorization: Input.asOptionalInput<ClusterBinaryAuthorization>(
          map['binaryAuthorization']),
      clusterAutoscaling: Input.asOptionalInput<ClusterClusterAutoscaling>(
          map['clusterAutoscaling']),
      clusterIpv4Cidr: Input.asOptionalInput<String>(map['clusterIpv4Cidr']),
      clusterTelemetry: Input.asOptionalInput<ClusterClusterTelemetry>(
          map['clusterTelemetry']),
      confidentialNodes: Input.asOptionalInput<ClusterConfidentialNodes>(
          map['confidentialNodes']),
      controlPlaneEndpointsConfig:
          Input.asOptionalInput<ClusterControlPlaneEndpointsConfig>(
              map['controlPlaneEndpointsConfig']),
      costManagementConfig: Input.asOptionalInput<ClusterCostManagementConfig>(
          map['costManagementConfig']),
      databaseEncryption: Input.asOptionalInput<ClusterDatabaseEncryption>(
          map['databaseEncryption']),
      datapathProvider: Input.asOptionalInput<String>(map['datapathProvider']),
      defaultMaxPodsPerNode:
          Input.asOptionalInput<int>(map['defaultMaxPodsPerNode']),
      defaultSnatStatus: Input.asOptionalInput<ClusterDefaultSnatStatus>(
          map['defaultSnatStatus']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      disableL4LbFirewallReconciliation:
          Input.asOptionalInput<bool>(map['disableL4LbFirewallReconciliation']),
      dnsConfig: Input.asOptionalInput<ClusterDnsConfig>(map['dnsConfig']),
      enableAutopilot: Input.asOptionalInput<bool>(map['enableAutopilot']),
      enableCiliumClusterwideNetworkPolicy: Input.asOptionalInput<bool>(
          map['enableCiliumClusterwideNetworkPolicy']),
      enableFqdnNetworkPolicy:
          Input.asOptionalInput<bool>(map['enableFqdnNetworkPolicy']),
      enableIntranodeVisibility:
          Input.asOptionalInput<bool>(map['enableIntranodeVisibility']),
      enableK8sBetaApis: Input.asOptionalInput<ClusterEnableK8sBetaApis>(
          map['enableK8sBetaApis']),
      enableKubernetesAlpha:
          Input.asOptionalInput<bool>(map['enableKubernetesAlpha']),
      enableL4IlbSubsetting:
          Input.asOptionalInput<bool>(map['enableL4IlbSubsetting']),
      enableLegacyAbac: Input.asOptionalInput<bool>(map['enableLegacyAbac']),
      enableMultiNetworking:
          Input.asOptionalInput<bool>(map['enableMultiNetworking']),
      enableShieldedNodes:
          Input.asOptionalInput<bool>(map['enableShieldedNodes']),
      enableTpu: Input.asOptionalInput<bool>(map['enableTpu']),
      enterpriseConfig: Input.asOptionalInput<ClusterEnterpriseConfig>(
          map['enterpriseConfig']),
      fleet: Input.asOptionalInput<ClusterFleet>(map['fleet']),
      gatewayApiConfig: Input.asOptionalInput<ClusterGatewayApiConfig>(
          map['gatewayApiConfig']),
      gkeAutoUpgradeConfig: Input.asOptionalInput<ClusterGkeAutoUpgradeConfig>(
          map['gkeAutoUpgradeConfig']),
      identityServiceConfig:
          Input.asOptionalInput<ClusterIdentityServiceConfig>(
              map['identityServiceConfig']),
      inTransitEncryptionConfig:
          Input.asOptionalInput<String>(map['inTransitEncryptionConfig']),
      initialNodeCount: Input.asOptionalInput<int>(map['initialNodeCount']),
      ipAllocationPolicy: Input.asOptionalInput<ClusterIpAllocationPolicy>(
          map['ipAllocationPolicy']),
      location: Input.asOptionalInput<String>(map['location']),
      loggingConfig:
          Input.asOptionalInput<ClusterLoggingConfig>(map['loggingConfig']),
      loggingService: Input.asOptionalInput<String>(map['loggingService']),
      maintenancePolicy: Input.asOptionalInput<ClusterMaintenancePolicy>(
          map['maintenancePolicy']),
      managedOpentelemetryConfig:
          Input.asOptionalInput<ClusterManagedOpentelemetryConfig>(
              map['managedOpentelemetryConfig']),
      masterAuth: Input.asOptionalInput<ClusterMasterAuth>(map['masterAuth']),
      masterAuthorizedNetworksConfig:
          Input.asOptionalInput<ClusterMasterAuthorizedNetworksConfig>(
              map['masterAuthorizedNetworksConfig']),
      meshCertificates: Input.asOptionalInput<ClusterMeshCertificates>(
          map['meshCertificates']),
      minMasterVersion: Input.asOptionalInput<String>(map['minMasterVersion']),
      monitoringConfig: Input.asOptionalInput<ClusterMonitoringConfig>(
          map['monitoringConfig']),
      monitoringService:
          Input.asOptionalInput<String>(map['monitoringService']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      networkPerformanceConfig:
          Input.asOptionalInput<ClusterNetworkPerformanceConfig>(
              map['networkPerformanceConfig']),
      networkPolicy:
          Input.asOptionalInput<ClusterNetworkPolicy>(map['networkPolicy']),
      networkingMode: Input.asOptionalInput<String>(map['networkingMode']),
      nodeConfig: Input.asOptionalInput<ClusterNodeConfig>(map['nodeConfig']),
      nodeLocations: Input.asOptionalInput<List<String>>(map['nodeLocations']),
      nodePoolAutoConfig: Input.asOptionalInput<ClusterNodePoolAutoConfig>(
          map['nodePoolAutoConfig']),
      nodePoolDefaults: Input.asOptionalInput<ClusterNodePoolDefaults>(
          map['nodePoolDefaults']),
      nodePools: Input.asOptionalInput<List<ClusterNodePool>>(map['nodePools']),
      nodeVersion: Input.asOptionalInput<String>(map['nodeVersion']),
      notificationConfig: Input.asOptionalInput<ClusterNotificationConfig>(
          map['notificationConfig']),
      podAutoscaling:
          Input.asOptionalInput<ClusterPodAutoscaling>(map['podAutoscaling']),
      podSecurityPolicyConfig:
          Input.asOptionalInput<ClusterPodSecurityPolicyConfig>(
              map['podSecurityPolicyConfig']),
      privateClusterConfig: Input.asOptionalInput<ClusterPrivateClusterConfig>(
          map['privateClusterConfig']),
      privateIpv6GoogleAccess:
          Input.asOptionalInput<String>(map['privateIpv6GoogleAccess']),
      project: Input.asOptionalInput<String>(map['project']),
      protectConfig:
          Input.asOptionalInput<ClusterProtectConfig>(map['protectConfig']),
      rbacBindingConfig: Input.asOptionalInput<ClusterRbacBindingConfig>(
          map['rbacBindingConfig']),
      releaseChannel:
          Input.asOptionalInput<ClusterReleaseChannel>(map['releaseChannel']),
      removeDefaultNodePool:
          Input.asOptionalInput<bool>(map['removeDefaultNodePool']),
      resourceLabels:
          Input.asOptionalInput<Map<String, String>>(map['resourceLabels']),
      resourceUsageExportConfig:
          Input.asOptionalInput<ClusterResourceUsageExportConfig>(
              map['resourceUsageExportConfig']),
      secretManagerConfig: Input.asOptionalInput<ClusterSecretManagerConfig>(
          map['secretManagerConfig']),
      secretSyncConfig: Input.asOptionalInput<ClusterSecretSyncConfig>(
          map['secretSyncConfig']),
      securityPostureConfig:
          Input.asOptionalInput<ClusterSecurityPostureConfig>(
              map['securityPostureConfig']),
      serviceExternalIpsConfig:
          Input.asOptionalInput<ClusterServiceExternalIpsConfig>(
              map['serviceExternalIpsConfig']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
      tpuConfig: Input.asOptionalInput<ClusterTpuConfig>(map['tpuConfig']),
      userManagedKeysConfig:
          Input.asOptionalInput<ClusterUserManagedKeysConfig>(
              map['userManagedKeysConfig']),
      verticalPodAutoscaling:
          Input.asOptionalInput<ClusterVerticalPodAutoscaling>(
              map['verticalPodAutoscaling']),
      workloadAltsConfig: Input.asOptionalInput<ClusterWorkloadAltsConfig>(
          map['workloadAltsConfig']),
      workloadIdentityConfig:
          Input.asOptionalInput<ClusterWorkloadIdentityConfig>(
              map['workloadIdentityConfig']),
    );
  }
}
