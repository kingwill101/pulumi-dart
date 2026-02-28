// ignore_for_file: unused_element, unnecessary_cast

import 'additional_pod_ranges_config_container_v1beta1.dart';
import 'addons_config_container_v1beta1.dart';
import 'authenticator_groups_config_container_v1beta1.dart';
import 'binary_authorization_container_v1beta1.dart';
import 'cluster_autoscaling_container_v1beta1.dart';
import 'cluster_network_performance_config_container_v1beta1.dart';
import 'cluster_telemetry.dart';
import 'cluster_update_desired_datapath_provider_container_v1beta1.dart';
import 'cluster_update_desired_in_transit_encryption_config.dart';
import 'cluster_update_desired_private_ipv6_google_access_container_v1beta1.dart';
import 'cluster_update_desired_stack_type_container_v1beta1.dart';
import 'cost_management_config_container_v1beta1.dart';
import 'database_encryption_container_v1beta1.dart';
import 'default_snat_status_container_v1beta1.dart';
import 'dnsconfig_container_v1beta1.dart';
import 'fleet_container_v1beta1.dart';
import 'gateway_apiconfig_container_v1beta1.dart';
import 'gcfs_config_container_v1beta1.dart';
import 'host_maintenance_policy.dart';
import 'identity_service_config_container_v1beta1.dart';
import 'ilbsubsetting_config_container_v1beta1.dart';
import 'intra_node_visibility_config_container_v1beta1.dart';
import 'k8s_beta_apiconfig_container_v1beta1.dart';
import 'logging_config_container_v1beta1.dart';
import 'master_authorized_networks_config_container_v1beta1.dart';
import 'mesh_certificates_container_v1beta1.dart';
import 'monitoring_config_container_v1beta1.dart';
import 'network_tags_container_v1beta1.dart';
import 'node_pool_autoscaling_container_v1beta1.dart';
import 'node_pool_logging_config_container_v1beta1.dart';
import 'notification_config_container_v1beta1.dart';
import 'parent_product_config_container_v1beta1.dart';
import 'pod_security_policy_config.dart';
import 'private_cluster_config_container_v1beta1.dart';
import 'protect_config.dart';
import 'release_channel_container_v1beta1.dart';
import 'resource_manager_tags_container_v1beta1.dart';
import 'resource_usage_export_config_container_v1beta1.dart';
import 'security_posture_config_container_v1beta1.dart';
import 'service_external_ips_config_container_v1beta1.dart';
import 'shielded_nodes_container_v1beta1.dart';
import 'tpu_config.dart';
import 'vertical_pod_autoscaling_container_v1beta1.dart';
import 'workload_altsconfig.dart';
import 'workload_certificates.dart';
import 'workload_identity_config_container_v1beta1.dart';
import 'workload_policy_config_container_v1beta1.dart';

/// ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.
class ClusterUpdateContainerV1beta1 {
  /// The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  final AdditionalPodRangesConfigContainerV1beta1? additionalPodRangesConfig;

  /// Configurations for the various addons available to run in the cluster.
  final AddonsConfigContainerV1beta1? desiredAddonsConfig;

  /// AuthenticatorGroupsConfig specifies the config for the cluster security groups settings.
  final AuthenticatorGroupsConfigContainerV1beta1?
      desiredAuthenticatorGroupsConfig;

  /// The desired workload policy configuration for the autopilot cluster.
  final WorkloadPolicyConfigContainerV1beta1?
      desiredAutopilotWorkloadPolicyConfig;

  /// The desired configuration options for the Binary Authorization feature.
  final BinaryAuthorizationContainerV1beta1? desiredBinaryAuthorization;

  /// Cluster-level autoscaling configuration.
  final ClusterAutoscalingContainerV1beta1? desiredClusterAutoscaling;

  /// The desired telemetry integration for the cluster.
  final ClusterTelemetry? desiredClusterTelemetry;

  /// The desired configuration for the fine-grained cost management feature.
  final CostManagementConfigContainerV1beta1? desiredCostManagementConfig;

  /// Configuration of etcd encryption.
  final DatabaseEncryptionContainerV1beta1? desiredDatabaseEncryption;

  /// The desired datapath provider for the cluster.
  final ClusterUpdateDesiredDatapathProviderContainerV1beta1?
      desiredDatapathProvider;

