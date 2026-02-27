// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'addons_config2.dart';
import 'authenticator_groups_config2.dart';
import 'autopilot2.dart';
import 'binary_authorization2.dart';
import 'cluster_autoscaling2.dart';
import 'cluster_telemetry.dart';
import 'confidential_nodes2.dart';
import 'cost_management_config2.dart';
import 'database_encryption2.dart';
import 'fleet2.dart';
import 'identity_service_config2.dart';
import 'ipallocation_policy4.dart';
import 'k8s_beta_apiconfig2.dart';
import 'legacy_abac2.dart';
import 'logging_config2.dart';
import 'maintenance_policy2.dart';
import 'master_auth2.dart';
import 'master_authorized_networks_config4.dart';
import 'max_pods_constraint2.dart';
import 'mesh_certificates2.dart';
import 'monitoring_config2.dart';
import 'network_config10.dart';
import 'network_policy3.dart';
import 'node_config5.dart';
import 'node_pool2.dart';
import 'node_pool_auto_config2.dart';
import 'node_pool_defaults2.dart';
import 'notification_config2.dart';
import 'parent_product_config2.dart';
import 'pod_security_policy_config.dart';
import 'private_cluster_config4.dart';
import 'protect_config.dart';
import 'release_channel2.dart';
import 'resource_usage_export_config2.dart';
import 'security_posture_config2.dart';
import 'shielded_nodes2.dart';
import 'status_condition2.dart';
import 'tpu_config.dart';
import 'vertical_pod_autoscaling2.dart';
import 'workload_altsconfig.dart';
import 'workload_certificates.dart';
import 'workload_identity_config2.dart';

/// The set of arguments for Cluster.
class ClusterArgs6 {
  /// Configurations for the various addons available to run in the cluster.
  final Input<AddonsConfig2>? addonsConfig;

  /// Configuration controlling RBAC group membership information.
  final Input<AuthenticatorGroupsConfig2>? authenticatorGroupsConfig;

  /// Autopilot configuration for the cluster.
  final Input<Autopilot2>? autopilot;

  /// Cluster-level autoscaling configuration.
  final Input<ClusterAutoscaling2>? autoscaling;

  /// Configuration for Binary Authorization.
  final Input<BinaryAuthorization2>? binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  final Input<String>? clusterIpv4Cidr;

  /// Telemetry integration for the cluster.
  final Input<ClusterTelemetry>? clusterTelemetry;

  /// Which conditions caused the current cluster state.
  final Input<List<StatusCondition2>>? conditions;

  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  final Input<ConfidentialNodes2>? confidentialNodes;

  /// Configuration for the fine-grained cost management feature.
  final Input<CostManagementConfig2>? costManagementConfig;

  /// Configuration of etcd encryption.
  final Input<DatabaseEncryption2>? databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  final Input<MaxPodsConstraint2>? defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  final Input<String>? description;

  /// Kubernetes open source beta apis enabled on the cluster. Only beta apis.
  final Input<K8sBetaAPIConfig2>? enableK8sBetaApis;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1beta1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  final Input<bool>? enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster. This field is deprecated, use tpu_config.enabled instead.
  final Input<bool>? enableTpu;

  /// GKE Enterprise Configuration.
  final Input<Map<String, dynamic>>? enterpriseConfig;

  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final Input<String>? etag;

  /// Fleet information for the cluster.
  final Input<Fleet2>? fleet;

  /// Configuration for Identity Service component.
  final Input<IdentityServiceConfig2>? identityServiceConfig;

  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  final Input<String>? initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  final Input<int>? initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  final Input<List<String>>? instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  final Input<IPAllocationPolicy4>? ipAllocationPolicy;

  /// Configuration for the legacy ABAC authorization mode.
  final Input<LegacyAbac2>? legacyAbac;
  final Input<String>? location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  final Input<List<String>>? locations;

  /// Logging configuration for the cluster.
  final Input<LoggingConfig2>? loggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final Input<String>? loggingService;

  /// Configure the maintenance policy for this cluster.
  final Input<MaintenancePolicy2>? maintenancePolicy;

