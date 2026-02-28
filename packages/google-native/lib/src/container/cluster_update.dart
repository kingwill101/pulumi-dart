// ignore_for_file: unused_element, unnecessary_cast

import 'additional_pod_ranges_config.dart';
import 'addons_config.dart';
import 'authenticator_groups_config.dart';
import 'binary_authorization.dart';
import 'cluster_autoscaling.dart';
import 'cluster_network_performance_config.dart';
import 'cluster_update_desired_datapath_provider.dart';
import 'cluster_update_desired_private_ipv6_google_access.dart';
import 'cluster_update_desired_stack_type.dart';
import 'cost_management_config.dart';
import 'database_encryption.dart';
import 'default_snat_status.dart';
import 'dnsconfig.dart';
import 'fleet.dart';
import 'gateway_apiconfig.dart';
import 'gcfs_config.dart';
import 'identity_service_config.dart';
import 'ilbsubsetting_config.dart';
import 'intra_node_visibility_config.dart';
import 'k8s_beta_apiconfig.dart';
import 'logging_config.dart';
import 'master_authorized_networks_config.dart';
import 'mesh_certificates.dart';
import 'monitoring_config.dart';
import 'network_tags.dart';
import 'node_pool_autoscaling.dart';
import 'node_pool_logging_config.dart';
import 'notification_config.dart';
import 'parent_product_config.dart';
import 'private_cluster_config.dart';
import 'release_channel.dart';
import 'resource_manager_tags.dart';
import 'resource_usage_export_config.dart';
import 'security_posture_config.dart';
import 'service_external_ips_config.dart';
import 'shielded_nodes.dart';
import 'vertical_pod_autoscaling.dart';
import 'workload_identity_config.dart';
import 'workload_policy_config.dart';

/// ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.
class ClusterUpdate {
  /// The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  final AdditionalPodRangesConfig? additionalPodRangesConfig;

  /// Configurations for the various addons available to run in the cluster.
  final AddonsConfig? desiredAddonsConfig;

  /// The desired authenticator groups config for the cluster.
  final AuthenticatorGroupsConfig? desiredAuthenticatorGroupsConfig;

  /// The desired workload policy configuration for the autopilot cluster.
  final WorkloadPolicyConfig? desiredAutopilotWorkloadPolicyConfig;

  /// The desired configuration options for the Binary Authorization feature.
  final BinaryAuthorization? desiredBinaryAuthorization;

  /// Cluster-level autoscaling configuration.
  final ClusterAutoscaling? desiredClusterAutoscaling;

  /// The desired configuration for the fine-grained cost management feature.
  final CostManagementConfig? desiredCostManagementConfig;

  /// Configuration of etcd encryption.
  final DatabaseEncryption? desiredDatabaseEncryption;

  /// The desired datapath provider for the cluster.
  final ClusterUpdateDesiredDatapathProvider? desiredDatapathProvider;

  /// The desired status of whether to disable default sNAT for this cluster.
  final DefaultSnatStatus? desiredDefaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  final DNSConfig? desiredDnsConfig;

  /// Enable/Disable FQDN Network Policy for the cluster.
  final bool? desiredEnableFqdnNetworkPolicy;

  /// Enable/Disable private endpoint for the cluster's master.
  final bool? desiredEnablePrivateEndpoint;

  /// The desired fleet configuration for the cluster.
  final Fleet? desiredFleet;

  /// The desired config of Gateway API on this cluster.
  final GatewayAPIConfig? desiredGatewayApiConfig;

  /// The desired GCFS config for the cluster
  final GcfsConfig? desiredGcfsConfig;

  /// The desired Identity Service component configuration.
  final IdentityServiceConfig? desiredIdentityServiceConfig;

  /// The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  final String? desiredImageType;

  /// The desired config of Intra-node visibility.
  final IntraNodeVisibilityConfig? desiredIntraNodeVisibilityConfig;

  /// Desired Beta APIs to be enabled for cluster.
  final K8sBetaAPIConfig? desiredK8sBetaApis;

  /// The desired L4 Internal Load Balancer Subsetting configuration.
  final ILBSubsettingConfig? desiredL4ilbSubsettingConfig;

  /// The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  final List<String>? desiredLocations;

  /// The desired logging configuration.
  final LoggingConfig? desiredLoggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final String? desiredLoggingService;

  /// The desired configuration options for master authorized networks feature.
  final MasterAuthorizedNetworksConfig? desiredMasterAuthorizedNetworksConfig;

