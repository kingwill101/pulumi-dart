// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_settings_response.dart';
import 'container_service_linux_profile_response.dart';
import 'container_service_network_profile_response.dart';
import 'extended_location_response.dart';
import 'managed_cluster_aadprofile_response.dart';
import 'managed_cluster_addon_profile_response.dart';
import 'managed_cluster_agent_pool_profile_response.dart';
import 'managed_cluster_aitoolchain_operator_profile_response.dart';
import 'managed_cluster_apiserver_access_profile_response.dart';
import 'managed_cluster_auto_upgrade_profile_response.dart';
import 'managed_cluster_azure_monitor_profile_response.dart';
import 'managed_cluster_bootstrap_profile_response.dart';
import 'managed_cluster_httpproxy_config_response.dart';
import 'managed_cluster_identity_response.dart';
import 'managed_cluster_ingress_profile_response.dart';
import 'managed_cluster_metrics_profile_response.dart';
import 'managed_cluster_node_provisioning_profile_response.dart';
import 'managed_cluster_node_resource_group_profile_response.dart';
import 'managed_cluster_oidcissuer_profile_response.dart';
import 'managed_cluster_pod_identity_profile_response.dart';
import 'managed_cluster_properties_response_auto_scaler_profile.dart';
import 'managed_cluster_security_profile_response.dart';
import 'managed_cluster_service_principal_profile_response.dart';
import 'managed_cluster_skuresponse.dart';
import 'managed_cluster_status_response.dart';
import 'managed_cluster_storage_profile_response.dart';
import 'managed_cluster_windows_profile_response.dart';
import 'managed_cluster_workload_auto_scaler_profile_response.dart';
import 'power_state_response.dart';
import 'private_link_resource_response.dart';
import 'service_mesh_profile_response.dart';
import 'system_data_response.dart';
import 'user_assigned_identity_response.dart';