  /// Configuration for master components.
  final Input<Map<String, dynamic>>? master;

  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  final Input<MasterAuth2>? masterAuth;

  /// The configuration options for master authorized networks feature.
  final Input<MasterAuthorizedNetworksConfig4>? masterAuthorizedNetworksConfig;

  /// The IP prefix in CIDR notation to use for the hosted master network. This prefix will be used for assigning private IP addresses to the master or set of masters, as well as the ILB VIP. This field is deprecated, use private_cluster_config.master_ipv4_cidr_block instead.
  final Input<String>? masterIpv4CidrBlock;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final Input<MeshCertificates2>? meshCertificates;

  /// Monitoring configuration for the cluster.
  final Input<MonitoringConfig2>? monitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final Input<String>? monitoringService;

  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  final Input<String>? name;

  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used. On output this shows the network ID instead of the name.
  final Input<String>? network;

  /// Configuration for cluster networking.
  final Input<NetworkConfig10>? networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  final Input<NetworkPolicy3>? networkPolicy;

  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  final Input<NodeConfig5>? nodeConfig;

  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final Input<NodePoolAutoConfig2>? nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  final Input<NodePoolDefaults2>? nodePoolDefaults;

  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  final Input<List<NodePool2>>? nodePools;

  /// Notification configuration of the cluster.
  final Input<NotificationConfig2>? notificationConfig;

  /// The parent (project and location) where the cluster will be created. Specified in the format `projects/*/locations/*`.
  final Input<String>? parent;

  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  final Input<ParentProductConfig2>? parentProductConfig;

  /// Configuration for the PodSecurityPolicy feature.
  final Input<PodSecurityPolicyConfig>? podSecurityPolicyConfig;

  /// If this is a private cluster setup. Private clusters are clusters that, by default have no external IP addresses on the nodes and where nodes and the master communicate over private IP addresses. This field is deprecated, use private_cluster_config.enable_private_nodes instead.
  final Input<bool>? privateCluster;

  /// Configuration for private cluster.
  final Input<PrivateClusterConfig4>? privateClusterConfig;

  /// Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  final Input<String>? project;

  /// Deprecated: Use SecurityPostureConfig instead. Enable/Disable Protect API features for the cluster.
  final Input<ProtectConfig>? protectConfig;

  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  final Input<ReleaseChannel2>? releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  final Input<Map<String, String>>? resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is disabled when this config unspecified.
  final Input<ResourceUsageExportConfig2>? resourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  final Input<SecurityPostureConfig2>? securityPostureConfig;

  /// Shielded Nodes configuration.
  final Input<ShieldedNodes2>? shieldedNodes;

  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected. On output this shows the subnetwork ID instead of the name.
  final Input<String>? subnetwork;

  /// Configuration for Cloud TPU support;
  final Input<TpuConfig>? tpuConfig;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  final Input<VerticalPodAutoscaling2>? verticalPodAutoscaling;

  /// Configuration for direct-path (via ALTS) with workload identity.
  final Input<WorkloadALTSConfig>? workloadAltsConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final Input<WorkloadCertificates>? workloadCertificates;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  final Input<WorkloadIdentityConfig2>? workloadIdentityConfig;

  /// Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  final Input<String>? zone;