  /// The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  final String? desiredMasterVersion;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final MeshCertificates? desiredMeshCertificates;

  /// The desired monitoring configuration.
  final MonitoringConfig? desiredMonitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final String? desiredMonitoringService;

  /// The desired network performance config.
  final ClusterNetworkPerformanceConfig? desiredNetworkPerformanceConfig;

  /// The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final NetworkTags? desiredNodePoolAutoConfigNetworkTags;

  /// The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final ResourceManagerTags? desiredNodePoolAutoConfigResourceManagerTags;

  /// Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  final NodePoolAutoscaling? desiredNodePoolAutoscaling;

  /// The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family" or "desired_node_pool_autoscaling" is specified and there is more than one node pool on the cluster.
  final String? desiredNodePoolId;

  /// The desired node pool logging configuration defaults for the cluster.
  final NodePoolLoggingConfig? desiredNodePoolLoggingConfig;

  /// The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  final String? desiredNodeVersion;

  /// The desired notification configuration.
  final NotificationConfig? desiredNotificationConfig;

  /// The desired parent product config for the cluster.
  final ParentProductConfig? desiredParentProductConfig;

  /// The desired private cluster configuration.
  final PrivateClusterConfig? desiredPrivateClusterConfig;

  /// The desired state of IPv6 connectivity to Google Services.
  final ClusterUpdateDesiredPrivateIpv6GoogleAccess?
      desiredPrivateIpv6GoogleAccess;

  /// The desired release channel configuration.
  final ReleaseChannel? desiredReleaseChannel;

  /// The desired configuration for exporting resource usage.
  final ResourceUsageExportConfig? desiredResourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  final SecurityPostureConfig? desiredSecurityPostureConfig;

  /// ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  final ServiceExternalIPsConfig? desiredServiceExternalIpsConfig;

  /// Configuration for Shielded Nodes.
  final ShieldedNodes? desiredShieldedNodes;

  /// The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  final ClusterUpdateDesiredStackType? desiredStackType;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  final VerticalPodAutoscaling? desiredVerticalPodAutoscaling;

  /// Configuration for Workload Identity.
  final WorkloadIdentityConfig? desiredWorkloadIdentityConfig;

  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis
  final K8sBetaAPIConfig? enableK8sBetaApis;

  /// The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  final String? etag;

  /// The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  final AdditionalPodRangesConfig? removedAdditionalPodRangesConfig;

