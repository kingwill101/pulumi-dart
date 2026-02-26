// ignore_for_file: unused_element, unnecessary_cast

import 'additional_pod_ranges_config2.dart';
import 'addons_config2.dart';
import 'authenticator_groups_config2.dart';
import 'binary_authorization2.dart';
import 'cluster_autoscaling2.dart';
import 'cluster_network_performance_config2.dart';
import 'cluster_telemetry.dart';
import 'cluster_update_desired_datapath_provider2.dart';
import 'cluster_update_desired_in_transit_encryption_config.dart';
import 'cluster_update_desired_private_ipv6_google_access2.dart';
import 'cluster_update_desired_stack_type2.dart';
import 'cost_management_config2.dart';
import 'database_encryption2.dart';
import 'default_snat_status2.dart';
import 'dnsconfig2.dart';
import 'fleet2.dart';
import 'gateway_apiconfig2.dart';
import 'gcfs_config2.dart';
import 'host_maintenance_policy.dart';
import 'identity_service_config2.dart';
import 'ilbsubsetting_config2.dart';
import 'intra_node_visibility_config2.dart';
import 'k8s_beta_apiconfig2.dart';
import 'logging_config2.dart';
import 'master_authorized_networks_config4.dart';
import 'mesh_certificates2.dart';
import 'monitoring_config2.dart';
import 'network_tags2.dart';
import 'node_pool_autoscaling2.dart';
import 'node_pool_logging_config2.dart';
import 'notification_config2.dart';
import 'parent_product_config2.dart';
import 'pod_security_policy_config.dart';
import 'private_cluster_config4.dart';
import 'protect_config.dart';
import 'release_channel2.dart';
import 'resource_manager_tags2.dart';
import 'resource_usage_export_config2.dart';
import 'security_posture_config2.dart';
import 'service_external_ips_config2.dart';
import 'shielded_nodes2.dart';
import 'tpu_config.dart';
import 'vertical_pod_autoscaling2.dart';
import 'workload_altsconfig.dart';
import 'workload_certificates.dart';
import 'workload_identity_config2.dart';
import 'workload_policy_config2.dart';

/// ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.
class ClusterUpdate2 {
  /// The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools to allocate pod IPs.
  final AdditionalPodRangesConfig2? additionalPodRangesConfig;

  /// Configurations for the various addons available to run in the cluster.
  final AddonsConfig2? desiredAddonsConfig;

  /// AuthenticatorGroupsConfig specifies the config for the cluster security groups settings.
  final AuthenticatorGroupsConfig2? desiredAuthenticatorGroupsConfig;

  /// The desired workload policy configuration for the autopilot cluster.
  final WorkloadPolicyConfig2? desiredAutopilotWorkloadPolicyConfig;

  /// The desired configuration options for the Binary Authorization feature.
  final BinaryAuthorization2? desiredBinaryAuthorization;

  /// Cluster-level autoscaling configuration.
  final ClusterAutoscaling2? desiredClusterAutoscaling;

  /// The desired telemetry integration for the cluster.
  final ClusterTelemetry? desiredClusterTelemetry;

  /// The desired configuration for the fine-grained cost management feature.
  final CostManagementConfig2? desiredCostManagementConfig;

  /// Configuration of etcd encryption.
  final DatabaseEncryption2? desiredDatabaseEncryption;

  /// The desired datapath provider for the cluster.
  final ClusterUpdateDesiredDatapathProvider2? desiredDatapathProvider;

  /// The desired status of whether to disable default sNAT for this cluster.
  final DefaultSnatStatus2? desiredDefaultSnatStatus;

  /// DNSConfig contains clusterDNS config for this cluster.
  final DNSConfig2? desiredDnsConfig;

  /// Enable/Disable FQDN Network Policy for the cluster.
  final bool? desiredEnableFqdnNetworkPolicy;

  /// Enable/Disable private endpoint for the cluster's master.
  final bool? desiredEnablePrivateEndpoint;

  /// The desired fleet configuration for the cluster.
  final Fleet2? desiredFleet;

  /// The desired config of Gateway API on this cluster.
  final GatewayAPIConfig2? desiredGatewayApiConfig;

  /// The desired GCFS config for the cluster.
  final GcfsConfig2? desiredGcfsConfig;

  /// HostMaintenancePolicy contains the desired maintenance policy for the Google Compute Engine hosts.
  final HostMaintenancePolicy? desiredHostMaintenancePolicy;

  /// The desired Identity Service component configuration.
  final IdentityServiceConfig2? desiredIdentityServiceConfig;

  /// The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  final String? desiredImageType;

  /// Specify the details of in-transit encryption.
  final ClusterUpdateDesiredInTransitEncryptionConfig?
      desiredInTransitEncryptionConfig;