  /// The desired status of whether to disable default sNAT for this cluster.
  final DefaultSnatStatusContainerV1beta1? desiredDefaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  final DNSConfigContainerV1beta1? desiredDnsConfig;

  /// Enable/Disable FQDN Network Policy for the cluster.
  final bool? desiredEnableFqdnNetworkPolicy;

  /// Enable/Disable private endpoint for the cluster's master.
  final bool? desiredEnablePrivateEndpoint;

  /// The desired fleet configuration for the cluster.
  final FleetContainerV1beta1? desiredFleet;

  /// The desired config of Gateway API on this cluster.
  final GatewayAPIConfigContainerV1beta1? desiredGatewayApiConfig;

  /// The desired GCFS config for the cluster.
  final GcfsConfigContainerV1beta1? desiredGcfsConfig;

  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final HostMaintenancePolicy? desiredHostMaintenancePolicy;

  /// The desired Identity Service component configuration.
  final IdentityServiceConfigContainerV1beta1? desiredIdentityServiceConfig;

  /// The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  final String? desiredImageType;

  /// Specify the details of in-transit encryption.
  final ClusterUpdateDesiredInTransitEncryptionConfig?
      desiredInTransitEncryptionConfig;

  /// The desired config of Intra-node visibility.
  final IntraNodeVisibilityConfigContainerV1beta1?
      desiredIntraNodeVisibilityConfig;

  /// Beta APIs enabled for cluster.
  final K8sBetaAPIConfigContainerV1beta1? desiredK8sBetaApis;

  /// The desired L4 Internal Load Balancer Subsetting configuration.
  final ILBSubsettingConfigContainerV1beta1? desiredL4ilbSubsettingConfig;

  /// The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  final List<String>? desiredLocations;

  /// The desired logging configuration.
  final LoggingConfigContainerV1beta1? desiredLoggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final String? desiredLoggingService;

  /// Configuration for master components.
  final Map<String, dynamic>? desiredMaster;

  /// The desired configuration options for master authorized networks feature.
  final MasterAuthorizedNetworksConfigContainerV1beta1?
      desiredMasterAuthorizedNetworksConfig;

  /// The Kubernetes version to change the master to. The only valid value is the latest supported version. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  final String? desiredMasterVersion;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final MeshCertificatesContainerV1beta1? desiredMeshCertificates;

  /// The desired monitoring configuration.
  final MonitoringConfigContainerV1beta1? desiredMonitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final String? desiredMonitoringService;

  /// The desired network performance config.
  final ClusterNetworkPerformanceConfigContainerV1beta1?
      desiredNetworkPerformanceConfig;

  /// The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final NetworkTagsContainerV1beta1? desiredNodePoolAutoConfigNetworkTags;

  /// The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final ResourceManagerTagsContainerV1beta1?
      desiredNodePoolAutoConfigResourceManagerTags;

  /// Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  final NodePoolAutoscalingContainerV1beta1? desiredNodePoolAutoscaling;

  /// The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family", "desired_node_pool_autoscaling", or "desired_workload_metadata_config" is specified and there is more than one node pool on the cluster.
  final String? desiredNodePoolId;

  /// The desired node pool logging configuration defaults for the cluster.
  final NodePoolLoggingConfigContainerV1beta1? desiredNodePoolLoggingConfig;

  /// The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  final String? desiredNodeVersion;

  /// The desired notification configuration.
  final NotificationConfigContainerV1beta1? desiredNotificationConfig;

  /// The desired parent product config for the cluster.
  final ParentProductConfigContainerV1beta1? desiredParentProductConfig;

  /// The desired configuration options for the PodSecurityPolicy feature.
  final PodSecurityPolicyConfig? desiredPodSecurityPolicyConfig;

  /// The desired private cluster configuration.
  final PrivateClusterConfigContainerV1beta1? desiredPrivateClusterConfig;

  /// The desired state of IPv6 connectivity to Google Services.
  final ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1?
      desiredPrivateIpv6GoogleAccess;

  /// Deprecated: Use DesiredSecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  final ProtectConfig? desiredProtectConfig;

  /// The desired release channel configuration.
  final ReleaseChannelContainerV1beta1? desiredReleaseChannel;

  /// The desired configuration for exporting resource usage.
  final ResourceUsageExportConfigContainerV1beta1?
      desiredResourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  final SecurityPostureConfigContainerV1beta1? desiredSecurityPostureConfig;

  /// ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  final ServiceExternalIPsConfigContainerV1beta1?
      desiredServiceExternalIpsConfig;