/// Result data returned by getManagedCluster.
class GetManagedClusterResult {
  /// The Azure Active Directory configuration.
  final ManagedClusterAADProfileResponse? aadProfile;
  /// The profile of managed cluster add-on.
  final Map<String, ManagedClusterAddonProfileResponse>? addonProfiles;
  /// The agent pool properties.
  final List<ManagedClusterAgentPoolProfileResponse>? agentPoolProfiles;
  /// AI toolchain operator settings that apply to the whole cluster.
  final ManagedClusterAIToolchainOperatorProfileResponse? aiToolchainOperatorProfile;
  /// The access profile for managed cluster API server.
  final ManagedClusterAPIServerAccessProfileResponse? apiServerAccessProfile;
  /// Parameters to be applied to the cluster-autoscaler when enabled
  final ManagedClusterPropertiesResponseAutoScalerProfile? autoScalerProfile;
  /// The auto upgrade configuration.
  final ManagedClusterAutoUpgradeProfileResponse? autoUpgradeProfile;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure Monitor addon profiles for monitoring the managed cluster.
  final ManagedClusterAzureMonitorProfileResponse? azureMonitorProfile;
  /// The special FQDN used by the Azure Portal to access the Managed Cluster. This FQDN is for use only by the Azure Portal and should not be used by other clients. The Azure Portal requires certain Cross-Origin Resource Sharing (CORS) headers to be sent in some responses, which Kubernetes APIServer doesn't handle by default. This special FQDN supports CORS, allowing the Azure Portal to function properly.
  final String azurePortalFQDN;
  /// Profile of the cluster bootstrap configuration.
  final ManagedClusterBootstrapProfileResponse? bootstrapProfile;
  /// The version of Kubernetes the Managed Cluster is running. If kubernetesVersion was a fully specified version <major.minor.patch>, this field will be exactly equal to it. If kubernetesVersion was <major.minor>, this field will contain the full <major.minor.patch> version being used.
  final String currentKubernetesVersion;
  /// If local accounts should be disabled on the Managed Cluster. If set to true, getting static credentials will be disabled for this cluster. This must only be used on Managed Clusters that are AAD enabled. For more details see [disable local accounts](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts-preview).
  final bool? disableLocalAccounts;
  /// The Resource ID of the disk encryption set to use for enabling encryption at rest. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskEncryptionSets/{encryptionSetName}'
  final String? diskEncryptionSetID;
  /// The DNS prefix of the Managed Cluster. This cannot be updated once the Managed Cluster has been created.
  final String? dnsPrefix;
  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  final String eTag;
  /// Whether to enable Kubernetes Role-Based Access Control.
  final bool? enableRBAC;
  /// The extended location of the Virtual Machine.
  final ExtendedLocationResponse? extendedLocation;
  /// The FQDN of the master pool.
  final String fqdn;
  /// The FQDN subdomain of the private cluster with custom private dns zone. This cannot be updated once the Managed Cluster has been created.
  final String? fqdnSubdomain;
  /// Configurations for provisioning the cluster with HTTP proxy servers.
  final ManagedClusterHTTPProxyConfigResponse? httpProxyConfig;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The identity of the managed cluster, if configured.
  final ManagedClusterIdentityResponse? identity;
  /// The user identity associated with the managed cluster. This identity will be used by the kubelet. Only one user assigned identity is allowed. The only accepted key is "kubeletidentity", with value of "resourceId": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}".
  final Map<String, UserAssignedIdentityResponse>? identityProfile;
  /// Ingress profile for the managed cluster.
  final ManagedClusterIngressProfileResponse? ingressProfile;
  /// This is primarily used to expose different UI experiences in the portal for different kinds
  final String? kind;
  /// The version of Kubernetes specified by the user. Both patch version <major.minor.patch> (e.g. 1.20.13) and <major.minor> (e.g. 1.20) are supported. When <major.minor> is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same <major.minor> once it has been created (e.g. 1.14.x -> 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -> 1.15.x or 1.15.x -> 1.16.x are allowed, however 1.14.x -> 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
  final String? kubernetesVersion;
  /// The profile for Linux VMs in the Managed Cluster.
  final ContainerServiceLinuxProfileResponse? linuxProfile;
  /// The geo-location where the resource lives
  final String location;
  /// The max number of agent pools for the managed cluster.
  final int maxAgentPools;
  /// Optional cluster metrics configuration.
  final ManagedClusterMetricsProfileResponse? metricsProfile;
  /// The name of the resource
  final String name;
  /// The network configuration profile.
  final ContainerServiceNetworkProfileResponse? networkProfile;
  /// Node provisioning settings that apply to the whole cluster.
  final ManagedClusterNodeProvisioningProfileResponse? nodeProvisioningProfile;
  /// The name of the resource group containing agent pool nodes.
  final String? nodeResourceGroup;
  /// Profile of the node resource group configuration.
  final ManagedClusterNodeResourceGroupProfileResponse? nodeResourceGroupProfile;
  /// The OIDC issuer profile of the Managed Cluster.
  final ManagedClusterOIDCIssuerProfileResponse? oidcIssuerProfile;
  /// The pod identity profile of the Managed Cluster. See [use AAD pod identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity) for more details on AAD pod identity integration.
  final ManagedClusterPodIdentityProfileResponse? podIdentityProfile;
  /// The Power State of the cluster.
  final PowerStateResponse powerState;
  /// The FQDN of private cluster.
  final String privateFQDN;
  /// Private link resources associated with the cluster.
  final List<PrivateLinkResourceResponse>? privateLinkResources;
  /// The current provisioning state.
  final String provisioningState;
  /// PublicNetworkAccess of the managedCluster. Allow or deny public network access for AKS
  final String? publicNetworkAccess;
  /// The resourceUID uniquely identifies ManagedClusters that reuse ARM ResourceIds (i.e: create, delete, create sequence)
  final String resourceUID;
  /// Security profile for the managed cluster.
  final ManagedClusterSecurityProfileResponse? securityProfile;
  /// Service mesh profile for a managed cluster.
  final ServiceMeshProfileResponse? serviceMeshProfile;
  /// Information about a service principal identity for the cluster to use for manipulating Azure APIs.
  final ManagedClusterServicePrincipalProfileResponse? servicePrincipalProfile;
  /// The managed cluster SKU.
  final ManagedClusterSKUResponse? sku;
  /// Contains read-only information about the Managed Cluster.
  final ManagedClusterStatusResponse? status;
  /// Storage profile for the managed cluster.
  final ManagedClusterStorageProfileResponse? storageProfile;
  /// The support plan for the Managed Cluster. If unspecified, the default is 'KubernetesOfficial'.
  final String? supportPlan;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Settings for upgrading a cluster.
  final ClusterUpgradeSettingsResponse? upgradeSettings;
  /// The profile for Windows VMs in the Managed Cluster.
  final ManagedClusterWindowsProfileResponse? windowsProfile;
  /// Workload Auto-scaler profile for the managed cluster.
  final ManagedClusterWorkloadAutoScalerProfileResponse? workloadAutoScalerProfile;