  /// The desired config of Intra-node visibility.
  final IntraNodeVisibilityConfig2? desiredIntraNodeVisibilityConfig;

  /// Beta APIs enabled for cluster.
  final K8sBetaAPIConfig2? desiredK8sBetaApis;

  /// The desired L4 Internal Load Balancer Subsetting configuration.
  final ILBSubsettingConfig2? desiredL4ilbSubsettingConfig;

  /// The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  final List<String>? desiredLocations;

  /// The desired logging configuration.
  final LoggingConfig2? desiredLoggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final String? desiredLoggingService;

  /// Configuration for master components.
  final Map<String, dynamic>? desiredMaster;

  /// The desired configuration options for master authorized networks feature.
  final MasterAuthorizedNetworksConfig4? desiredMasterAuthorizedNetworksConfig;

  /// The Kubernetes version to change the master to. The only valid value is the latest supported version. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  final String? desiredMasterVersion;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final MeshCertificates2? desiredMeshCertificates;

  /// The desired monitoring configuration.
  final MonitoringConfig2? desiredMonitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final String? desiredMonitoringService;

  /// The desired network performance config.
  final ClusterNetworkPerformanceConfig2? desiredNetworkPerformanceConfig;

  /// The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final NetworkTags2? desiredNodePoolAutoConfigNetworkTags;

  /// The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final ResourceManagerTags2? desiredNodePoolAutoConfigResourceManagerTags;

  /// Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  final NodePoolAutoscaling2? desiredNodePoolAutoscaling;

  /// The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family", "desired_node_pool_autoscaling", or "desired_workload_metadata_config" is specified and there is more than one node pool on the cluster.
  final String? desiredNodePoolId;

  /// The desired node pool logging configuration defaults for the cluster.
  final NodePoolLoggingConfig2? desiredNodePoolLoggingConfig;

  /// The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  final String? desiredNodeVersion;

  /// The desired notification configuration.
  final NotificationConfig2? desiredNotificationConfig;

  /// The desired parent product config for the cluster.
  final ParentProductConfig2? desiredParentProductConfig;

  /// The desired configuration options for the PodSecurityPolicy feature.
  final PodSecurityPolicyConfig? desiredPodSecurityPolicyConfig;

  /// The desired private cluster configuration.
  final PrivateClusterConfig4? desiredPrivateClusterConfig;

  /// The desired state of IPv6 connectivity to Google Services.
  final ClusterUpdateDesiredPrivateIpv6GoogleAccess2?
      desiredPrivateIpv6GoogleAccess;

  /// Deprecated: Use DesiredSecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  final ProtectConfig? desiredProtectConfig;

  /// The desired release channel configuration.
  final ReleaseChannel2? desiredReleaseChannel;

  /// The desired configuration for exporting resource usage.
  final ResourceUsageExportConfig2? desiredResourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  final SecurityPostureConfig2? desiredSecurityPostureConfig;

  /// ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  final ServiceExternalIPsConfig2? desiredServiceExternalIpsConfig;

  /// Configuration for Shielded Nodes.
  final ShieldedNodes2? desiredShieldedNodes;

  /// The desired stack type of the cluster. If a stack type is provided and does not match the current stack type of the cluster, update will attempt to change the stack type to the new type.
  final ClusterUpdateDesiredStackType2? desiredStackType;

  /// The desired Cloud TPU configuration.
  final TpuConfig? desiredTpuConfig;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  final VerticalPodAutoscaling2? desiredVerticalPodAutoscaling;

  /// Configuration for direct-path (via ALTS) with workload identity.
  final WorkloadALTSConfig? desiredWorkloadAltsConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final WorkloadCertificates? desiredWorkloadCertificates;

  /// Configuration for Workload Identity.
  final WorkloadIdentityConfig2? desiredWorkloadIdentityConfig;

  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis
  final K8sBetaAPIConfig2? enableK8sBetaApis;

  /// The current etag of the cluster. If an etag is provided and does not match the current etag of the cluster, update will be blocked and an ABORTED error will be returned.
  final String? etag;

  /// The additional pod ranges that are to be removed from the cluster. The pod ranges specified here must have been specified earlier in the 'additional_pod_ranges_config' argument.
  final AdditionalPodRangesConfig2? removedAdditionalPodRangesConfig;

