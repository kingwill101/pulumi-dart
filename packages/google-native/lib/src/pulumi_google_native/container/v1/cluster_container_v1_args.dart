// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'addons_config.dart';
import 'authenticator_groups_config.dart';
import 'autopilot.dart';
import 'binary_authorization.dart';
import 'cluster_autoscaling.dart';
import 'confidential_nodes.dart';
import 'cost_management_config.dart';
import 'database_encryption.dart';
import 'fleet.dart';
import 'identity_service_config.dart';
import 'ipallocation_policy_container_v1.dart';
import 'k8s_beta_apiconfig.dart';
import 'legacy_abac.dart';
import 'logging_config.dart';
import 'maintenance_policy.dart';
import 'master_auth.dart';
import 'master_authorized_networks_config_container_v1.dart';
import 'max_pods_constraint.dart';
import 'mesh_certificates.dart';
import 'monitoring_config.dart';
import 'network_config_container_v1.dart';
import 'network_policy_container_v1.dart';
import 'node_config_container_v1.dart';
import 'node_pool.dart';
import 'node_pool_auto_config.dart';
import 'node_pool_defaults.dart';
import 'notification_config.dart';
import 'parent_product_config.dart';
import 'private_cluster_config_container_v1.dart';
import 'release_channel.dart';
import 'resource_usage_export_config.dart';
import 'security_posture_config.dart';
import 'shielded_nodes.dart';
import 'status_condition.dart';
import 'vertical_pod_autoscaling.dart';
import 'workload_identity_config.dart';

/// The set of arguments for Cluster.
class ClusterContainerV1Args {
  /// Configurations for the various addons available to run in the cluster.
  final pulumi.Input<AddonsConfig>? addonsConfig;

  /// Configuration controlling RBAC group membership information.
  final pulumi.Input<AuthenticatorGroupsConfig>? authenticatorGroupsConfig;

  /// Autopilot configuration for the cluster.
  final pulumi.Input<Autopilot>? autopilot;

  /// Cluster-level autoscaling configuration.
  final pulumi.Input<ClusterAutoscaling>? autoscaling;

  /// Configuration for Binary Authorization.
  final pulumi.Input<BinaryAuthorization>? binaryAuthorization;

  /// The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`). Leave blank to have one automatically chosen or specify a `/14` block in `10.0.0.0/8`.
  final pulumi.Input<String>? clusterIpv4Cidr;

  /// Which conditions caused the current cluster state.
  final pulumi.Input<List<StatusCondition>>? conditions;

  /// Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once enabled.
  final pulumi.Input<ConfidentialNodes>? confidentialNodes;

  /// Configuration for the fine-grained cost management feature.
  final pulumi.Input<CostManagementConfig>? costManagementConfig;

  /// Configuration of etcd encryption.
  final pulumi.Input<DatabaseEncryption>? databaseEncryption;

  /// The default constraint on the maximum number of pods that can be run simultaneously on a node in the node pool of this cluster. Only honored if cluster created with IP Alias support.
  final pulumi.Input<MaxPodsConstraint>? defaultMaxPodsConstraint;

  /// An optional description of this cluster.
  final pulumi.Input<String>? description;

  /// Beta APIs Config
  final pulumi.Input<K8sBetaAPIConfig>? enableK8sBetaApis;

  /// Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alpha1) and features that may not be production ready in the kubernetes version of the master and nodes. The cluster has no SLA for uptime and master/node upgrades are disabled. Alpha enabled clusters are automatically deleted thirty days after creation.
  final pulumi.Input<bool>? enableKubernetesAlpha;

  /// Enable the ability to use Cloud TPUs in this cluster.
  final pulumi.Input<bool>? enableTpu;

  /// GKE Enterprise Configuration.
  final pulumi.Input<Map<String, dynamic>>? enterpriseConfig;

  /// This checksum is computed by the server based on the value of cluster fields, and may be sent on update requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Fleet information for the cluster.
  final pulumi.Input<Fleet>? fleet;

  /// Configuration for Identity Service component.
  final pulumi.Input<IdentityServiceConfig>? identityServiceConfig;

  /// The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVersions returned by getServerConfig. The version can be upgraded over time; such upgrades are reflected in currentMasterVersion and currentNodeVersion. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "","-": picks the default Kubernetes version
  final pulumi.Input<String>? initialClusterVersion;