  /// Creates a new [GetManagedClusterResult].
  /// [aadProfile] The Azure Active Directory configuration.
  /// [addonProfiles] The profile of managed cluster add-on.
  /// [agentPoolProfiles] The agent pool properties.
  /// [aiToolchainOperatorProfile] AI toolchain operator settings that apply to the whole cluster.
  /// [apiServerAccessProfile] The access profile for managed cluster API server.
  /// [autoScalerProfile] Parameters to be applied to the cluster-autoscaler when enabled
  /// [autoUpgradeProfile] The auto upgrade configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureMonitorProfile] Azure Monitor addon profiles for monitoring the managed cluster.
  /// [azurePortalFQDN] The special FQDN used by the Azure Portal to access the Managed Cluster. This FQDN is for use only by the Azure Portal and should not be used by other clients. The Azure Portal requires certain Cross-Origin Resource Sharing (CORS) headers to be sent in some responses, which Kubernetes APIServer doesn't handle by default. This special FQDN supports CORS, allowing the Azure Portal to function properly.
  /// [bootstrapProfile] Profile of the cluster bootstrap configuration.
  /// [currentKubernetesVersion] The version of Kubernetes the Managed Cluster is running. If kubernetesVersion was a fully specified version <major.minor.patch>, this field will be exactly equal to it. If kubernetesVersion was <major.minor>, this field will contain the full <major.minor.patch> version being used.
  /// [disableLocalAccounts] If local accounts should be disabled on the Managed Cluster. If set to true, getting static credentials will be disabled for this cluster. This must only be used on Managed Clusters that are AAD enabled. For more details see [disable local accounts](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts-preview).
  /// [diskEncryptionSetID] The Resource ID of the disk encryption set to use for enabling encryption at rest. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskEncryptionSets/{encryptionSetName}'
  /// [dnsPrefix] The DNS prefix of the Managed Cluster. This cannot be updated once the Managed Cluster has been created.
  /// [eTag] Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  /// [enableRBAC] Whether to enable Kubernetes Role-Based Access Control.
  /// [extendedLocation] The extended location of the Virtual Machine.
  /// [fqdn] The FQDN of the master pool.
  /// [fqdnSubdomain] The FQDN subdomain of the private cluster with custom private dns zone. This cannot be updated once the Managed Cluster has been created.
  /// [httpProxyConfig] Configurations for provisioning the cluster with HTTP proxy servers.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity of the managed cluster, if configured.
  /// [identityProfile] The user identity associated with the managed cluster. This identity will be used by the kubelet. Only one user assigned identity is allowed. The only accepted key is "kubeletidentity", with value of "resourceId": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}".
  /// [ingressProfile] Ingress profile for the managed cluster.
  /// [kind] This is primarily used to expose different UI experiences in the portal for different kinds
  /// [kubernetesVersion] The version of Kubernetes specified by the user. Both patch version <major.minor.patch> (e.g. 1.20.13) and <major.minor> (e.g. 1.20) are supported. When <major.minor> is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same <major.minor> once it has been created (e.g. 1.14.x -> 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -> 1.15.x or 1.15.x -> 1.16.x are allowed, however 1.14.x -> 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
  /// [linuxProfile] The profile for Linux VMs in the Managed Cluster.
  /// [location] The geo-location where the resource lives
  /// [maxAgentPools] The max number of agent pools for the managed cluster.
  /// [metricsProfile] Optional cluster metrics configuration.
  /// [name] The name of the resource
  /// [networkProfile] The network configuration profile.
  /// [nodeProvisioningProfile] Node provisioning settings that apply to the whole cluster.
  /// [nodeResourceGroup] The name of the resource group containing agent pool nodes.
  /// [nodeResourceGroupProfile] Profile of the node resource group configuration.
  /// [oidcIssuerProfile] The OIDC issuer profile of the Managed Cluster.
  /// [podIdentityProfile] The pod identity profile of the Managed Cluster. See [use AAD pod identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity) for more details on AAD pod identity integration.
  /// [powerState] The Power State of the cluster.
  /// [privateFQDN] The FQDN of private cluster.
  /// [privateLinkResources] Private link resources associated with the cluster.
  /// [provisioningState] The current provisioning state.
  /// [publicNetworkAccess] PublicNetworkAccess of the managedCluster. Allow or deny public network access for AKS
  /// [resourceUID] The resourceUID uniquely identifies ManagedClusters that reuse ARM ResourceIds (i.e: create, delete, create sequence)
  /// [securityProfile] Security profile for the managed cluster.
  /// [serviceMeshProfile] Service mesh profile for a managed cluster.
  /// [servicePrincipalProfile] Information about a service principal identity for the cluster to use for manipulating Azure APIs.
  /// [sku] The managed cluster SKU.
  /// [status] Contains read-only information about the Managed Cluster.
  /// [storageProfile] Storage profile for the managed cluster.
  /// [supportPlan] The support plan for the Managed Cluster. If unspecified, the default is 'KubernetesOfficial'.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [upgradeSettings] Settings for upgrading a cluster.
  /// [windowsProfile] The profile for Windows VMs in the Managed Cluster.
  /// [workloadAutoScalerProfile] Workload Auto-scaler profile for the managed cluster.
  GetManagedClusterResult({
    this.aadProfile,
    this.addonProfiles,
    this.agentPoolProfiles,
    this.aiToolchainOperatorProfile,
    this.apiServerAccessProfile,
    this.autoScalerProfile,
    this.autoUpgradeProfile,
    required this.azureApiVersion,
    this.azureMonitorProfile,
    required this.azurePortalFQDN,
    this.bootstrapProfile,
    required this.currentKubernetesVersion,
    this.disableLocalAccounts,
    this.diskEncryptionSetID,
    this.dnsPrefix,
    required this.eTag,
    this.enableRBAC,
    this.extendedLocation,
    required this.fqdn,
    this.fqdnSubdomain,
    this.httpProxyConfig,
    required this.id,
    this.identity,
    this.identityProfile,
    this.ingressProfile,
    this.kind,
    this.kubernetesVersion,
    this.linuxProfile,
    required this.location,
    required this.maxAgentPools,
    this.metricsProfile,
    required this.name,
    this.networkProfile,
    this.nodeProvisioningProfile,
    this.nodeResourceGroup,
    this.nodeResourceGroupProfile,
    this.oidcIssuerProfile,
    this.podIdentityProfile,
    required this.powerState,
    required this.privateFQDN,
    this.privateLinkResources,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.resourceUID,
    this.securityProfile,
    this.serviceMeshProfile,
    this.servicePrincipalProfile,
    this.sku,
    this.status,
    this.storageProfile,
    this.supportPlan,
    required this.systemData,
    this.tags,
    required this.type,
    this.upgradeSettings,
    this.windowsProfile,
    this.workloadAutoScalerProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadProfile': ?aadProfile == null ? null : aadProfile!.toMap(),
      'addonProfiles': ?addonProfiles == null ? null : pulumi.Input.encodeMapValues<ManagedClusterAddonProfileResponse, Map<String, dynamic>>(addonProfiles!, (value) => value.toMap()),
      'agentPoolProfiles': ?agentPoolProfiles == null ? null : pulumi.Input.encodeList<ManagedClusterAgentPoolProfileResponse, Map<String, dynamic>>(agentPoolProfiles!, (value) => value.toMap()),
      'aiToolchainOperatorProfile': ?aiToolchainOperatorProfile == null ? null : aiToolchainOperatorProfile!.toMap(),
      'apiServerAccessProfile': ?apiServerAccessProfile == null ? null : apiServerAccessProfile!.toMap(),
      'autoScalerProfile': ?autoScalerProfile == null ? null : autoScalerProfile!.toMap(),
      'autoUpgradeProfile': ?autoUpgradeProfile == null ? null : autoUpgradeProfile!.toMap(),
      'azureApiVersion': azureApiVersion,
      'azureMonitorProfile': ?azureMonitorProfile == null ? null : azureMonitorProfile!.toMap(),
      'azurePortalFQDN': azurePortalFQDN,
      'bootstrapProfile': ?bootstrapProfile == null ? null : bootstrapProfile!.toMap(),
      'currentKubernetesVersion': currentKubernetesVersion,
      'disableLocalAccounts': ?disableLocalAccounts,
      'diskEncryptionSetID': ?diskEncryptionSetID,
      'dnsPrefix': ?dnsPrefix,
      'eTag': eTag,
      'enableRBAC': ?enableRBAC,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'fqdn': fqdn,
      'fqdnSubdomain': ?fqdnSubdomain,
      'httpProxyConfig': ?httpProxyConfig == null ? null : httpProxyConfig!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'identityProfile': ?identityProfile == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(identityProfile!, (value) => value.toMap()),
      'ingressProfile': ?ingressProfile == null ? null : ingressProfile!.toMap(),
      'kind': ?kind,
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfile': ?linuxProfile == null ? null : linuxProfile!.toMap(),
      'location': location,
      'maxAgentPools': maxAgentPools,
      'metricsProfile': ?metricsProfile == null ? null : metricsProfile!.toMap(),
      'name': name,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'nodeProvisioningProfile': ?nodeProvisioningProfile == null ? null : nodeProvisioningProfile!.toMap(),
      'nodeResourceGroup': ?nodeResourceGroup,
      'nodeResourceGroupProfile': ?nodeResourceGroupProfile == null ? null : nodeResourceGroupProfile!.toMap(),
      'oidcIssuerProfile': ?oidcIssuerProfile == null ? null : oidcIssuerProfile!.toMap(),
      'podIdentityProfile': ?podIdentityProfile == null ? null : podIdentityProfile!.toMap(),
      'powerState': powerState.toMap(),
      'privateFQDN': privateFQDN,
      'privateLinkResources': ?privateLinkResources == null ? null : pulumi.Input.encodeList<PrivateLinkResourceResponse, Map<String, dynamic>>(privateLinkResources!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceUID': resourceUID,
      'securityProfile': ?securityProfile == null ? null : securityProfile!.toMap(),
      'serviceMeshProfile': ?serviceMeshProfile == null ? null : serviceMeshProfile!.toMap(),
      'servicePrincipalProfile': ?servicePrincipalProfile == null ? null : servicePrincipalProfile!.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'supportPlan': ?supportPlan,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'upgradeSettings': ?upgradeSettings == null ? null : upgradeSettings!.toMap(),
      'windowsProfile': ?windowsProfile == null ? null : windowsProfile!.toMap(),
      'workloadAutoScalerProfile': ?workloadAutoScalerProfile == null ? null : workloadAutoScalerProfile!.toMap(),
    };
  }

  factory GetManagedClusterResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterResult(
      aadProfile: map['aadProfile'] == null ? null : ManagedClusterAADProfileResponse.fromMap((map['aadProfile']! as Map).cast<String, dynamic>()),
      addonProfiles: map['addonProfiles'] == null ? null : pulumi.Input.decodeMapValues<ManagedClusterAddonProfileResponse>(map['addonProfiles']!, (value) => ManagedClusterAddonProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      agentPoolProfiles: map['agentPoolProfiles'] == null ? null : pulumi.Input.decodeList<ManagedClusterAgentPoolProfileResponse>(map['agentPoolProfiles']!, (value) => ManagedClusterAgentPoolProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      aiToolchainOperatorProfile: map['aiToolchainOperatorProfile'] == null ? null : ManagedClusterAIToolchainOperatorProfileResponse.fromMap((map['aiToolchainOperatorProfile']! as Map).cast<String, dynamic>()),
      apiServerAccessProfile: map['apiServerAccessProfile'] == null ? null : ManagedClusterAPIServerAccessProfileResponse.fromMap((map['apiServerAccessProfile']! as Map).cast<String, dynamic>()),
      autoScalerProfile: map['autoScalerProfile'] == null ? null : ManagedClusterPropertiesResponseAutoScalerProfile.fromMap((map['autoScalerProfile']! as Map).cast<String, dynamic>()),
      autoUpgradeProfile: map['autoUpgradeProfile'] == null ? null : ManagedClusterAutoUpgradeProfileResponse.fromMap((map['autoUpgradeProfile']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      azureMonitorProfile: map['azureMonitorProfile'] == null ? null : ManagedClusterAzureMonitorProfileResponse.fromMap((map['azureMonitorProfile']! as Map).cast<String, dynamic>()),
      azurePortalFQDN: map['azurePortalFQDN'] as String,
      bootstrapProfile: map['bootstrapProfile'] == null ? null : ManagedClusterBootstrapProfileResponse.fromMap((map['bootstrapProfile']! as Map).cast<String, dynamic>()),
      currentKubernetesVersion: map['currentKubernetesVersion'] as String,
      disableLocalAccounts: map['disableLocalAccounts'] == null ? null : map['disableLocalAccounts']! as bool,
      diskEncryptionSetID: map['diskEncryptionSetID'] == null ? null : map['diskEncryptionSetID']! as String,
      dnsPrefix: map['dnsPrefix'] == null ? null : map['dnsPrefix']! as String,
      eTag: map['eTag'] as String,
      enableRBAC: map['enableRBAC'] == null ? null : map['enableRBAC']! as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      fqdn: map['fqdn'] as String,
      fqdnSubdomain: map['fqdnSubdomain'] == null ? null : map['fqdnSubdomain']! as String,
      httpProxyConfig: map['httpProxyConfig'] == null ? null : ManagedClusterHTTPProxyConfigResponse.fromMap((map['httpProxyConfig']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedClusterIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      identityProfile: map['identityProfile'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['identityProfile']!, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
      ingressProfile: map['ingressProfile'] == null ? null : ManagedClusterIngressProfileResponse.fromMap((map['ingressProfile']! as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind']! as String,
      kubernetesVersion: map['kubernetesVersion'] == null ? null : map['kubernetesVersion']! as String,
      linuxProfile: map['linuxProfile'] == null ? null : ContainerServiceLinuxProfileResponse.fromMap((map['linuxProfile']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maxAgentPools: map['maxAgentPools'] as int,
      metricsProfile: map['metricsProfile'] == null ? null : ManagedClusterMetricsProfileResponse.fromMap((map['metricsProfile']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkProfile: map['networkProfile'] == null ? null : ContainerServiceNetworkProfileResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>()),
      nodeProvisioningProfile: map['nodeProvisioningProfile'] == null ? null : ManagedClusterNodeProvisioningProfileResponse.fromMap((map['nodeProvisioningProfile']! as Map).cast<String, dynamic>()),
      nodeResourceGroup: map['nodeResourceGroup'] == null ? null : map['nodeResourceGroup']! as String,
      nodeResourceGroupProfile: map['nodeResourceGroupProfile'] == null ? null : ManagedClusterNodeResourceGroupProfileResponse.fromMap((map['nodeResourceGroupProfile']! as Map).cast<String, dynamic>()),
      oidcIssuerProfile: map['oidcIssuerProfile'] == null ? null : ManagedClusterOIDCIssuerProfileResponse.fromMap((map['oidcIssuerProfile']! as Map).cast<String, dynamic>()),
      podIdentityProfile: map['podIdentityProfile'] == null ? null : ManagedClusterPodIdentityProfileResponse.fromMap((map['podIdentityProfile']! as Map).cast<String, dynamic>()),
      powerState: PowerStateResponse.fromMap((map['powerState'] as Map).cast<String, dynamic>()),
      privateFQDN: map['privateFQDN'] as String,
      privateLinkResources: map['privateLinkResources'] == null ? null : pulumi.Input.decodeList<PrivateLinkResourceResponse>(map['privateLinkResources']!, (value) => PrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      resourceUID: map['resourceUID'] as String,
      securityProfile: map['securityProfile'] == null ? null : ManagedClusterSecurityProfileResponse.fromMap((map['securityProfile']! as Map).cast<String, dynamic>()),
      serviceMeshProfile: map['serviceMeshProfile'] == null ? null : ServiceMeshProfileResponse.fromMap((map['serviceMeshProfile']! as Map).cast<String, dynamic>()),
      servicePrincipalProfile: map['servicePrincipalProfile'] == null ? null : ManagedClusterServicePrincipalProfileResponse.fromMap((map['servicePrincipalProfile']! as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : ManagedClusterSKUResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ManagedClusterStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : ManagedClusterStorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>()),
      supportPlan: map['supportPlan'] == null ? null : map['supportPlan']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      upgradeSettings: map['upgradeSettings'] == null ? null : ClusterUpgradeSettingsResponse.fromMap((map['upgradeSettings']! as Map).cast<String, dynamic>()),
      windowsProfile: map['windowsProfile'] == null ? null : ManagedClusterWindowsProfileResponse.fromMap((map['windowsProfile']! as Map).cast<String, dynamic>()),
      workloadAutoScalerProfile: map['workloadAutoScalerProfile'] == null ? null : ManagedClusterWorkloadAutoScalerProfileResponse.fromMap((map['workloadAutoScalerProfile']! as Map).cast<String, dynamic>()),
    );
  }
}