  /// Configuration for Shielded Nodes.
  final ShieldedNodesContainerV1beta1? desiredShieldedNodes;

  /// The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  final ClusterUpdateDesiredStackTypeContainerV1beta1? desiredStackType;

  /// The desired Cloud TPU configuration.
  final TpuConfig? desiredTpuConfig;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  final VerticalPodAutoscalingContainerV1beta1? desiredVerticalPodAutoscaling;

  /// Configuration for direct-path (via ALTS) with workload identity.
  final WorkloadALTSConfig? desiredWorkloadAltsConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final WorkloadCertificates? desiredWorkloadCertificates;

  /// Configuration for Workload Identity.
  final WorkloadIdentityConfigContainerV1beta1? desiredWorkloadIdentityConfig;

  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis
  final K8sBetaAPIConfigContainerV1beta1? enableK8sBetaApis;

  /// The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  final String? etag;

  /// The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  final AdditionalPodRangesConfigContainerV1beta1?
      removedAdditionalPodRangesConfig;

  /// Creates a new [ClusterUpdateContainerV1beta1].
  /// [additionalPodRangesConfig] The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  /// [desiredAddonsConfig] Configurations for the various addons available to run in the cluster.
  /// [desiredAuthenticatorGroupsConfig] AuthenticatorGroupsConfig specifies the config for the cluster security groups settings.
  /// [desiredAutopilotWorkloadPolicyConfig] The desired workload policy configuration for the autopilot cluster.
  /// [desiredBinaryAuthorization] The desired configuration options for the Binary Authorization feature.
  /// [desiredClusterAutoscaling] Cluster-level autoscaling configuration.
  /// [desiredClusterTelemetry] The desired telemetry integration for the cluster.
  /// [desiredCostManagementConfig] The desired configuration for the fine-grained cost management feature.
  /// [desiredDatabaseEncryption] Configuration of etcd encryption.
  /// [desiredDatapathProvider] The desired datapath provider for the cluster.
  /// [desiredDefaultSnatStatus] The desired status of whether to disable default sNAT for this cluster.
  /// [desiredDnsConfig] DNSConfig contains clusterDNS config for this cluster.
  /// [desiredEnableFqdnNetworkPolicy] Enable/Disable FQDN Network Policy for the cluster.
  /// [desiredEnablePrivateEndpoint] Enable/Disable private endpoint for the cluster's master.
  /// [desiredFleet] The desired fleet configuration for the cluster.
  /// [desiredGatewayApiConfig] The desired config of Gateway API on this cluster.
  /// [desiredGcfsConfig] The desired GCFS config for the cluster.
  /// [desiredHostMaintenancePolicy] HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  /// [desiredIdentityServiceConfig] The desired Identity Service component configuration.
  /// [desiredImageType] The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  /// [desiredInTransitEncryptionConfig] Specify the details of in-transit encryption.
  /// [desiredIntraNodeVisibilityConfig] The desired config of Intra-node visibility.
  /// [desiredK8sBetaApis] Beta APIs enabled for cluster.
  /// [desiredL4ilbSubsettingConfig] The desired L4 Internal Load Balancer Subsetting configuration.
  /// [desiredLocations] The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  /// [desiredLoggingConfig] The desired logging configuration.
  /// [desiredLoggingService] The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  /// [desiredMaster] Configuration for master components.
  /// [desiredMasterAuthorizedNetworksConfig] The desired configuration options for master authorized networks feature.
  /// [desiredMasterVersion] The Kubernetes version to change the master to. The only valid value is the latest supported version. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  /// [desiredMeshCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [desiredMonitoringConfig] The desired monitoring configuration.
  /// [desiredMonitoringService] The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  /// [desiredNetworkPerformanceConfig] The desired network performance config.
  /// [desiredNodePoolAutoConfigNetworkTags] The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [desiredNodePoolAutoConfigResourceManagerTags] The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  /// [desiredNodePoolAutoscaling] Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  /// [desiredNodePoolId] The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family", "desired_node_pool_autoscaling", or "desired_workload_metadata_config" is specified and there is more than one node pool on the cluster.
  /// [desiredNodePoolLoggingConfig] The desired node pool logging configuration defaults for the cluster.
  /// [desiredNodeVersion] The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  /// [desiredNotificationConfig] The desired notification configuration.
  /// [desiredParentProductConfig] The desired parent product config for the cluster.
  /// [desiredPodSecurityPolicyConfig] The desired configuration options for the PodSecurityPolicy feature.
  /// [desiredPrivateClusterConfig] The desired private cluster configuration.
  /// [desiredPrivateIpv6GoogleAccess] The desired state of IPv6 connectivity to Google Services.
  /// [desiredProtectConfig] Deprecated: Use DesiredSecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  /// [desiredReleaseChannel] The desired release channel configuration.
  /// [desiredResourceUsageExportConfig] The desired configuration for exporting resource usage.
  /// [desiredSecurityPostureConfig] Enable/Disable Security Posture API features for the cluster.
  /// [desiredServiceExternalIpsConfig] ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  /// [desiredShieldedNodes] Configuration for Shielded Nodes.
  /// [desiredStackType] The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  /// [desiredTpuConfig] The desired Cloud TPU configuration.
  /// [desiredVerticalPodAutoscaling] Cluster-level Vertical Pod Autoscaling configuration.
  /// [desiredWorkloadAltsConfig] Configuration for direct-path (via ALTS) with workload identity.
  /// [desiredWorkloadCertificates] Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  /// [desiredWorkloadIdentityConfig] Configuration for Workload Identity.
  /// [enableK8sBetaApis] Kubernetes open source beta apis enabled on the cluster. Only beta apis
  /// [etag] The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  /// [removedAdditionalPodRangesConfig] The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  ClusterUpdateContainerV1beta1({
    this.additionalPodRangesConfig,
    this.desiredAddonsConfig,
    this.desiredAuthenticatorGroupsConfig,
    this.desiredAutopilotWorkloadPolicyConfig,
    this.desiredBinaryAuthorization,
    this.desiredClusterAutoscaling,
    this.desiredClusterTelemetry,
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
    this.desiredHostMaintenancePolicy,
    this.desiredIdentityServiceConfig,
    this.desiredImageType,
    this.desiredInTransitEncryptionConfig,
    this.desiredIntraNodeVisibilityConfig,
    this.desiredK8sBetaApis,
    this.desiredL4ilbSubsettingConfig,
    this.desiredLocations,
    this.desiredLoggingConfig,
    this.desiredLoggingService,
    this.desiredMaster,
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
    this.desiredPodSecurityPolicyConfig,
    this.desiredPrivateClusterConfig,
    this.desiredPrivateIpv6GoogleAccess,
    this.desiredProtectConfig,
    this.desiredReleaseChannel,
    this.desiredResourceUsageExportConfig,
    this.desiredSecurityPostureConfig,
    this.desiredServiceExternalIpsConfig,
    this.desiredShieldedNodes,
    this.desiredStackType,
    this.desiredTpuConfig,
    this.desiredVerticalPodAutoscaling,
    this.desiredWorkloadAltsConfig,
    this.desiredWorkloadCertificates,
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
    final desiredClusterTelemetryValue = desiredClusterTelemetry;
    if (desiredClusterTelemetryValue != null) {
      map['desiredClusterTelemetry'] = desiredClusterTelemetryValue.toMap();
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
    final desiredHostMaintenancePolicyValue = desiredHostMaintenancePolicy;
    if (desiredHostMaintenancePolicyValue != null) {
      map['desiredHostMaintenancePolicy'] =
          desiredHostMaintenancePolicyValue.toMap();
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
    final desiredInTransitEncryptionConfigValue =
        desiredInTransitEncryptionConfig;
    if (desiredInTransitEncryptionConfigValue != null) {
      map['desiredInTransitEncryptionConfig'] =
          desiredInTransitEncryptionConfigValue.value;
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
    final desiredMasterValue = desiredMaster;
    if (desiredMasterValue != null) {
      map['desiredMaster'] = desiredMasterValue;
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
    final desiredPodSecurityPolicyConfigValue = desiredPodSecurityPolicyConfig;
    if (desiredPodSecurityPolicyConfigValue != null) {
      map['desiredPodSecurityPolicyConfig'] =
          desiredPodSecurityPolicyConfigValue.toMap();
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
    final desiredProtectConfigValue = desiredProtectConfig;
    if (desiredProtectConfigValue != null) {
      map['desiredProtectConfig'] = desiredProtectConfigValue.toMap();
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
    final desiredTpuConfigValue = desiredTpuConfig;
    if (desiredTpuConfigValue != null) {
      map['desiredTpuConfig'] = desiredTpuConfigValue.toMap();
    }
    final desiredVerticalPodAutoscalingValue = desiredVerticalPodAutoscaling;
    if (desiredVerticalPodAutoscalingValue != null) {
      map['desiredVerticalPodAutoscaling'] =
          desiredVerticalPodAutoscalingValue.toMap();
    }
    final desiredWorkloadAltsConfigValue = desiredWorkloadAltsConfig;
    if (desiredWorkloadAltsConfigValue != null) {
      map['desiredWorkloadAltsConfig'] = desiredWorkloadAltsConfigValue.toMap();
    }
    final desiredWorkloadCertificatesValue = desiredWorkloadCertificates;
    if (desiredWorkloadCertificatesValue != null) {
      map['desiredWorkloadCertificates'] =
          desiredWorkloadCertificatesValue.toMap();
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

  factory ClusterUpdateContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ClusterUpdateContainerV1beta1(
      additionalPodRangesConfig: map['additionalPodRangesConfig'] == null
          ? null
          : AdditionalPodRangesConfigContainerV1beta1.fromMap(
              (map['additionalPodRangesConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredAddonsConfig: map['desiredAddonsConfig'] == null
          ? null
          : AddonsConfigContainerV1beta1.fromMap(
              (map['desiredAddonsConfig'] as Map).cast<String, dynamic>()),
      desiredAuthenticatorGroupsConfig:
          map['desiredAuthenticatorGroupsConfig'] == null
              ? null
              : AuthenticatorGroupsConfigContainerV1beta1.fromMap(
                  (map['desiredAuthenticatorGroupsConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredAutopilotWorkloadPolicyConfig:
          map['desiredAutopilotWorkloadPolicyConfig'] == null
              ? null
              : WorkloadPolicyConfigContainerV1beta1.fromMap(
                  (map['desiredAutopilotWorkloadPolicyConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredBinaryAuthorization: map['desiredBinaryAuthorization'] == null
          ? null
          : BinaryAuthorizationContainerV1beta1.fromMap(
              (map['desiredBinaryAuthorization'] as Map)
                  .cast<String, dynamic>()),
      desiredClusterAutoscaling: map['desiredClusterAutoscaling'] == null
          ? null
          : ClusterAutoscalingContainerV1beta1.fromMap(
              (map['desiredClusterAutoscaling'] as Map)
                  .cast<String, dynamic>()),
      desiredClusterTelemetry: map['desiredClusterTelemetry'] == null
          ? null
          : ClusterTelemetry.fromMap(
              (map['desiredClusterTelemetry'] as Map).cast<String, dynamic>()),
      desiredCostManagementConfig: map['desiredCostManagementConfig'] == null
          ? null
          : CostManagementConfigContainerV1beta1.fromMap(
              (map['desiredCostManagementConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredDatabaseEncryption: map['desiredDatabaseEncryption'] == null
          ? null
          : DatabaseEncryptionContainerV1beta1.fromMap(
              (map['desiredDatabaseEncryption'] as Map)
                  .cast<String, dynamic>()),
      desiredDatapathProvider: map['desiredDatapathProvider'] == null
          ? null
          : ClusterUpdateDesiredDatapathProviderContainerV1beta1.fromValue(
              map['desiredDatapathProvider'] as String),
      desiredDefaultSnatStatus: map['desiredDefaultSnatStatus'] == null
          ? null
          : DefaultSnatStatusContainerV1beta1.fromMap(
              (map['desiredDefaultSnatStatus'] as Map).cast<String, dynamic>()),
      desiredDnsConfig: map['desiredDnsConfig'] == null
          ? null
          : DNSConfigContainerV1beta1.fromMap(
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
          : FleetContainerV1beta1.fromMap(
              (map['desiredFleet'] as Map).cast<String, dynamic>()),
      desiredGatewayApiConfig: map['desiredGatewayApiConfig'] == null
          ? null
          : GatewayAPIConfigContainerV1beta1.fromMap(
              (map['desiredGatewayApiConfig'] as Map).cast<String, dynamic>()),
      desiredGcfsConfig: map['desiredGcfsConfig'] == null
          ? null
          : GcfsConfigContainerV1beta1.fromMap(
              (map['desiredGcfsConfig'] as Map).cast<String, dynamic>()),
      desiredHostMaintenancePolicy: map['desiredHostMaintenancePolicy'] == null
          ? null
          : HostMaintenancePolicy.fromMap(
              (map['desiredHostMaintenancePolicy'] as Map)
                  .cast<String, dynamic>()),
      desiredIdentityServiceConfig: map['desiredIdentityServiceConfig'] == null
          ? null
          : IdentityServiceConfigContainerV1beta1.fromMap(
              (map['desiredIdentityServiceConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredImageType: map['desiredImageType'] == null
          ? null
          : map['desiredImageType'] as String,
      desiredInTransitEncryptionConfig:
          map['desiredInTransitEncryptionConfig'] == null
              ? null
              : ClusterUpdateDesiredInTransitEncryptionConfig.fromValue(
                  map['desiredInTransitEncryptionConfig'] as String),
      desiredIntraNodeVisibilityConfig:
          map['desiredIntraNodeVisibilityConfig'] == null
              ? null
              : IntraNodeVisibilityConfigContainerV1beta1.fromMap(
                  (map['desiredIntraNodeVisibilityConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredK8sBetaApis: map['desiredK8sBetaApis'] == null
          ? null
          : K8sBetaAPIConfigContainerV1beta1.fromMap(
              (map['desiredK8sBetaApis'] as Map).cast<String, dynamic>()),
      desiredL4ilbSubsettingConfig: map['desiredL4ilbSubsettingConfig'] == null
          ? null
          : ILBSubsettingConfigContainerV1beta1.fromMap(
              (map['desiredL4ilbSubsettingConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredLocations: map['desiredLocations'] == null
          ? null
          : (map['desiredLocations'] as List).cast<String>(),
      desiredLoggingConfig: map['desiredLoggingConfig'] == null
          ? null
          : LoggingConfigContainerV1beta1.fromMap(
              (map['desiredLoggingConfig'] as Map).cast<String, dynamic>()),
      desiredLoggingService: map['desiredLoggingService'] == null
          ? null
          : map['desiredLoggingService'] as String,
      desiredMaster: map['desiredMaster'] == null
          ? null
          : (map['desiredMaster'] as Map).cast<String, dynamic>(),
      desiredMasterAuthorizedNetworksConfig:
          map['desiredMasterAuthorizedNetworksConfig'] == null
              ? null
              : MasterAuthorizedNetworksConfigContainerV1beta1.fromMap(
                  (map['desiredMasterAuthorizedNetworksConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredMasterVersion: map['desiredMasterVersion'] == null
          ? null
          : map['desiredMasterVersion'] as String,
      desiredMeshCertificates: map['desiredMeshCertificates'] == null
          ? null
          : MeshCertificatesContainerV1beta1.fromMap(
              (map['desiredMeshCertificates'] as Map).cast<String, dynamic>()),
      desiredMonitoringConfig: map['desiredMonitoringConfig'] == null
          ? null
          : MonitoringConfigContainerV1beta1.fromMap(
              (map['desiredMonitoringConfig'] as Map).cast<String, dynamic>()),
      desiredMonitoringService: map['desiredMonitoringService'] == null
          ? null
          : map['desiredMonitoringService'] as String,
      desiredNetworkPerformanceConfig:
          map['desiredNetworkPerformanceConfig'] == null
              ? null
              : ClusterNetworkPerformanceConfigContainerV1beta1.fromMap(
                  (map['desiredNetworkPerformanceConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoConfigNetworkTags:
          map['desiredNodePoolAutoConfigNetworkTags'] == null
              ? null
              : NetworkTagsContainerV1beta1.fromMap(
                  (map['desiredNodePoolAutoConfigNetworkTags'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoConfigResourceManagerTags:
          map['desiredNodePoolAutoConfigResourceManagerTags'] == null
              ? null
              : ResourceManagerTagsContainerV1beta1.fromMap(
                  (map['desiredNodePoolAutoConfigResourceManagerTags'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoscaling: map['desiredNodePoolAutoscaling'] == null
          ? null
          : NodePoolAutoscalingContainerV1beta1.fromMap(
              (map['desiredNodePoolAutoscaling'] as Map)
                  .cast<String, dynamic>()),
      desiredNodePoolId: map['desiredNodePoolId'] == null
          ? null
          : map['desiredNodePoolId'] as String,
      desiredNodePoolLoggingConfig: map['desiredNodePoolLoggingConfig'] == null
          ? null
          : NodePoolLoggingConfigContainerV1beta1.fromMap(
              (map['desiredNodePoolLoggingConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredNodeVersion: map['desiredNodeVersion'] == null
          ? null
          : map['desiredNodeVersion'] as String,
      desiredNotificationConfig: map['desiredNotificationConfig'] == null
          ? null
          : NotificationConfigContainerV1beta1.fromMap(
              (map['desiredNotificationConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredParentProductConfig: map['desiredParentProductConfig'] == null
          ? null
          : ParentProductConfigContainerV1beta1.fromMap(
              (map['desiredParentProductConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredPodSecurityPolicyConfig:
          map['desiredPodSecurityPolicyConfig'] == null
              ? null
              : PodSecurityPolicyConfig.fromMap(
                  (map['desiredPodSecurityPolicyConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredPrivateClusterConfig: map['desiredPrivateClusterConfig'] == null
          ? null
          : PrivateClusterConfigContainerV1beta1.fromMap(
              (map['desiredPrivateClusterConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredPrivateIpv6GoogleAccess:
          map['desiredPrivateIpv6GoogleAccess'] == null
              ? null
              : ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1
                  .fromValue(map['desiredPrivateIpv6GoogleAccess'] as String),
      desiredProtectConfig: map['desiredProtectConfig'] == null
          ? null
          : ProtectConfig.fromMap(
              (map['desiredProtectConfig'] as Map).cast<String, dynamic>()),
      desiredReleaseChannel: map['desiredReleaseChannel'] == null
          ? null
          : ReleaseChannelContainerV1beta1.fromMap(
              (map['desiredReleaseChannel'] as Map).cast<String, dynamic>()),
      desiredResourceUsageExportConfig:
          map['desiredResourceUsageExportConfig'] == null
              ? null
              : ResourceUsageExportConfigContainerV1beta1.fromMap(
                  (map['desiredResourceUsageExportConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredSecurityPostureConfig: map['desiredSecurityPostureConfig'] == null
          ? null
          : SecurityPostureConfigContainerV1beta1.fromMap(
              (map['desiredSecurityPostureConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredServiceExternalIpsConfig:
          map['desiredServiceExternalIpsConfig'] == null
              ? null
              : ServiceExternalIPsConfigContainerV1beta1.fromMap(
                  (map['desiredServiceExternalIpsConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredShieldedNodes: map['desiredShieldedNodes'] == null
          ? null
          : ShieldedNodesContainerV1beta1.fromMap(
              (map['desiredShieldedNodes'] as Map).cast<String, dynamic>()),
      desiredStackType: map['desiredStackType'] == null
          ? null
          : ClusterUpdateDesiredStackTypeContainerV1beta1.fromValue(
              map['desiredStackType'] as String),
      desiredTpuConfig: map['desiredTpuConfig'] == null
          ? null
          : TpuConfig.fromMap(
              (map['desiredTpuConfig'] as Map).cast<String, dynamic>()),
      desiredVerticalPodAutoscaling:
          map['desiredVerticalPodAutoscaling'] == null
              ? null
              : VerticalPodAutoscalingContainerV1beta1.fromMap(
                  (map['desiredVerticalPodAutoscaling'] as Map)
                      .cast<String, dynamic>()),
      desiredWorkloadAltsConfig: map['desiredWorkloadAltsConfig'] == null
          ? null
          : WorkloadALTSConfig.fromMap((map['desiredWorkloadAltsConfig'] as Map)
              .cast<String, dynamic>()),
      desiredWorkloadCertificates: map['desiredWorkloadCertificates'] == null
          ? null
          : WorkloadCertificates.fromMap(
              (map['desiredWorkloadCertificates'] as Map)
                  .cast<String, dynamic>()),
      desiredWorkloadIdentityConfig:
          map['desiredWorkloadIdentityConfig'] == null
              ? null
              : WorkloadIdentityConfigContainerV1beta1.fromMap(
                  (map['desiredWorkloadIdentityConfig'] as Map)
                      .cast<String, dynamic>()),
      enableK8sBetaApis: map['enableK8sBetaApis'] == null
          ? null
          : K8sBetaAPIConfigContainerV1beta1.fromMap(
              (map['enableK8sBetaApis'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      removedAdditionalPodRangesConfig:
          map['removedAdditionalPodRangesConfig'] == null
              ? null
              : AdditionalPodRangesConfigContainerV1beta1.fromMap(
                  (map['removedAdditionalPodRangesConfig'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