  /// Creates a new [ClusterUpdate].
  /// [additionalPodRangesConfig] The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  /// [desiredAddonsConfig] Configurations for the various addons available to run in the cluster.
  /// [desiredAuthenticatorGroupsConfig] The desired authenticator groups config for the cluster.
  /// [desiredAutopilotWorkloadPolicyConfig] The desired workload policy configuration for the autopilot cluster.
  /// [desiredBinaryAuthorization] The desired configuration options for the Binary Authorization feature.
  /// [desiredClusterAutoscaling] Cluster-level autoscaling configuration.
  /// [desiredCostManagementConfig] The desired configuration for the fine-grained cost management feature.
  /// [desiredDatabaseEncryption] Configuration of etcd encryption.
  /// [desiredDatapathProvider] The desired datapath provider for the cluster.
  /// [desiredDefaultSnatStatus] The desired status of whether to disable default sNAT for this cluster.
  /// [desiredDnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [desiredEnableFqdnNetworkPolicy] Enable/Disable FQDN Network Policy for the cluster.
  /// [desiredEnablePrivateEndpoint] Enable/Disable private endpoint for the cluster's master.
  /// [desiredFleet] The desired fleet configuration for the cluster.
  /// [desiredGatewayApiConfig] The desired config of Gateway API on this cluster.
  /// [desiredGcfsConfig] The desired GCFS config for the cluster
  /// [desiredIdentityServiceConfig] The desired Identity Service component configuration.
  /// [desiredImageType] The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  /// [desiredIntraNodeVisibilityConfig] The desired config of Intra-node visibility.
  /// [desiredK8sBetaApis] Desired Beta APIs to be enabled for cluster.
  /// [desiredL4ilbSubsettingConfig] The desired L4 Internal Load Balancer Subsetting configuration.
  /// [desiredLocations] The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  /// [desiredLoggingConfig] The desired logging configuration.
  /// [desiredLoggingService] The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  /// [desiredMasterAuthorizedNetworksConfig] The desired configuration options for master authorized networks feature.
  /// [desiredMasterVersion] The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  /// [desiredMeshCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [desiredMonitoringConfig] The desired monitoring configuration.
  /// [desiredMonitoringService] The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  /// [desiredNetworkPerformanceConfig] The desired network performance config.
  /// [desiredNodePoolAutoConfigNetworkTags] The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [desiredNodePoolAutoConfigResourceManagerTags] The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [desiredNodePoolAutoscaling] Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  /// [desiredNodePoolId] The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family" or "desired_node_pool_autoscaling" is specified and there is more than one node pool on the cluster.
  /// [desiredNodePoolLoggingConfig] The desired node pool logging configuration defaults for the cluster.
  /// [desiredNodeVersion] The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  /// [desiredNotificationConfig] The desired notification configuration.
  /// [desiredParentProductConfig] The desired parent product config for the cluster.
  /// [desiredPrivateClusterConfig] The desired private cluster configuration.
  /// [desiredPrivateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services.
  /// [desiredReleaseChannel] The desired release channel configuration.
  /// [desiredResourceUsageExportConfig] The desired configuration for exporting resource usage.
  /// [desiredSecurityPostureConfig] Enable/Disable Security Posture API features for the cluster.
  /// [desiredServiceExternalIpsConfig] ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  /// [desiredShieldedNodes] Configuration for Shielded Nodes.
  /// [desiredStackType] The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  /// [desiredVerticalPodAutoscaling] Cluster-level Vertical Pod Autoscaling configuration.
  /// [desiredWorkloadIdentityConfig] Configuration for Workload Identity.
  /// [enableK8sBetaApis] Kubernetes open source beta apis enabled on the cluster. Only beta apis
  /// [etag] The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  /// [removedAdditionalPodRangesConfig] The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  ClusterUpdate({
    this.additionalPodRangesConfig,
    this.desiredAddonsConfig,
    this.desiredAuthenticatorGroupsConfig,
    this.desiredAutopilotWorkloadPolicyConfig,
    this.desiredBinaryAuthorization,
    this.desiredClusterAutoscaling,
    this.desiredCostManagementConfig,
    this.desiredDatabaseEncryption,
    this.desiredDatapathProvider,
    this.desiredDefaultSnatStatus,
    this.desiredDnsConfig,
    this.desiredEnableFqdnNetworkPolicy,
    this.desiredEnablePrivateEndpoint,
    this.desiredFleet,
    this.desiredGatewayApiConfig,
    this.desiredGcfsConfig,
    this.desiredIdentityServiceConfig,
    this.desiredImageType,
    this.desiredIntraNodeVisibilityConfig,
    this.desiredK8sBetaApis,
    this.desiredL4ilbSubsettingConfig,
    this.desiredLocations,
    this.desiredLoggingConfig,
    this.desiredLoggingService,
    this.desiredMasterAuthorizedNetworksConfig,
    this.desiredMasterVersion,
    this.desiredMeshCertificates,
    this.desiredMonitoringConfig,
    this.desiredMonitoringService,
    this.desiredNetworkPerformanceConfig,
    this.desiredNodePoolAutoConfigNetworkTags,
    this.desiredNodePoolAutoConfigResourceManagerTags,
    this.desiredNodePoolAutoscaling,
    this.desiredNodePoolId,
    this.desiredNodePoolLoggingConfig,
    this.desiredNodeVersion,
    this.desiredNotificationConfig,
    this.desiredParentProductConfig,
    this.desiredPrivateClusterConfig,
    this.desiredPrivateIpv6GoogleAccess,
    this.desiredReleaseChannel,
    this.desiredResourceUsageExportConfig,
    this.desiredSecurityPostureConfig,
    this.desiredServiceExternalIpsConfig,
    this.desiredShieldedNodes,
    this.desiredStackType,
    this.desiredVerticalPodAutoscaling,
    this.desiredWorkloadIdentityConfig,
    this.enableK8sBetaApis,
    this.etag,
    this.removedAdditionalPodRangesConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalPodRangesConfigValue = additionalPodRangesConfig;
    if (additionalPodRangesConfigValue != null) {
      map['additionalPodRangesConfig'] = additionalPodRangesConfigValue.toMap();
    }
    final desiredAddonsConfigValue = desiredAddonsConfig;
    if (desiredAddonsConfigValue != null) {
      map['desiredAddonsConfig'] = desiredAddonsConfigValue.toMap();
    }
    final desiredAuthenticatorGroupsConfigValue =
        desiredAuthenticatorGroupsConfig;
    if (desiredAuthenticatorGroupsConfigValue != null) {
      map['desiredAuthenticatorGroupsConfig'] =
          desiredAuthenticatorGroupsConfigValue.toMap();
    }
    final desiredAutopilotWorkloadPolicyConfigValue =
        desiredAutopilotWorkloadPolicyConfig;
    if (desiredAutopilotWorkloadPolicyConfigValue != null) {
      map['desiredAutopilotWorkloadPolicyConfig'] =
          desiredAutopilotWorkloadPolicyConfigValue.toMap();
    }
    final desiredBinaryAuthorizationValue = desiredBinaryAuthorization;
    if (desiredBinaryAuthorizationValue != null) {
      map['desiredBinaryAuthorization'] =
          desiredBinaryAuthorizationValue.toMap();
    }
    final desiredClusterAutoscalingValue = desiredClusterAutoscaling;
    if (desiredClusterAutoscalingValue != null) {
      map['desiredClusterAutoscaling'] = desiredClusterAutoscalingValue.toMap();
    }
    final desiredCostManagementConfigValue = desiredCostManagementConfig;
    if (desiredCostManagementConfigValue != null) {
      map['desiredCostManagementConfig'] =
          desiredCostManagementConfigValue.toMap();
    }
    final desiredDatabaseEncryptionValue = desiredDatabaseEncryption;
    if (desiredDatabaseEncryptionValue != null) {
      map['desiredDatabaseEncryption'] = desiredDatabaseEncryptionValue.toMap();
    }
    final desiredDatapathProviderValue = desiredDatapathProvider;
    if (desiredDatapathProviderValue != null) {
      map['desiredDatapathProvider'] = desiredDatapathProviderValue.value;
    }
    final desiredDefaultSnatStatusValue = desiredDefaultSnatStatus;
    if (desiredDefaultSnatStatusValue != null) {
      map['desiredDefaultSnatStatus'] = desiredDefaultSnatStatusValue.toMap();
    }
    final desiredDnsConfigValue = desiredDnsConfig;
    if (desiredDnsConfigValue != null) {
      map['desiredDnsConfig'] = desiredDnsConfigValue.toMap();
    }
    final desiredEnableFqdnNetworkPolicyValue = desiredEnableFqdnNetworkPolicy;
    if (desiredEnableFqdnNetworkPolicyValue != null) {
      map['desiredEnableFqdnNetworkPolicy'] =
          desiredEnableFqdnNetworkPolicyValue;
    }
    final desiredEnablePrivateEndpointValue = desiredEnablePrivateEndpoint;
    if (desiredEnablePrivateEndpointValue != null) {
      map['desiredEnablePrivateEndpoint'] = desiredEnablePrivateEndpointValue;
    }
    final desiredFleetValue = desiredFleet;
    if (desiredFleetValue != null) {
      map['desiredFleet'] = desiredFleetValue.toMap();
    }
    final desiredGatewayApiConfigValue = desiredGatewayApiConfig;
    if (desiredGatewayApiConfigValue != null) {
      map['desiredGatewayApiConfig'] = desiredGatewayApiConfigValue.toMap();
    }
    final desiredGcfsConfigValue = desiredGcfsConfig;
    if (desiredGcfsConfigValue != null) {
      map['desiredGcfsConfig'] = desiredGcfsConfigValue.toMap();
    }
    final desiredIdentityServiceConfigValue = desiredIdentityServiceConfig;
    if (desiredIdentityServiceConfigValue != null) {
      map['desiredIdentityServiceConfig'] =
          desiredIdentityServiceConfigValue.toMap();
    }
    final desiredImageTypeValue = desiredImageType;
    if (desiredImageTypeValue != null) {
      map['desiredImageType'] = desiredImageTypeValue;
    }
    final desiredIntraNodeVisibilityConfigValue =
        desiredIntraNodeVisibilityConfig;
    if (desiredIntraNodeVisibilityConfigValue != null) {
      map['desiredIntraNodeVisibilityConfig'] =
          desiredIntraNodeVisibilityConfigValue.toMap();
    }
    final desiredK8sBetaApisValue = desiredK8sBetaApis;
    if (desiredK8sBetaApisValue != null) {
      map['desiredK8sBetaApis'] = desiredK8sBetaApisValue.toMap();
    }
    final desiredL4ilbSubsettingConfigValue = desiredL4ilbSubsettingConfig;
    if (desiredL4ilbSubsettingConfigValue != null) {
      map['desiredL4ilbSubsettingConfig'] =
          desiredL4ilbSubsettingConfigValue.toMap();
    }
    final desiredLocationsValue = desiredLocations;
    if (desiredLocationsValue != null) {
      map['desiredLocations'] = desiredLocationsValue;
    }
    final desiredLoggingConfigValue = desiredLoggingConfig;
    if (desiredLoggingConfigValue != null) {
      map['desiredLoggingConfig'] = desiredLoggingConfigValue.toMap();
    }
    final desiredLoggingServiceValue = desiredLoggingService;
    if (desiredLoggingServiceValue != null) {
      map['desiredLoggingService'] = desiredLoggingServiceValue;
    }
    final desiredMasterAuthorizedNetworksConfigValue =
        desiredMasterAuthorizedNetworksConfig;
    if (desiredMasterAuthorizedNetworksConfigValue != null) {
      map['desiredMasterAuthorizedNetworksConfig'] =
          desiredMasterAuthorizedNetworksConfigValue.toMap();
    }
    final desiredMasterVersionValue = desiredMasterVersion;
    if (desiredMasterVersionValue != null) {
      map['desiredMasterVersion'] = desiredMasterVersionValue;
    }
    final desiredMeshCertificatesValue = desiredMeshCertificates;
    if (desiredMeshCertificatesValue != null) {
      map['desiredMeshCertificates'] = desiredMeshCertificatesValue.toMap();
    }
    final desiredMonitoringConfigValue = desiredMonitoringConfig;
    if (desiredMonitoringConfigValue != null) {
      map['desiredMonitoringConfig'] = desiredMonitoringConfigValue.toMap();
    }
    final desiredMonitoringServiceValue = desiredMonitoringService;
    if (desiredMonitoringServiceValue != null) {
      map['desiredMonitoringService'] = desiredMonitoringServiceValue;
    }
    final desiredNetworkPerformanceConfigValue =
        desiredNetworkPerformanceConfig;
    if (desiredNetworkPerformanceConfigValue != null) {
      map['desiredNetworkPerformanceConfig'] =
          desiredNetworkPerformanceConfigValue.toMap();
    }
    final desiredNodePoolAutoConfigNetworkTagsValue =
        desiredNodePoolAutoConfigNetworkTags;
    if (desiredNodePoolAutoConfigNetworkTagsValue != null) {
      map['desiredNodePoolAutoConfigNetworkTags'] =
          desiredNodePoolAutoConfigNetworkTagsValue.toMap();
    }
    final desiredNodePoolAutoConfigResourceManagerTagsValue =
        desiredNodePoolAutoConfigResourceManagerTags;
    if (desiredNodePoolAutoConfigResourceManagerTagsValue != null) {
      map['desiredNodePoolAutoConfigResourceManagerTags'] =
          desiredNodePoolAutoConfigResourceManagerTagsValue.toMap();
    }
    final desiredNodePoolAutoscalingValue = desiredNodePoolAutoscaling;
    if (desiredNodePoolAutoscalingValue != null) {
      map['desiredNodePoolAutoscaling'] =
          desiredNodePoolAutoscalingValue.toMap();
    }
    final desiredNodePoolIdValue = desiredNodePoolId;
    if (desiredNodePoolIdValue != null) {
      map['desiredNodePoolId'] = desiredNodePoolIdValue;
    }
    final desiredNodePoolLoggingConfigValue = desiredNodePoolLoggingConfig;
    if (desiredNodePoolLoggingConfigValue != null) {
      map['desiredNodePoolLoggingConfig'] =
          desiredNodePoolLoggingConfigValue.toMap();
    }
    final desiredNodeVersionValue = desiredNodeVersion;
    if (desiredNodeVersionValue != null) {
      map['desiredNodeVersion'] = desiredNodeVersionValue;
    }
    final desiredNotificationConfigValue = desiredNotificationConfig;
    if (desiredNotificationConfigValue != null) {
      map['desiredNotificationConfig'] = desiredNotificationConfigValue.toMap();
    }
    final desiredParentProductConfigValue = desiredParentProductConfig;
    if (desiredParentProductConfigValue != null) {
      map['desiredParentProductConfig'] =
          desiredParentProductConfigValue.toMap();
    }
    final desiredPrivateClusterConfigValue = desiredPrivateClusterConfig;
    if (desiredPrivateClusterConfigValue != null) {
      map['desiredPrivateClusterConfig'] =
          desiredPrivateClusterConfigValue.toMap();
    }
    final desiredPrivateIpv6GoogleAccessValue = desiredPrivateIpv6GoogleAccess;
    if (desiredPrivateIpv6GoogleAccessValue != null) {
      map['desiredPrivateIpv6GoogleAccess'] =
          desiredPrivateIpv6GoogleAccessValue.value;
    }
    final desiredReleaseChannelValue = desiredReleaseChannel;
    if (desiredReleaseChannelValue != null) {
      map['desiredReleaseChannel'] = desiredReleaseChannelValue.toMap();
    }
    final desiredResourceUsageExportConfigValue =
        desiredResourceUsageExportConfig;
    if (desiredResourceUsageExportConfigValue != null) {
      map['desiredResourceUsageExportConfig'] =
          desiredResourceUsageExportConfigValue.toMap();
    }
    final desiredSecurityPostureConfigValue = desiredSecurityPostureConfig;
    if (desiredSecurityPostureConfigValue != null) {
      map['desiredSecurityPostureConfig'] =
          desiredSecurityPostureConfigValue.toMap();
    }
    final desiredServiceExternalIpsConfigValue =
        desiredServiceExternalIpsConfig;
    if (desiredServiceExternalIpsConfigValue != null) {
      map['desiredServiceExternalIpsConfig'] =
          desiredServiceExternalIpsConfigValue.toMap();
    }
    final desiredShieldedNodesValue = desiredShieldedNodes;
    if (desiredShieldedNodesValue != null) {
      map['desiredShieldedNodes'] = desiredShieldedNodesValue.toMap();
    }
    final desiredStackTypeValue = desiredStackType;
    if (desiredStackTypeValue != null) {
      map['desiredStackType'] = desiredStackTypeValue.value;
    }
    final desiredVerticalPodAutoscalingValue = desiredVerticalPodAutoscaling;
    if (desiredVerticalPodAutoscalingValue != null) {
      map['desiredVerticalPodAutoscaling'] =
          desiredVerticalPodAutoscalingValue.toMap();
    }
    final desiredWorkloadIdentityConfigValue = desiredWorkloadIdentityConfig;
    if (desiredWorkloadIdentityConfigValue != null) {
      map['desiredWorkloadIdentityConfig'] =
          desiredWorkloadIdentityConfigValue.toMap();
    }
    final enableK8sBetaApisValue = enableK8sBetaApis;
    if (enableK8sBetaApisValue != null) {
      map['enableK8sBetaApis'] = enableK8sBetaApisValue.toMap();
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final removedAdditionalPodRangesConfigValue =
        removedAdditionalPodRangesConfig;
    if (removedAdditionalPodRangesConfigValue != null) {
      map['removedAdditionalPodRangesConfig'] =
          removedAdditionalPodRangesConfigValue.toMap();
    }
    return map;
  }