  ClusterArgs6({
    this.addonsConfig,
    this.authenticatorGroupsConfig,
    this.autopilot,
    this.autoscaling,
    this.binaryAuthorization,
    this.clusterIpv4Cidr,
    this.clusterTelemetry,
    this.conditions,
    this.confidentialNodes,
    this.costManagementConfig,
    this.databaseEncryption,
    this.defaultMaxPodsConstraint,
    this.description,
    this.enableK8sBetaApis,
    this.enableKubernetesAlpha,
    this.enableTpu,
    this.enterpriseConfig,
    this.etag,
    this.fleet,
    this.identityServiceConfig,
    this.initialClusterVersion,
    this.initialNodeCount,
    this.instanceGroupUrls,
    this.ipAllocationPolicy,
    this.legacyAbac,
    this.location,
    this.locations,
    this.loggingConfig,
    this.loggingService,
    this.maintenancePolicy,
    this.master,
    this.masterAuth,
    this.masterAuthorizedNetworksConfig,
    this.masterIpv4CidrBlock,
    this.meshCertificates,
    this.monitoringConfig,
    this.monitoringService,
    this.name,
    this.network,
    this.networkConfig,
    this.networkPolicy,
    this.nodeConfig,
    this.nodePoolAutoConfig,
    this.nodePoolDefaults,
    this.nodePools,
    this.notificationConfig,
    this.parent,
    this.parentProductConfig,
    this.podSecurityPolicyConfig,
    this.privateCluster,
    this.privateClusterConfig,
    this.project,
    this.protectConfig,
    this.releaseChannel,
    this.resourceLabels,
    this.resourceUsageExportConfig,
    this.securityPostureConfig,
    this.shieldedNodes,
    this.subnetwork,
    this.tpuConfig,
    this.verticalPodAutoscaling,
    this.workloadAltsConfig,
    this.workloadCertificates,
    this.workloadIdentityConfig,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addonsConfigValue = addonsConfig;
    if (addonsConfigValue != null) {
      map['addonsConfig'] =
          Input.mapOptionalInputValue<AddonsConfig2, Map<String, dynamic>>(
              addonsConfigValue, (value) => value.toMap());
    }
    final authenticatorGroupsConfigValue = authenticatorGroupsConfig;
    if (authenticatorGroupsConfigValue != null) {
      map['authenticatorGroupsConfig'] = Input.mapOptionalInputValue<
              AuthenticatorGroupsConfig2, Map<String, dynamic>>(
          authenticatorGroupsConfigValue, (value) => value.toMap());
    }
    final autopilotValue = autopilot;
    if (autopilotValue != null) {
      map['autopilot'] =
          Input.mapOptionalInputValue<Autopilot2, Map<String, dynamic>>(
              autopilotValue, (value) => value.toMap());
    }
    final autoscalingValue = autoscaling;
    if (autoscalingValue != null) {
      map['autoscaling'] = Input.mapOptionalInputValue<ClusterAutoscaling2,
          Map<String, dynamic>>(autoscalingValue, (value) => value.toMap());
    }
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
              BinaryAuthorization2, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clusterIpv4CidrValue = clusterIpv4Cidr;
    if (clusterIpv4CidrValue != null) {
      map['clusterIpv4Cidr'] = clusterIpv4CidrValue;
    }
    final clusterTelemetryValue = clusterTelemetry;
    if (clusterTelemetryValue != null) {
      map['clusterTelemetry'] =
          Input.mapOptionalInputValue<ClusterTelemetry, Map<String, dynamic>>(
              clusterTelemetryValue, (value) => value.toMap());
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.mapOptionalInputValue<List<StatusCondition2>,
              List<Map<String, dynamic>>>(
          conditionsValue,
          (value) => Input.encodeList<StatusCondition2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final confidentialNodesValue = confidentialNodes;
    if (confidentialNodesValue != null) {
      map['confidentialNodes'] =
          Input.mapOptionalInputValue<ConfidentialNodes2, Map<String, dynamic>>(
              confidentialNodesValue, (value) => value.toMap());
    }
    final costManagementConfigValue = costManagementConfig;
    if (costManagementConfigValue != null) {
      map['costManagementConfig'] = Input.mapOptionalInputValue<
              CostManagementConfig2, Map<String, dynamic>>(
          costManagementConfigValue, (value) => value.toMap());
    }
    final databaseEncryptionValue = databaseEncryption;
    if (databaseEncryptionValue != null) {
      map['databaseEncryption'] = Input.mapOptionalInputValue<
              DatabaseEncryption2, Map<String, dynamic>>(
          databaseEncryptionValue, (value) => value.toMap());
    }
    final defaultMaxPodsConstraintValue = defaultMaxPodsConstraint;
    if (defaultMaxPodsConstraintValue != null) {
      map['defaultMaxPodsConstraint'] =
          Input.mapOptionalInputValue<MaxPodsConstraint2, Map<String, dynamic>>(
              defaultMaxPodsConstraintValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableK8sBetaApisValue = enableK8sBetaApis;
    if (enableK8sBetaApisValue != null) {
      map['enableK8sBetaApis'] =
          Input.mapOptionalInputValue<K8sBetaAPIConfig2, Map<String, dynamic>>(
              enableK8sBetaApisValue, (value) => value.toMap());
    }
    final enableKubernetesAlphaValue = enableKubernetesAlpha;
    if (enableKubernetesAlphaValue != null) {
      map['enableKubernetesAlpha'] = enableKubernetesAlphaValue;
    }
    final enableTpuValue = enableTpu;
    if (enableTpuValue != null) {
      map['enableTpu'] = enableTpuValue;
    }
    final enterpriseConfigValue = enterpriseConfig;
    if (enterpriseConfigValue != null) {
      map['enterpriseConfig'] = enterpriseConfigValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final fleetValue = fleet;
    if (fleetValue != null) {
      map['fleet'] = Input.mapOptionalInputValue<Fleet2, Map<String, dynamic>>(
          fleetValue, (value) => value.toMap());
    }
    final identityServiceConfigValue = identityServiceConfig;
    if (identityServiceConfigValue != null) {
      map['identityServiceConfig'] = Input.mapOptionalInputValue<
              IdentityServiceConfig2, Map<String, dynamic>>(
          identityServiceConfigValue, (value) => value.toMap());
    }
    final initialClusterVersionValue = initialClusterVersion;
    if (initialClusterVersionValue != null) {
      map['initialClusterVersion'] = initialClusterVersionValue;
    }
    final initialNodeCountValue = initialNodeCount;
    if (initialNodeCountValue != null) {
      map['initialNodeCount'] = initialNodeCountValue;
    }
    final instanceGroupUrlsValue = instanceGroupUrls;
    if (instanceGroupUrlsValue != null) {
      map['instanceGroupUrls'] = instanceGroupUrlsValue;
    }
    final ipAllocationPolicyValue = ipAllocationPolicy;
    if (ipAllocationPolicyValue != null) {
      map['ipAllocationPolicy'] = Input.mapOptionalInputValue<
              IPAllocationPolicy4, Map<String, dynamic>>(
          ipAllocationPolicyValue, (value) => value.toMap());
    }
    final legacyAbacValue = legacyAbac;
    if (legacyAbacValue != null) {
      map['legacyAbac'] =
          Input.mapOptionalInputValue<LegacyAbac2, Map<String, dynamic>>(
              legacyAbacValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] =
          Input.mapOptionalInputValue<LoggingConfig2, Map<String, dynamic>>(
              loggingConfigValue, (value) => value.toMap());
    }
    final loggingServiceValue = loggingService;
    if (loggingServiceValue != null) {
      map['loggingService'] = loggingServiceValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] =
          Input.mapOptionalInputValue<MaintenancePolicy2, Map<String, dynamic>>(
              maintenancePolicyValue, (value) => value.toMap());
    }
    final masterValue = master;
    if (masterValue != null) {
      map['master'] = masterValue;
    }
    final masterAuthValue = masterAuth;
    if (masterAuthValue != null) {
      map['masterAuth'] =
          Input.mapOptionalInputValue<MasterAuth2, Map<String, dynamic>>(
              masterAuthValue, (value) => value.toMap());
    }
    final masterAuthorizedNetworksConfigValue = masterAuthorizedNetworksConfig;
    if (masterAuthorizedNetworksConfigValue != null) {
      map['masterAuthorizedNetworksConfig'] = Input.mapOptionalInputValue<
              MasterAuthorizedNetworksConfig4, Map<String, dynamic>>(
          masterAuthorizedNetworksConfigValue, (value) => value.toMap());
    }
    final masterIpv4CidrBlockValue = masterIpv4CidrBlock;
    if (masterIpv4CidrBlockValue != null) {
      map['masterIpv4CidrBlock'] = masterIpv4CidrBlockValue;
    }
    final meshCertificatesValue = meshCertificates;
    if (meshCertificatesValue != null) {
      map['meshCertificates'] =
          Input.mapOptionalInputValue<MeshCertificates2, Map<String, dynamic>>(
              meshCertificatesValue, (value) => value.toMap());
    }
    final monitoringConfigValue = monitoringConfig;
    if (monitoringConfigValue != null) {
      map['monitoringConfig'] =
          Input.mapOptionalInputValue<MonitoringConfig2, Map<String, dynamic>>(
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
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] =
          Input.mapOptionalInputValue<NetworkConfig10, Map<String, dynamic>>(
              networkConfigValue, (value) => value.toMap());
    }
    final networkPolicyValue = networkPolicy;
    if (networkPolicyValue != null) {
      map['networkPolicy'] =
          Input.mapOptionalInputValue<NetworkPolicy3, Map<String, dynamic>>(
              networkPolicyValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] =
          Input.mapOptionalInputValue<NodeConfig5, Map<String, dynamic>>(
              nodeConfigValue, (value) => value.toMap());
    }
    final nodePoolAutoConfigValue = nodePoolAutoConfig;
    if (nodePoolAutoConfigValue != null) {
      map['nodePoolAutoConfig'] = Input.mapOptionalInputValue<
              NodePoolAutoConfig2, Map<String, dynamic>>(
          nodePoolAutoConfigValue, (value) => value.toMap());
    }
    final nodePoolDefaultsValue = nodePoolDefaults;
    if (nodePoolDefaultsValue != null) {
      map['nodePoolDefaults'] =
          Input.mapOptionalInputValue<NodePoolDefaults2, Map<String, dynamic>>(
              nodePoolDefaultsValue, (value) => value.toMap());
    }
    final nodePoolsValue = nodePools;
    if (nodePoolsValue != null) {
      map['nodePools'] = Input.mapOptionalInputValue<List<NodePool2>,
              List<Map<String, dynamic>>>(
          nodePoolsValue,
          (value) => Input.encodeList<NodePool2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              NotificationConfig2, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final parentProductConfigValue = parentProductConfig;
    if (parentProductConfigValue != null) {
      map['parentProductConfig'] = Input.mapOptionalInputValue<
              ParentProductConfig2, Map<String, dynamic>>(
          parentProductConfigValue, (value) => value.toMap());
    }
    final podSecurityPolicyConfigValue = podSecurityPolicyConfig;
    if (podSecurityPolicyConfigValue != null) {
      map['podSecurityPolicyConfig'] = Input.mapOptionalInputValue<
              PodSecurityPolicyConfig, Map<String, dynamic>>(
          podSecurityPolicyConfigValue, (value) => value.toMap());
    }
    final privateClusterValue = privateCluster;
    if (privateClusterValue != null) {
      map['privateCluster'] = privateClusterValue;
    }
    final privateClusterConfigValue = privateClusterConfig;
    if (privateClusterConfigValue != null) {
      map['privateClusterConfig'] = Input.mapOptionalInputValue<
              PrivateClusterConfig4, Map<String, dynamic>>(
          privateClusterConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protectConfigValue = protectConfig;
    if (protectConfigValue != null) {
      map['protectConfig'] =
          Input.mapOptionalInputValue<ProtectConfig, Map<String, dynamic>>(
              protectConfigValue, (value) => value.toMap());
    }
    final releaseChannelValue = releaseChannel;
    if (releaseChannelValue != null) {
      map['releaseChannel'] =
          Input.mapOptionalInputValue<ReleaseChannel2, Map<String, dynamic>>(
              releaseChannelValue, (value) => value.toMap());
    }
    final resourceLabelsValue = resourceLabels;
    if (resourceLabelsValue != null) {
      map['resourceLabels'] = resourceLabelsValue;
    }
    final resourceUsageExportConfigValue = resourceUsageExportConfig;
    if (resourceUsageExportConfigValue != null) {
      map['resourceUsageExportConfig'] = Input.mapOptionalInputValue<
              ResourceUsageExportConfig2, Map<String, dynamic>>(
          resourceUsageExportConfigValue, (value) => value.toMap());
    }
    final securityPostureConfigValue = securityPostureConfig;
    if (securityPostureConfigValue != null) {
      map['securityPostureConfig'] = Input.mapOptionalInputValue<
              SecurityPostureConfig2, Map<String, dynamic>>(
          securityPostureConfigValue, (value) => value.toMap());
    }
    final shieldedNodesValue = shieldedNodes;
    if (shieldedNodesValue != null) {
      map['shieldedNodes'] =
          Input.mapOptionalInputValue<ShieldedNodes2, Map<String, dynamic>>(
              shieldedNodesValue, (value) => value.toMap());
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final tpuConfigValue = tpuConfig;
    if (tpuConfigValue != null) {
      map['tpuConfig'] =
          Input.mapOptionalInputValue<TpuConfig, Map<String, dynamic>>(
              tpuConfigValue, (value) => value.toMap());
    }
    final verticalPodAutoscalingValue = verticalPodAutoscaling;
    if (verticalPodAutoscalingValue != null) {
      map['verticalPodAutoscaling'] = Input.mapOptionalInputValue<
              VerticalPodAutoscaling2, Map<String, dynamic>>(
          verticalPodAutoscalingValue, (value) => value.toMap());
    }
    final workloadAltsConfigValue = workloadAltsConfig;
    if (workloadAltsConfigValue != null) {
      map['workloadAltsConfig'] =
          Input.mapOptionalInputValue<WorkloadALTSConfig, Map<String, dynamic>>(
              workloadAltsConfigValue, (value) => value.toMap());
    }
    final workloadCertificatesValue = workloadCertificates;
    if (workloadCertificatesValue != null) {
      map['workloadCertificates'] = Input.mapOptionalInputValue<
              WorkloadCertificates, Map<String, dynamic>>(
          workloadCertificatesValue, (value) => value.toMap());
    }
    final workloadIdentityConfigValue = workloadIdentityConfig;
    if (workloadIdentityConfigValue != null) {
      map['workloadIdentityConfig'] = Input.mapOptionalInputValue<
              WorkloadIdentityConfig2, Map<String, dynamic>>(
          workloadIdentityConfigValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ClusterArgs6.fromMap(Map<String, dynamic> map) {
    return ClusterArgs6(
      addonsConfig: Input.asOptionalInput<AddonsConfig2>(map['addonsConfig']),
      authenticatorGroupsConfig:
          Input.asOptionalInput<AuthenticatorGroupsConfig2>(
              map['authenticatorGroupsConfig']),
      autopilot: Input.asOptionalInput<Autopilot2>(map['autopilot']),
      autoscaling:
          Input.asOptionalInput<ClusterAutoscaling2>(map['autoscaling']),
      binaryAuthorization: Input.asOptionalInput<BinaryAuthorization2>(
          map['binaryAuthorization']),
      clusterIpv4Cidr: Input.asOptionalInput<String>(map['clusterIpv4Cidr']),
      clusterTelemetry:
          Input.asOptionalInput<ClusterTelemetry>(map['clusterTelemetry']),
      conditions:
          Input.asOptionalInput<List<StatusCondition2>>(map['conditions']),
      confidentialNodes:
          Input.asOptionalInput<ConfidentialNodes2>(map['confidentialNodes']),
      costManagementConfig: Input.asOptionalInput<CostManagementConfig2>(
          map['costManagementConfig']),
      databaseEncryption:
          Input.asOptionalInput<DatabaseEncryption2>(map['databaseEncryption']),
      defaultMaxPodsConstraint: Input.asOptionalInput<MaxPodsConstraint2>(
          map['defaultMaxPodsConstraint']),
      description: Input.asOptionalInput<String>(map['description']),
      enableK8sBetaApis:
          Input.asOptionalInput<K8sBetaAPIConfig2>(map['enableK8sBetaApis']),
      enableKubernetesAlpha:
          Input.asOptionalInput<bool>(map['enableKubernetesAlpha']),
      enableTpu: Input.asOptionalInput<bool>(map['enableTpu']),
      enterpriseConfig:
          Input.asOptionalInput<Map<String, dynamic>>(map['enterpriseConfig']),
      etag: Input.asOptionalInput<String>(map['etag']),
      fleet: Input.asOptionalInput<Fleet2>(map['fleet']),
      identityServiceConfig: Input.asOptionalInput<IdentityServiceConfig2>(
          map['identityServiceConfig']),
      initialClusterVersion:
          Input.asOptionalInput<String>(map['initialClusterVersion']),
      initialNodeCount: Input.asOptionalInput<int>(map['initialNodeCount']),
      instanceGroupUrls:
          Input.asOptionalInput<List<String>>(map['instanceGroupUrls']),
      ipAllocationPolicy:
          Input.asOptionalInput<IPAllocationPolicy4>(map['ipAllocationPolicy']),
      legacyAbac: Input.asOptionalInput<LegacyAbac2>(map['legacyAbac']),
      location: Input.asOptionalInput<String>(map['location']),
      locations: Input.asOptionalInput<List<String>>(map['locations']),
      loggingConfig:
          Input.asOptionalInput<LoggingConfig2>(map['loggingConfig']),
      loggingService: Input.asOptionalInput<String>(map['loggingService']),
      maintenancePolicy:
          Input.asOptionalInput<MaintenancePolicy2>(map['maintenancePolicy']),
      master: Input.asOptionalInput<Map<String, dynamic>>(map['master']),
      masterAuth: Input.asOptionalInput<MasterAuth2>(map['masterAuth']),
      masterAuthorizedNetworksConfig:
          Input.asOptionalInput<MasterAuthorizedNetworksConfig4>(
              map['masterAuthorizedNetworksConfig']),
      masterIpv4CidrBlock:
          Input.asOptionalInput<String>(map['masterIpv4CidrBlock']),
      meshCertificates:
          Input.asOptionalInput<MeshCertificates2>(map['meshCertificates']),
      monitoringConfig:
          Input.asOptionalInput<MonitoringConfig2>(map['monitoringConfig']),
      monitoringService:
          Input.asOptionalInput<String>(map['monitoringService']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      networkConfig:
          Input.asOptionalInput<NetworkConfig10>(map['networkConfig']),
      networkPolicy:
          Input.asOptionalInput<NetworkPolicy3>(map['networkPolicy']),
      nodeConfig: Input.asOptionalInput<NodeConfig5>(map['nodeConfig']),
      nodePoolAutoConfig:
          Input.asOptionalInput<NodePoolAutoConfig2>(map['nodePoolAutoConfig']),
      nodePoolDefaults:
          Input.asOptionalInput<NodePoolDefaults2>(map['nodePoolDefaults']),
      nodePools: Input.asOptionalInput<List<NodePool2>>(map['nodePools']),
      notificationConfig:
          Input.asOptionalInput<NotificationConfig2>(map['notificationConfig']),
      parent: Input.asOptionalInput<String>(map['parent']),
      parentProductConfig: Input.asOptionalInput<ParentProductConfig2>(
          map['parentProductConfig']),
      podSecurityPolicyConfig: Input.asOptionalInput<PodSecurityPolicyConfig>(
          map['podSecurityPolicyConfig']),
      privateCluster: Input.asOptionalInput<bool>(map['privateCluster']),
      privateClusterConfig: Input.asOptionalInput<PrivateClusterConfig4>(
          map['privateClusterConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      protectConfig: Input.asOptionalInput<ProtectConfig>(map['protectConfig']),
      releaseChannel:
          Input.asOptionalInput<ReleaseChannel2>(map['releaseChannel']),
      resourceLabels:
          Input.asOptionalInput<Map<String, String>>(map['resourceLabels']),
      resourceUsageExportConfig:
          Input.asOptionalInput<ResourceUsageExportConfig2>(
              map['resourceUsageExportConfig']),
      securityPostureConfig: Input.asOptionalInput<SecurityPostureConfig2>(
          map['securityPostureConfig']),
      shieldedNodes:
          Input.asOptionalInput<ShieldedNodes2>(map['shieldedNodes']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
      tpuConfig: Input.asOptionalInput<TpuConfig>(map['tpuConfig']),
      verticalPodAutoscaling: Input.asOptionalInput<VerticalPodAutoscaling2>(
          map['verticalPodAutoscaling']),
      workloadAltsConfig:
          Input.asOptionalInput<WorkloadALTSConfig>(map['workloadAltsConfig']),
      workloadCertificates: Input.asOptionalInput<WorkloadCertificates>(
          map['workloadCertificates']),
      workloadIdentityConfig: Input.asOptionalInput<WorkloadIdentityConfig2>(
          map['workloadIdentityConfig']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