  ClusterUpdate2({
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

  factory ClusterUpdate2.fromMap(Map<String, dynamic> map) {
    return ClusterUpdate2(
      additionalPodRangesConfig: map['additionalPodRangesConfig'] == null
          ? null
          : AdditionalPodRangesConfig2.fromMap(
              (map['additionalPodRangesConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredAddonsConfig: map['desiredAddonsConfig'] == null
          ? null
          : AddonsConfig2.fromMap(
              (map['desiredAddonsConfig'] as Map).cast<String, dynamic>()),
      desiredAuthenticatorGroupsConfig:
          map['desiredAuthenticatorGroupsConfig'] == null
              ? null
              : AuthenticatorGroupsConfig2.fromMap(
                  (map['desiredAuthenticatorGroupsConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredAutopilotWorkloadPolicyConfig:
          map['desiredAutopilotWorkloadPolicyConfig'] == null
              ? null
              : WorkloadPolicyConfig2.fromMap(
                  (map['desiredAutopilotWorkloadPolicyConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredBinaryAuthorization: map['desiredBinaryAuthorization'] == null
          ? null
          : BinaryAuthorization2.fromMap(
              (map['desiredBinaryAuthorization'] as Map)
                  .cast<String, dynamic>()),
      desiredClusterAutoscaling: map['desiredClusterAutoscaling'] == null
          ? null
          : ClusterAutoscaling2.fromMap(
              (map['desiredClusterAutoscaling'] as Map)
                  .cast<String, dynamic>()),
      desiredClusterTelemetry: map['desiredClusterTelemetry'] == null
          ? null
          : ClusterTelemetry.fromMap(
              (map['desiredClusterTelemetry'] as Map).cast<String, dynamic>()),
      desiredCostManagementConfig: map['desiredCostManagementConfig'] == null
          ? null
          : CostManagementConfig2.fromMap(
              (map['desiredCostManagementConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredDatabaseEncryption: map['desiredDatabaseEncryption'] == null
          ? null
          : DatabaseEncryption2.fromMap(
              (map['desiredDatabaseEncryption'] as Map)
                  .cast<String, dynamic>()),
      desiredDatapathProvider: map['desiredDatapathProvider'] == null
          ? null
          : ClusterUpdateDesiredDatapathProvider2.fromValue(
              map['desiredDatapathProvider'] as String),
      desiredDefaultSnatStatus: map['desiredDefaultSnatStatus'] == null
          ? null
          : DefaultSnatStatus2.fromMap(
              (map['desiredDefaultSnatStatus'] as Map).cast<String, dynamic>()),
      desiredDnsConfig: map['desiredDnsConfig'] == null
          ? null
          : DNSConfig2.fromMap(
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
          : Fleet2.fromMap(
              (map['desiredFleet'] as Map).cast<String, dynamic>()),
      desiredGatewayApiConfig: map['desiredGatewayApiConfig'] == null
          ? null
          : GatewayAPIConfig2.fromMap(
              (map['desiredGatewayApiConfig'] as Map).cast<String, dynamic>()),
      desiredGcfsConfig: map['desiredGcfsConfig'] == null
          ? null
          : GcfsConfig2.fromMap(
              (map['desiredGcfsConfig'] as Map).cast<String, dynamic>()),
      desiredHostMaintenancePolicy: map['desiredHostMaintenancePolicy'] == null
          ? null
          : HostMaintenancePolicy.fromMap(
              (map['desiredHostMaintenancePolicy'] as Map)
                  .cast<String, dynamic>()),
      desiredIdentityServiceConfig: map['desiredIdentityServiceConfig'] == null
          ? null
          : IdentityServiceConfig2.fromMap(
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
              : IntraNodeVisibilityConfig2.fromMap(
                  (map['desiredIntraNodeVisibilityConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredK8sBetaApis: map['desiredK8sBetaApis'] == null
          ? null
          : K8sBetaAPIConfig2.fromMap(
              (map['desiredK8sBetaApis'] as Map).cast<String, dynamic>()),
      desiredL4ilbSubsettingConfig: map['desiredL4ilbSubsettingConfig'] == null
          ? null
          : ILBSubsettingConfig2.fromMap(
              (map['desiredL4ilbSubsettingConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredLocations: map['desiredLocations'] == null
          ? null
          : (map['desiredLocations'] as List).cast<String>(),
      desiredLoggingConfig: map['desiredLoggingConfig'] == null
          ? null
          : LoggingConfig2.fromMap(
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
              : MasterAuthorizedNetworksConfig4.fromMap(
                  (map['desiredMasterAuthorizedNetworksConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredMasterVersion: map['desiredMasterVersion'] == null
          ? null
          : map['desiredMasterVersion'] as String,
      desiredMeshCertificates: map['desiredMeshCertificates'] == null
          ? null
          : MeshCertificates2.fromMap(
              (map['desiredMeshCertificates'] as Map).cast<String, dynamic>()),
      desiredMonitoringConfig: map['desiredMonitoringConfig'] == null
          ? null
          : MonitoringConfig2.fromMap(
              (map['desiredMonitoringConfig'] as Map).cast<String, dynamic>()),
      desiredMonitoringService: map['desiredMonitoringService'] == null
          ? null
          : map['desiredMonitoringService'] as String,
      desiredNetworkPerformanceConfig:
          map['desiredNetworkPerformanceConfig'] == null
              ? null
              : ClusterNetworkPerformanceConfig2.fromMap(
                  (map['desiredNetworkPerformanceConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoConfigNetworkTags:
          map['desiredNodePoolAutoConfigNetworkTags'] == null
              ? null
              : NetworkTags2.fromMap(
                  (map['desiredNodePoolAutoConfigNetworkTags'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoConfigResourceManagerTags:
          map['desiredNodePoolAutoConfigResourceManagerTags'] == null
              ? null
              : ResourceManagerTags2.fromMap(
                  (map['desiredNodePoolAutoConfigResourceManagerTags'] as Map)
                      .cast<String, dynamic>()),
      desiredNodePoolAutoscaling: map['desiredNodePoolAutoscaling'] == null
          ? null
          : NodePoolAutoscaling2.fromMap(
              (map['desiredNodePoolAutoscaling'] as Map)
                  .cast<String, dynamic>()),
      desiredNodePoolId: map['desiredNodePoolId'] == null
          ? null
          : map['desiredNodePoolId'] as String,
      desiredNodePoolLoggingConfig: map['desiredNodePoolLoggingConfig'] == null
          ? null
          : NodePoolLoggingConfig2.fromMap(
              (map['desiredNodePoolLoggingConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredNodeVersion: map['desiredNodeVersion'] == null
          ? null
          : map['desiredNodeVersion'] as String,
      desiredNotificationConfig: map['desiredNotificationConfig'] == null
          ? null
          : NotificationConfig2.fromMap(
              (map['desiredNotificationConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredParentProductConfig: map['desiredParentProductConfig'] == null
          ? null
          : ParentProductConfig2.fromMap(
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
          : PrivateClusterConfig4.fromMap(
              (map['desiredPrivateClusterConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredPrivateIpv6GoogleAccess:
          map['desiredPrivateIpv6GoogleAccess'] == null
              ? null
              : ClusterUpdateDesiredPrivateIpv6GoogleAccess2.fromValue(
                  map['desiredPrivateIpv6GoogleAccess'] as String),
      desiredProtectConfig: map['desiredProtectConfig'] == null
          ? null
          : ProtectConfig.fromMap(
              (map['desiredProtectConfig'] as Map).cast<String, dynamic>()),
      desiredReleaseChannel: map['desiredReleaseChannel'] == null
          ? null
          : ReleaseChannel2.fromMap(
              (map['desiredReleaseChannel'] as Map).cast<String, dynamic>()),
      desiredResourceUsageExportConfig:
          map['desiredResourceUsageExportConfig'] == null
              ? null
              : ResourceUsageExportConfig2.fromMap(
                  (map['desiredResourceUsageExportConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredSecurityPostureConfig: map['desiredSecurityPostureConfig'] == null
          ? null
          : SecurityPostureConfig2.fromMap(
              (map['desiredSecurityPostureConfig'] as Map)
                  .cast<String, dynamic>()),
      desiredServiceExternalIpsConfig:
          map['desiredServiceExternalIpsConfig'] == null
              ? null
              : ServiceExternalIPsConfig2.fromMap(
                  (map['desiredServiceExternalIpsConfig'] as Map)
                      .cast<String, dynamic>()),
      desiredShieldedNodes: map['desiredShieldedNodes'] == null
          ? null
          : ShieldedNodes2.fromMap(
              (map['desiredShieldedNodes'] as Map).cast<String, dynamic>()),
      desiredStackType: map['desiredStackType'] == null
          ? null
          : ClusterUpdateDesiredStackType2.fromValue(
              map['desiredStackType'] as String),
      desiredTpuConfig: map['desiredTpuConfig'] == null
          ? null
          : TpuConfig.fromMap(
              (map['desiredTpuConfig'] as Map).cast<String, dynamic>()),
      desiredVerticalPodAutoscaling:
          map['desiredVerticalPodAutoscaling'] == null
              ? null
              : VerticalPodAutoscaling2.fromMap(
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
              : WorkloadIdentityConfig2.fromMap(
                  (map['desiredWorkloadIdentityConfig'] as Map)
                      .cast<String, dynamic>()),
      enableK8sBetaApis: map['enableK8sBetaApis'] == null
          ? null
          : K8sBetaAPIConfig2.fromMap(
              (map['enableK8sBetaApis'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      removedAdditionalPodRangesConfig:
          map['removedAdditionalPodRangesConfig'] == null
              ? null
              : AdditionalPodRangesConfig2.fromMap(
                  (map['removedAdditionalPodRangesConfig'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