  /// The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource quota](https://cloud.google.com/compute/quotas) is sufficient for this number of instances. You must also have available firewall and routes quota. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "node_config") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. This field is deprecated, use node_pool.initial_node_count instead.
  final pulumi.Input<int>? initialNodeCount;

  /// Deprecated. Use node_pools.instance_group_urls.
  final pulumi.Input<List<String>>? instanceGroupUrls;

  /// Configuration for cluster IP allocation.
  final pulumi.Input<IPAllocationPolicyContainerV1>? ipAllocationPolicy;

  /// Configuration for the legacy ABAC authorization mode.
  final pulumi.Input<LegacyAbac>? legacyAbac;
  final pulumi.Input<String>? location;

  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This field provides a default value if [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) are not specified during node pool creation. Warning: changing cluster locations will update the [NodePool.Locations](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters.nodePools#NodePool.FIELDS.locations) of all node pools and will result in nodes being added and/or removed.
  final pulumi.Input<List<String>>? locations;

  /// Logging configuration for the cluster.
  final pulumi.Input<LoggingConfig>? loggingConfig;

  /// The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  final pulumi.Input<String>? loggingService;

  /// Configure the maintenance policy for this cluster.
  final pulumi.Input<MaintenancePolicy>? maintenancePolicy;

  /// The authentication information for accessing the master endpoint. If unspecified, the defaults are used: For clusters before v1.12, if master_auth is unspecified, `username` will be set to "admin", a random password will be generated, and a client certificate will be issued.
  final pulumi.Input<MasterAuth>? masterAuth;

  /// The configuration options for master authorized networks feature.
  final pulumi.Input<MasterAuthorizedNetworksConfigContainerV1>?
      masterAuthorizedNetworksConfig;

  /// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  final pulumi.Input<MeshCertificates>? meshCertificates;

  /// Monitoring configuration for the cluster.
  final pulumi.Input<MonitoringConfig>? monitoringConfig;

  /// The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  final pulumi.Input<String>? monitoringService;

  /// The name of this cluster. The name must be unique within this project and location (e.g. zone or region), and can be up to 40 characters with the following restrictions: * Lowercase letters, numbers, and hyphens only. * Must start with a letter. * Must end with a number or a letter.
  final pulumi.Input<String>? name;

  /// The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks) to which the cluster is connected. If left unspecified, the `default` network will be used.
  final pulumi.Input<String>? network;

  /// Configuration for cluster networking.
  final pulumi.Input<NetworkConfigContainerV1>? networkConfig;

  /// Configuration options for the NetworkPolicy feature.
  final pulumi.Input<NetworkPolicyContainerV1>? networkPolicy;

  /// Parameters used in creating the cluster's nodes. For requests, this field should only be used in lieu of a "node_pool" object, since this configuration (along with the "initial_node_count") will be used to create a "NodePool" object with an auto-generated name. Do not use this and a node_pool at the same time. For responses, this field will be populated with the node configuration of the first node pool. (For configuration of each node pool, see `node_pool.config`) If unspecified, the defaults are used. This field is deprecated, use node_pool.config instead.
  final pulumi.Input<NodeConfigContainerV1>? nodeConfig;

  /// Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  final pulumi.Input<NodePoolAutoConfig>? nodePoolAutoConfig;

  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object.
  final pulumi.Input<NodePoolDefaults>? nodePoolDefaults;

  /// The node pools associated with this cluster. This field should not be set if "node_config" or "initial_node_count" are specified.
  final pulumi.Input<List<NodePool>>? nodePools;

  /// Notification configuration of the cluster.
  final pulumi.Input<NotificationConfig>? notificationConfig;

  /// The parent (project and location) where the cluster will be created. Specified in the format `projects/*/locations/*`.
  final pulumi.Input<String>? parent;

  /// The configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of the GKE cluster and take the ownership of the cluster.
  final pulumi.Input<ParentProductConfig>? parentProductConfig;

  /// Configuration for private cluster.
  final pulumi.Input<PrivateClusterConfigContainerV1>? privateClusterConfig;

  /// Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs/creating-managing-projects). This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? project;

  /// Release channel configuration. If left unspecified on cluster creation and a version is specified, the cluster is enrolled in the most mature release channel where the version is available (first checking STABLE, then REGULAR, and finally RAPID). Otherwise, if no release channel configuration and no version is specified, the cluster is enrolled in the REGULAR channel with its default version.
  final pulumi.Input<ReleaseChannel>? releaseChannel;

  /// The resource labels for the cluster to use to annotate any related Google Compute Engine resources.
  final pulumi.Input<Map<String, String>>? resourceLabels;

  /// Configuration for exporting resource usages. Resource usage export is disabled when this config is unspecified.
  final pulumi.Input<ResourceUsageExportConfig>? resourceUsageExportConfig;

  /// Enable/Disable Security Posture API features for the cluster.
  final pulumi.Input<SecurityPostureConfig>? securityPostureConfig;

  /// Shielded Nodes configuration.
  final pulumi.Input<ShieldedNodes>? shieldedNodes;

  /// The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetworks) to which the cluster is connected.
  final pulumi.Input<String>? subnetwork;

  /// Cluster-level Vertical Pod Autoscaling configuration.
  final pulumi.Input<VerticalPodAutoscaling>? verticalPodAutoscaling;

  /// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
  final pulumi.Input<WorkloadIdentityConfig>? workloadIdentityConfig;

  /// Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in which the cluster resides. This field has been deprecated and replaced by the parent field.
  final pulumi.Input<String>? zone;

  ClusterContainerV1Args({
    this.addonsConfig,
    this.authenticatorGroupsConfig,
    this.autopilot,
    this.autoscaling,
    this.binaryAuthorization,
    this.clusterIpv4Cidr,
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
    this.masterAuth,
    this.masterAuthorizedNetworksConfig,
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
    this.privateClusterConfig,
    this.project,
    this.releaseChannel,
    this.resourceLabels,
    this.resourceUsageExportConfig,
    this.securityPostureConfig,
    this.shieldedNodes,
    this.subnetwork,
    this.verticalPodAutoscaling,
    this.workloadIdentityConfig,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addonsConfigValue = addonsConfig;
    if (addonsConfigValue != null) {
      map['addonsConfig'] = pulumi.Input.mapOptionalInputValue<AddonsConfig,
          Map<String, dynamic>>(addonsConfigValue, (value) => value.toMap());
    }
    final authenticatorGroupsConfigValue = authenticatorGroupsConfig;
    if (authenticatorGroupsConfigValue != null) {
      map['authenticatorGroupsConfig'] = pulumi.Input.mapOptionalInputValue<
              AuthenticatorGroupsConfig, Map<String, dynamic>>(
          authenticatorGroupsConfigValue, (value) => value.toMap());
    }
    final autopilotValue = autopilot;
    if (autopilotValue != null) {
      map['autopilot'] =
          pulumi.Input.mapOptionalInputValue<Autopilot, Map<String, dynamic>>(
              autopilotValue, (value) => value.toMap());
    }
    final autoscalingValue = autoscaling;
    if (autoscalingValue != null) {
      map['autoscaling'] = pulumi.Input.mapOptionalInputValue<
          ClusterAutoscaling,
          Map<String, dynamic>>(autoscalingValue, (value) => value.toMap());
    }
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = pulumi.Input.mapOptionalInputValue<
              BinaryAuthorization, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final clusterIpv4CidrValue = clusterIpv4Cidr;
    if (clusterIpv4CidrValue != null) {
      map['clusterIpv4Cidr'] = clusterIpv4CidrValue;
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = pulumi.Input.mapOptionalInputValue<
              List<StatusCondition>, List<Map<String, dynamic>>>(
          conditionsValue,
          (value) =>
              pulumi.Input.encodeList<StatusCondition, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final confidentialNodesValue = confidentialNodes;
    if (confidentialNodesValue != null) {
      map['confidentialNodes'] = pulumi.Input.mapOptionalInputValue<
              ConfidentialNodes, Map<String, dynamic>>(
          confidentialNodesValue, (value) => value.toMap());
    }
    final costManagementConfigValue = costManagementConfig;
    if (costManagementConfigValue != null) {
      map['costManagementConfig'] = pulumi.Input.mapOptionalInputValue<
              CostManagementConfig, Map<String, dynamic>>(
          costManagementConfigValue, (value) => value.toMap());
    }
    final databaseEncryptionValue = databaseEncryption;
    if (databaseEncryptionValue != null) {
      map['databaseEncryption'] = pulumi.Input.mapOptionalInputValue<
              DatabaseEncryption, Map<String, dynamic>>(
          databaseEncryptionValue, (value) => value.toMap());
    }
    final defaultMaxPodsConstraintValue = defaultMaxPodsConstraint;
    if (defaultMaxPodsConstraintValue != null) {
      map['defaultMaxPodsConstraint'] = pulumi.Input.mapOptionalInputValue<
              MaxPodsConstraint, Map<String, dynamic>>(
          defaultMaxPodsConstraintValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableK8sBetaApisValue = enableK8sBetaApis;
    if (enableK8sBetaApisValue != null) {
      map['enableK8sBetaApis'] = pulumi.Input.mapOptionalInputValue<
              K8sBetaAPIConfig, Map<String, dynamic>>(
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
      map['fleet'] =
          pulumi.Input.mapOptionalInputValue<Fleet, Map<String, dynamic>>(
              fleetValue, (value) => value.toMap());
    }
    final identityServiceConfigValue = identityServiceConfig;
    if (identityServiceConfigValue != null) {
      map['identityServiceConfig'] = pulumi.Input.mapOptionalInputValue<
              IdentityServiceConfig, Map<String, dynamic>>(
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
      map['ipAllocationPolicy'] = pulumi.Input.mapOptionalInputValue<
              IPAllocationPolicyContainerV1, Map<String, dynamic>>(
          ipAllocationPolicyValue, (value) => value.toMap());
    }
    final legacyAbacValue = legacyAbac;
    if (legacyAbacValue != null) {
      map['legacyAbac'] =
          pulumi.Input.mapOptionalInputValue<LegacyAbac, Map<String, dynamic>>(
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
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<LoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final loggingServiceValue = loggingService;
    if (loggingServiceValue != null) {
      map['loggingService'] = loggingServiceValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = pulumi.Input.mapOptionalInputValue<
              MaintenancePolicy, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final masterAuthValue = masterAuth;
    if (masterAuthValue != null) {
      map['masterAuth'] =
          pulumi.Input.mapOptionalInputValue<MasterAuth, Map<String, dynamic>>(
              masterAuthValue, (value) => value.toMap());
    }
    final masterAuthorizedNetworksConfigValue = masterAuthorizedNetworksConfig;
    if (masterAuthorizedNetworksConfigValue != null) {
      map['masterAuthorizedNetworksConfig'] =
          pulumi.Input.mapOptionalInputValue<
                  MasterAuthorizedNetworksConfigContainerV1,
                  Map<String, dynamic>>(
              masterAuthorizedNetworksConfigValue, (value) => value.toMap());
    }
    final meshCertificatesValue = meshCertificates;
    if (meshCertificatesValue != null) {
      map['meshCertificates'] = pulumi.Input.mapOptionalInputValue<
              MeshCertificates, Map<String, dynamic>>(
          meshCertificatesValue, (value) => value.toMap());
    }
    final monitoringConfigValue = monitoringConfig;
    if (monitoringConfigValue != null) {
      map['monitoringConfig'] = pulumi.Input.mapOptionalInputValue<
              MonitoringConfig, Map<String, dynamic>>(
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
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NetworkConfigContainerV1,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final networkPolicyValue = networkPolicy;
    if (networkPolicyValue != null) {
      map['networkPolicy'] = pulumi.Input.mapOptionalInputValue<
          NetworkPolicyContainerV1,
          Map<String, dynamic>>(networkPolicyValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = pulumi.Input.mapOptionalInputValue<
          NodeConfigContainerV1,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final nodePoolAutoConfigValue = nodePoolAutoConfig;
    if (nodePoolAutoConfigValue != null) {
      map['nodePoolAutoConfig'] = pulumi.Input.mapOptionalInputValue<
              NodePoolAutoConfig, Map<String, dynamic>>(
          nodePoolAutoConfigValue, (value) => value.toMap());
    }
    final nodePoolDefaultsValue = nodePoolDefaults;
    if (nodePoolDefaultsValue != null) {
      map['nodePoolDefaults'] = pulumi.Input.mapOptionalInputValue<
              NodePoolDefaults, Map<String, dynamic>>(
          nodePoolDefaultsValue, (value) => value.toMap());
    }
    final nodePoolsValue = nodePools;
    if (nodePoolsValue != null) {
      map['nodePools'] = pulumi.Input.mapOptionalInputValue<List<NodePool>,
              List<Map<String, dynamic>>>(
          nodePoolsValue,
          (value) => pulumi.Input.encodeList<NodePool, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = pulumi.Input.mapOptionalInputValue<
              NotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final parentProductConfigValue = parentProductConfig;
    if (parentProductConfigValue != null) {
      map['parentProductConfig'] = pulumi.Input.mapOptionalInputValue<
              ParentProductConfig, Map<String, dynamic>>(
          parentProductConfigValue, (value) => value.toMap());
    }
    final privateClusterConfigValue = privateClusterConfig;
    if (privateClusterConfigValue != null) {
      map['privateClusterConfig'] = pulumi.Input.mapOptionalInputValue<
              PrivateClusterConfigContainerV1, Map<String, dynamic>>(
          privateClusterConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final releaseChannelValue = releaseChannel;
    if (releaseChannelValue != null) {
      map['releaseChannel'] = pulumi.Input.mapOptionalInputValue<ReleaseChannel,
          Map<String, dynamic>>(releaseChannelValue, (value) => value.toMap());
    }
    final resourceLabelsValue = resourceLabels;
    if (resourceLabelsValue != null) {
      map['resourceLabels'] = resourceLabelsValue;
    }
    final resourceUsageExportConfigValue = resourceUsageExportConfig;
    if (resourceUsageExportConfigValue != null) {
      map['resourceUsageExportConfig'] = pulumi.Input.mapOptionalInputValue<
              ResourceUsageExportConfig, Map<String, dynamic>>(
          resourceUsageExportConfigValue, (value) => value.toMap());
    }
    final securityPostureConfigValue = securityPostureConfig;
    if (securityPostureConfigValue != null) {
      map['securityPostureConfig'] = pulumi.Input.mapOptionalInputValue<
              SecurityPostureConfig, Map<String, dynamic>>(
          securityPostureConfigValue, (value) => value.toMap());
    }
    final shieldedNodesValue = shieldedNodes;
    if (shieldedNodesValue != null) {
      map['shieldedNodes'] = pulumi.Input.mapOptionalInputValue<ShieldedNodes,
          Map<String, dynamic>>(shieldedNodesValue, (value) => value.toMap());
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final verticalPodAutoscalingValue = verticalPodAutoscaling;
    if (verticalPodAutoscalingValue != null) {
      map['verticalPodAutoscaling'] = pulumi.Input.mapOptionalInputValue<
              VerticalPodAutoscaling, Map<String, dynamic>>(
          verticalPodAutoscalingValue, (value) => value.toMap());
    }
    final workloadIdentityConfigValue = workloadIdentityConfig;
    if (workloadIdentityConfigValue != null) {
      map['workloadIdentityConfig'] = pulumi.Input.mapOptionalInputValue<
              WorkloadIdentityConfig, Map<String, dynamic>>(
          workloadIdentityConfigValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ClusterContainerV1Args.fromMap(Map<String, dynamic> map) {
    return ClusterContainerV1Args(
      addonsConfig:
          pulumi.Input.asOptionalInput<AddonsConfig>(map['addonsConfig']),
      authenticatorGroupsConfig:
          pulumi.Input.asOptionalInput<AuthenticatorGroupsConfig>(
              map['authenticatorGroupsConfig']),
      autopilot: pulumi.Input.asOptionalInput<Autopilot>(map['autopilot']),
      autoscaling:
          pulumi.Input.asOptionalInput<ClusterAutoscaling>(map['autoscaling']),
      binaryAuthorization: pulumi.Input.asOptionalInput<BinaryAuthorization>(
          map['binaryAuthorization']),
      clusterIpv4Cidr:
          pulumi.Input.asOptionalInput<String>(map['clusterIpv4Cidr']),
      conditions: pulumi.Input.asOptionalInput<List<StatusCondition>>(
          map['conditions']),
      confidentialNodes: pulumi.Input.asOptionalInput<ConfidentialNodes>(
          map['confidentialNodes']),
      costManagementConfig: pulumi.Input.asOptionalInput<CostManagementConfig>(
          map['costManagementConfig']),
      databaseEncryption: pulumi.Input.asOptionalInput<DatabaseEncryption>(
          map['databaseEncryption']),
      defaultMaxPodsConstraint: pulumi.Input.asOptionalInput<MaxPodsConstraint>(
          map['defaultMaxPodsConstraint']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enableK8sBetaApis: pulumi.Input.asOptionalInput<K8sBetaAPIConfig>(
          map['enableK8sBetaApis']),
      enableKubernetesAlpha:
          pulumi.Input.asOptionalInput<bool>(map['enableKubernetesAlpha']),
      enableTpu: pulumi.Input.asOptionalInput<bool>(map['enableTpu']),
      enterpriseConfig: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['enterpriseConfig']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      fleet: pulumi.Input.asOptionalInput<Fleet>(map['fleet']),
      identityServiceConfig:
          pulumi.Input.asOptionalInput<IdentityServiceConfig>(
              map['identityServiceConfig']),
      initialClusterVersion:
          pulumi.Input.asOptionalInput<String>(map['initialClusterVersion']),
      initialNodeCount:
          pulumi.Input.asOptionalInput<int>(map['initialNodeCount']),
      instanceGroupUrls:
          pulumi.Input.asOptionalInput<List<String>>(map['instanceGroupUrls']),
      ipAllocationPolicy:
          pulumi.Input.asOptionalInput<IPAllocationPolicyContainerV1>(
              map['ipAllocationPolicy']),
      legacyAbac: pulumi.Input.asOptionalInput<LegacyAbac>(map['legacyAbac']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      locations: pulumi.Input.asOptionalInput<List<String>>(map['locations']),
      loggingConfig:
          pulumi.Input.asOptionalInput<LoggingConfig>(map['loggingConfig']),
      loggingService:
          pulumi.Input.asOptionalInput<String>(map['loggingService']),
      maintenancePolicy: pulumi.Input.asOptionalInput<MaintenancePolicy>(
          map['maintenancePolicy']),
      masterAuth: pulumi.Input.asOptionalInput<MasterAuth>(map['masterAuth']),
      masterAuthorizedNetworksConfig: pulumi.Input.asOptionalInput<
              MasterAuthorizedNetworksConfigContainerV1>(
          map['masterAuthorizedNetworksConfig']),
      meshCertificates: pulumi.Input.asOptionalInput<MeshCertificates>(
          map['meshCertificates']),
      monitoringConfig: pulumi.Input.asOptionalInput<MonitoringConfig>(
          map['monitoringConfig']),
      monitoringService:
          pulumi.Input.asOptionalInput<String>(map['monitoringService']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      networkConfig: pulumi.Input.asOptionalInput<NetworkConfigContainerV1>(
          map['networkConfig']),
      networkPolicy: pulumi.Input.asOptionalInput<NetworkPolicyContainerV1>(
          map['networkPolicy']),
      nodeConfig: pulumi.Input.asOptionalInput<NodeConfigContainerV1>(
          map['nodeConfig']),
      nodePoolAutoConfig: pulumi.Input.asOptionalInput<NodePoolAutoConfig>(
          map['nodePoolAutoConfig']),
      nodePoolDefaults: pulumi.Input.asOptionalInput<NodePoolDefaults>(
          map['nodePoolDefaults']),
      nodePools: pulumi.Input.asOptionalInput<List<NodePool>>(map['nodePools']),
      notificationConfig: pulumi.Input.asOptionalInput<NotificationConfig>(
          map['notificationConfig']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      parentProductConfig: pulumi.Input.asOptionalInput<ParentProductConfig>(
          map['parentProductConfig']),
      privateClusterConfig:
          pulumi.Input.asOptionalInput<PrivateClusterConfigContainerV1>(
              map['privateClusterConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      releaseChannel:
          pulumi.Input.asOptionalInput<ReleaseChannel>(map['releaseChannel']),
      resourceLabels: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['resourceLabels']),
      resourceUsageExportConfig:
          pulumi.Input.asOptionalInput<ResourceUsageExportConfig>(
              map['resourceUsageExportConfig']),
      securityPostureConfig:
          pulumi.Input.asOptionalInput<SecurityPostureConfig>(
              map['securityPostureConfig']),
      shieldedNodes:
          pulumi.Input.asOptionalInput<ShieldedNodes>(map['shieldedNodes']),
      subnetwork: pulumi.Input.asOptionalInput<String>(map['subnetwork']),
      verticalPodAutoscaling:
          pulumi.Input.asOptionalInput<VerticalPodAutoscaling>(
              map['verticalPodAutoscaling']),
      workloadIdentityConfig:
          pulumi.Input.asOptionalInput<WorkloadIdentityConfig>(
              map['workloadIdentityConfig']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