  factory ClusterUpdate.fromMap(Map<String, dynamic> map) {
    return ClusterUpdate(
      additionalPodRangesConfig: map['additionalPodRangesConfig'] == null
          ? null
          : AdditionalPodRangesConfig.fromMap(
              (map['additionalPodRangesConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredAddonsConfig: map['desiredAddonsConfig'] == null
          ? null
          : AddonsConfig.fromMap(
              (map['desiredAddonsConfig'] as Map).cast<String, dynamic>()),
      desiredAuthenticatorGroupsConfig:
          map['desiredAuthenticatorGroupsConfig'] == null
              ? null
              : AuthenticatorGroupsConfig.fromMap(
                  (map['desiredAuthenticatorGroupsConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredAutopilotWorkloadPolicyConfig:
          map['desiredAutopilotWorkloadPolicyConfig'] == null
              ? null
              : WorkloadPolicyConfig.fromMap(
                  (map['desiredAutopilotWorkloadPolicyConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredBinaryAuthorization: map['desiredBinaryAuthorization'] == null
          ? null
          : BinaryAuthorization.fromMap(
              (map['desiredBinaryAuthorization'] as Map)
                  .cast<String, dynamic>()),
      desiredClusterAutoscaling: map['desiredClusterAutoscaling'] == null
          ? null
          : ClusterAutoscaling.fromMap((map['desiredClusterAutoscaling'] as Map)
              .cast<String, dynamic>()),
      desiredCostManagementConfig: map['desiredCostManagementConfig'] == null
          ? null
          : CostManagementConfig.fromMap(
              (map['desiredCostManagementConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredDatabaseEncryption: map['desiredDatabaseEncryption'] == null
          ? null
          : DatabaseEncryption.fromMap((map['desiredDatabaseEncryption'] as Map)
              .cast<String, dynamic>()),
      desiredDatapathProvider: map['desiredDatapathProvider'] == null
          ? null
          : ClusterUpdateDesiredDatapathProvider.fromValue(
              map['desiredDatapathProvider'] as String),
      desiredDefaultSnatStatus: map['desiredDefaultSnatStatus'] == null
          ? null
          : DefaultSnatStatus.fromMap(
              (map['desiredDefaultSnatStatus'] as Map).cast<String, dynamic>()),
      desiredDnsConfig: map['desiredDnsConfig'] == null
          ? null
          : DNSConfig.fromMap(
              (map['desiredDnsConfig'] as Map).cast<String, dynamic>()),
      desiredEnableFqdnNetworkPolicy:
          map['desiredEnableFqdnNetworkPolicy'] == null
              ? null
              : map['desiredEnableFqdnNetworkPolicy'] as bool,
      desiredEnablePrivateEndpoint: map['desiredEnablePrivateEndpoint'] == null
          ? null
          : map['desiredEnablePrivateEndpoint'] as bool,
      desiredFleet: map['desiredFleet'] == null
          ? null
          : Fleet.fromMap((map['desiredFleet'] as Map).cast<String, dynamic>()),
      desiredGatewayApiConfig: map['desiredGatewayApiConfig'] == null
          ? null
          : GatewayAPIConfig.fromMap(
              (map['desiredGatewayApiConfig'] as Map).cast<String, dynamic>()),
      desiredGcfsConfig: map['desiredGcfsConfig'] == null
          ? null
          : GcfsConfig.fromMap(
              (map['desiredGcfsConfig'] as Map).cast<String, dynamic>()),
      desiredIdentityServiceConfig: map['desiredIdentityServiceConfig'] == null
          ? null
          : IdentityServiceConfig.fromMap(
              (map['desiredIdentityServiceConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredImageType: map['desiredImageType'] == null
          ? null
          : map['desiredImageType'] as String,
      desiredIntraNodeVisibilityConfig:
          map['desiredIntraNodeVisibilityConfig'] == null
              ? null
              : IntraNodeVisibilityConfig.fromMap(
                  (map['desiredIntraNodeVisibilityConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredK8sBetaApis: map['desiredK8sBetaApis'] == null
          ? null
          : K8sBetaAPIConfig.fromMap(
              (map['desiredK8sBetaApis'] as Map).cast<String, dynamic>()),
      desiredL4ilbSubsettingConfig: map['desiredL4ilbSubsettingConfig'] == null
          ? null
          : ILBSubsettingConfig.fromMap(
              (map['desiredL4ilbSubsettingConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredLocations: map['desiredLocations'] == null
          ? null
          : (map['desiredLocations'] as List).cast<String>(),
      desiredLoggingConfig: map['desiredLoggingConfig'] == null
          ? null
          : LoggingConfig.fromMap(
              (map['desiredLoggingConfig'] as Map).cast<String, dynamic>()),
      desiredLoggingService: map['desiredLoggingService'] == null
          ? null
          : map['desiredLoggingService'] as String,
      desiredMasterAuthorizedNetworksConfig:
          map['desiredMasterAuthorizedNetworksConfig'] == null
              ? null
              : MasterAuthorizedNetworksConfig.fromMap(
                  (map['desiredMasterAuthorizedNetworksConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredMasterVersion: map['desiredMasterVersion'] == null
          ? null
          : map['desiredMasterVersion'] as String,
      desiredMeshCertificates: map['desiredMeshCertificates'] == null
          ? null
          : MeshCertificates.fromMap(
              (map['desiredMeshCertificates'] as Map).cast<String, dynamic>()),
      desiredMonitoringConfig: map['desiredMonitoringConfig'] == null
          ? null
          : MonitoringConfig.fromMap(
              (map['desiredMonitoringConfig'] as Map).cast<String, dynamic>()),
      desiredMonitoringService: map['desiredMonitoringService'] == null
          ? null
          : map['desiredMonitoringService'] as String,
      desiredNetworkPerformanceConfig:
          map['desiredNetworkPerformanceConfig'] == null
              ? null
              : ClusterNetworkPerformanceConfig.fromMap(
                  (map['desiredNetworkPerformanceConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoConfigNetworkTags:
          map['desiredNodePoolAutoConfigNetworkTags'] == null
              ? null
              : NetworkTags.fromMap(
                  (map['desiredNodePoolAutoConfigNetworkTags'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoConfigResourceManagerTags:
          map['desiredNodePoolAutoConfigResourceManagerTags'] == null
              ? null
              : ResourceManagerTags.fromMap(
                  (map['desiredNodePoolAutoConfigResourceManagerTags'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoscaling: map['desiredNodePoolAutoscaling'] == null
          ? null
          : NodePoolAutoscaling.fromMap(
              (map['desiredNodePoolAutoscaling'] as Map)
                  .cast<String, dynamic>()),
      desiredNodePoolId: map['desiredNodePoolId'] == null
          ? null
          : map['desiredNodePoolId'] as String,
      desiredNodePoolLoggingConfig: map['desiredNodePoolLoggingConfig'] == null
          ? null
          : NodePoolLoggingConfig.fromMap(
              (map['desiredNodePoolLoggingConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredNodeVersion: map['desiredNodeVersion'] == null
          ? null
          : map['desiredNodeVersion'] as String,
      desiredNotificationConfig: map['desiredNotificationConfig'] == null
          ? null
          : NotificationConfig.fromMap((map['desiredNotificationConfig'] as Map)
              .cast<String, dynamic>()),
      desiredParentProductConfig: map['desiredParentProductConfig'] == null
          ? null
          : ParentProductConfig.fromMap(
              (map['desiredParentProductConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredPrivateClusterConfig: map['desiredPrivateClusterConfig'] == null
          ? null
          : PrivateClusterConfig.fromMap(
              (map['desiredPrivateClusterConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredPrivateIpv6GoogleAccess:
          map['desiredPrivateIpv6GoogleAccess'] == null
              ? null
              : ClusterUpdateDesiredPrivateIpv6GoogleAccess.fromValue(
                  map['desiredPrivateIpv6GoogleAccess'] as String),
      desiredReleaseChannel: map['desiredReleaseChannel'] == null
          ? null
          : ReleaseChannel.fromMap(
              (map['desiredReleaseChannel'] as Map).cast<String, dynamic>()),
      desiredResourceUsageExportConfig:
          map['desiredResourceUsageExportConfig'] == null
              ? null
              : ResourceUsageExportConfig.fromMap(
                  (map['desiredResourceUsageExportConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredSecurityPostureConfig: map['desiredSecurityPostureConfig'] == null
          ? null
          : SecurityPostureConfig.fromMap(
              (map['desiredSecurityPostureConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredServiceExternalIpsConfig:
          map['desiredServiceExternalIpsConfig'] == null
              ? null
              : ServiceExternalIPsConfig.fromMap(
                  (map['desiredServiceExternalIpsConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredShieldedNodes: map['desiredShieldedNodes'] == null
          ? null
          : ShieldedNodes.fromMap(
              (map['desiredShieldedNodes'] as Map).cast<String, dynamic>()),
      desiredStackType: map['desiredStackType'] == null
          ? null
          : ClusterUpdateDesiredStackType.fromValue(
              map['desiredStackType'] as String),
      desiredVerticalPodAutoscaling:
          map['desiredVerticalPodAutoscaling'] == null
              ? null
              : VerticalPodAutoscaling.fromMap(
                  (map['desiredVerticalPodAutoscaling'] as Map)
                      .cast<String, dynamic>()),
      desiredWorkloadIdentityConfig:
          map['desiredWorkloadIdentityConfig'] == null
              ? null
              : WorkloadIdentityConfig.fromMap(
                  (map['desiredWorkloadIdentityConfig'] as Map)
                      .cast<String, dynamic>()),
      enableK8sBetaApis: map['enableK8sBetaApis'] == null
          ? null
          : K8sBetaAPIConfig.fromMap(
              (map['enableK8sBetaApis'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      removedAdditionalPodRangesConfig:
          map['removedAdditionalPodRangesConfig'] == null
              ? null
              : AdditionalPodRangesConfig.fromMap(
                  (map['removedAdditionalPodRangesConfig'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
