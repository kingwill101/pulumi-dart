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
import 'user_assigned_identity_managed_cluster_response.dart';

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
  final String? azureApiVersion;
  /// Azure Monitor addon profiles for monitoring the managed cluster.
  final ManagedClusterAzureMonitorProfileResponse? azureMonitorProfile;
  /// The special FQDN used by the Azure Portal to access the Managed Cluster. This FQDN is for use only by the Azure Portal and should not be used by other clients. The Azure Portal requires certain Cross-Origin Resource Sharing (CORS) headers to be sent in some responses, which Kubernetes APIServer doesn't handle by default. This special FQDN supports CORS, allowing the Azure Portal to function properly.
  final String? azurePortalFQDN;
  /// Profile of the cluster bootstrap configuration.
  final ManagedClusterBootstrapProfileResponse? bootstrapProfile;
  /// The version of Kubernetes the Managed Cluster is running. If kubernetesVersion was a fully specified version &lt;major.minor.patch&gt;, this field will be exactly equal to it. If kubernetesVersion was &lt;major.minor&gt;, this field will contain the full &lt;major.minor.patch&gt; version being used.
  final String? currentKubernetesVersion;
  /// If local accounts should be disabled on the Managed Cluster. If set to true, getting static credentials will be disabled for this cluster. This must only be used on Managed Clusters that are AAD enabled. For more details see [disable local accounts](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts-preview).
  final bool? disableLocalAccounts;
  /// The Resource ID of the disk encryption set to use for enabling encryption at rest. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskEncryptionSets/{encryptionSetName}'
  final String? diskEncryptionSetID;
  /// The DNS prefix of the Managed Cluster. This cannot be updated once the Managed Cluster has been created.
  final String? dnsPrefix;
  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  final String? eTag;
  /// Whether to enable Kubernetes Role-Based Access Control.
  final bool? enableRBAC;
  /// The extended location of the Virtual Machine.
  final ExtendedLocationResponse? extendedLocation;
  /// The FQDN of the master pool.
  final String? fqdn;
  /// The FQDN subdomain of the private cluster with custom private dns zone. This cannot be updated once the Managed Cluster has been created.
  final String? fqdnSubdomain;
  /// Configurations for provisioning the cluster with HTTP proxy servers.
  final ManagedClusterHTTPProxyConfigResponse? httpProxyConfig;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The identity of the managed cluster, if configured.
  final ManagedClusterIdentityResponse? identity;
  /// The user identity associated with the managed cluster. This identity will be used by the kubelet. Only one user assigned identity is allowed. The only accepted key is "kubeletidentity", with value of "resourceId": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}".
  final Map<String, UserAssignedIdentityManagedClusterResponse>? identityProfile;
  /// Ingress profile for the managed cluster.
  final ManagedClusterIngressProfileResponse? ingressProfile;
  /// This is primarily used to expose different UI experiences in the portal for different kinds
  final String? kind;
  /// The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -&gt; 1.15.x or 1.15.x -&gt; 1.16.x are allowed, however 1.14.x -&gt; 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
  final String? kubernetesVersion;
  /// The profile for Linux VMs in the Managed Cluster.
  final ContainerServiceLinuxProfileResponse? linuxProfile;
  /// The geo-location where the resource lives
  final String? location;
  /// The max number of agent pools for the managed cluster.
  final int? maxAgentPools;
  /// Optional cluster metrics configuration.
  final ManagedClusterMetricsProfileResponse? metricsProfile;
  /// The name of the resource
  final String? name;
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
  final PowerStateResponse? powerState;
  /// The FQDN of private cluster.
  final String? privateFQDN;
  /// Private link resources associated with the cluster.
  final List<PrivateLinkResourceResponse>? privateLinkResources;
  /// The current provisioning state.
  final String? provisioningState;
  /// PublicNetworkAccess of the managedCluster. Allow or deny public network access for AKS
  final String? publicNetworkAccess;
  /// The resourceUID uniquely identifies ManagedClusters that reuse ARM ResourceIds (i.e: create, delete, create sequence)
  final String? resourceUID;
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
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  /// [currentKubernetesVersion] The version of Kubernetes the Managed Cluster is running. If kubernetesVersion was a fully specified version &lt;major.minor.patch&gt;, this field will be exactly equal to it. If kubernetesVersion was &lt;major.minor&gt;, this field will contain the full &lt;major.minor.patch&gt; version being used.
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
  /// [kubernetesVersion] The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -&gt; 1.15.x or 1.15.x -&gt; 1.16.x are allowed, however 1.14.x -&gt; 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
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
  const GetManagedClusterResult({
    this.aadProfile,
    this.addonProfiles,
    this.agentPoolProfiles,
    this.aiToolchainOperatorProfile,
    this.apiServerAccessProfile,
    this.autoScalerProfile,
    this.autoUpgradeProfile,
    this.azureApiVersion,
    this.azureMonitorProfile,
    this.azurePortalFQDN,
    this.bootstrapProfile,
    this.currentKubernetesVersion,
    this.disableLocalAccounts,
    this.diskEncryptionSetID,
    this.dnsPrefix,
    this.eTag,
    this.enableRBAC,
    this.extendedLocation,
    this.fqdn,
    this.fqdnSubdomain,
    this.httpProxyConfig,
    this.id,
    this.identity,
    this.identityProfile,
    this.ingressProfile,
    this.kind,
    this.kubernetesVersion,
    this.linuxProfile,
    this.location,
    this.maxAgentPools,
    this.metricsProfile,
    this.name,
    this.networkProfile,
    this.nodeProvisioningProfile,
    this.nodeResourceGroup,
    this.nodeResourceGroupProfile,
    this.oidcIssuerProfile,
    this.podIdentityProfile,
    this.powerState,
    this.privateFQDN,
    this.privateLinkResources,
    this.provisioningState,
    this.publicNetworkAccess,
    this.resourceUID,
    this.securityProfile,
    this.serviceMeshProfile,
    this.servicePrincipalProfile,
    this.sku,
    this.status,
    this.storageProfile,
    this.supportPlan,
    this.systemData,
    this.tags,
    this.type,
    this.upgradeSettings,
    this.windowsProfile,
    this.workloadAutoScalerProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadProfile': ?aadProfile?.toMap(),
      'addonProfiles': ?(() { final guardedValue = addonProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ManagedClusterAddonProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'agentPoolProfiles': ?(() { final guardedValue = agentPoolProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<ManagedClusterAgentPoolProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'aiToolchainOperatorProfile': ?aiToolchainOperatorProfile?.toMap(),
      'apiServerAccessProfile': ?apiServerAccessProfile?.toMap(),
      'autoScalerProfile': ?autoScalerProfile?.toMap(),
      'autoUpgradeProfile': ?autoUpgradeProfile?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'azureMonitorProfile': ?azureMonitorProfile?.toMap(),
      'azurePortalFQDN': ?azurePortalFQDN,
      'bootstrapProfile': ?bootstrapProfile?.toMap(),
      'currentKubernetesVersion': ?currentKubernetesVersion,
      'disableLocalAccounts': ?disableLocalAccounts,
      'diskEncryptionSetID': ?diskEncryptionSetID,
      'dnsPrefix': ?dnsPrefix,
      'eTag': ?eTag,
      'enableRBAC': ?enableRBAC,
      'extendedLocation': ?extendedLocation?.toMap(),
      'fqdn': ?fqdn,
      'fqdnSubdomain': ?fqdnSubdomain,
      'httpProxyConfig': ?httpProxyConfig?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'identityProfile': ?(() { final guardedValue = identityProfile; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<UserAssignedIdentityManagedClusterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ingressProfile': ?ingressProfile?.toMap(),
      'kind': ?kind,
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfile': ?linuxProfile?.toMap(),
      'location': ?location,
      'maxAgentPools': ?maxAgentPools,
      'metricsProfile': ?metricsProfile?.toMap(),
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'nodeProvisioningProfile': ?nodeProvisioningProfile?.toMap(),
      'nodeResourceGroup': ?nodeResourceGroup,
      'nodeResourceGroupProfile': ?nodeResourceGroupProfile?.toMap(),
      'oidcIssuerProfile': ?oidcIssuerProfile?.toMap(),
      'podIdentityProfile': ?podIdentityProfile?.toMap(),
      'powerState': ?powerState?.toMap(),
      'privateFQDN': ?privateFQDN,
      'privateLinkResources': ?(() { final guardedValue = privateLinkResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateLinkResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceUID': ?resourceUID,
      'securityProfile': ?securityProfile?.toMap(),
      'serviceMeshProfile': ?serviceMeshProfile?.toMap(),
      'servicePrincipalProfile': ?servicePrincipalProfile?.toMap(),
      'sku': ?sku?.toMap(),
      'status': ?status?.toMap(),
      'storageProfile': ?storageProfile?.toMap(),
      'supportPlan': ?supportPlan,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'upgradeSettings': ?upgradeSettings?.toMap(),
      'windowsProfile': ?windowsProfile?.toMap(),
      'workloadAutoScalerProfile': ?workloadAutoScalerProfile?.toMap(),
    };
  }

  factory GetManagedClusterResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterResult(
      aadProfile: (() { final guardedValue = map['aadProfile']; if (guardedValue == null) return null; return ManagedClusterAADProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      addonProfiles: (() { final guardedValue = map['addonProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ManagedClusterAddonProfileResponse>(guardedValue, (value) => ManagedClusterAddonProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      agentPoolProfiles: (() { final guardedValue = map['agentPoolProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedClusterAgentPoolProfileResponse>(guardedValue, (value) => ManagedClusterAgentPoolProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      aiToolchainOperatorProfile: (() { final guardedValue = map['aiToolchainOperatorProfile']; if (guardedValue == null) return null; return ManagedClusterAIToolchainOperatorProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      apiServerAccessProfile: (() { final guardedValue = map['apiServerAccessProfile']; if (guardedValue == null) return null; return ManagedClusterAPIServerAccessProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      autoScalerProfile: (() { final guardedValue = map['autoScalerProfile']; if (guardedValue == null) return null; return ManagedClusterPropertiesResponseAutoScalerProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      autoUpgradeProfile: (() { final guardedValue = map['autoUpgradeProfile']; if (guardedValue == null) return null; return ManagedClusterAutoUpgradeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureMonitorProfile: (() { final guardedValue = map['azureMonitorProfile']; if (guardedValue == null) return null; return ManagedClusterAzureMonitorProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azurePortalFQDN: (() { final guardedValue = map['azurePortalFQDN']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapProfile: (() { final guardedValue = map['bootstrapProfile']; if (guardedValue == null) return null; return ManagedClusterBootstrapProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      currentKubernetesVersion: (() { final guardedValue = map['currentKubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableLocalAccounts: (() { final guardedValue = map['disableLocalAccounts']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      diskEncryptionSetID: (() { final guardedValue = map['diskEncryptionSetID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsPrefix: (() { final guardedValue = map['dnsPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableRBAC: (() { final guardedValue = map['enableRBAC']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdnSubdomain: (() { final guardedValue = map['fqdnSubdomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpProxyConfig: (() { final guardedValue = map['httpProxyConfig']; if (guardedValue == null) return null; return ManagedClusterHTTPProxyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedClusterIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      identityProfile: (() { final guardedValue = map['identityProfile']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<UserAssignedIdentityManagedClusterResponse>(guardedValue, (value) => UserAssignedIdentityManagedClusterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ingressProfile: (() { final guardedValue = map['ingressProfile']; if (guardedValue == null) return null; return ManagedClusterIngressProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linuxProfile: (() { final guardedValue = map['linuxProfile']; if (guardedValue == null) return null; return ContainerServiceLinuxProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxAgentPools: (() { final guardedValue = map['maxAgentPools']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      metricsProfile: (() { final guardedValue = map['metricsProfile']; if (guardedValue == null) return null; return ManagedClusterMetricsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return ContainerServiceNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeProvisioningProfile: (() { final guardedValue = map['nodeProvisioningProfile']; if (guardedValue == null) return null; return ManagedClusterNodeProvisioningProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeResourceGroup: (() { final guardedValue = map['nodeResourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeResourceGroupProfile: (() { final guardedValue = map['nodeResourceGroupProfile']; if (guardedValue == null) return null; return ManagedClusterNodeResourceGroupProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      oidcIssuerProfile: (() { final guardedValue = map['oidcIssuerProfile']; if (guardedValue == null) return null; return ManagedClusterOIDCIssuerProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      podIdentityProfile: (() { final guardedValue = map['podIdentityProfile']; if (guardedValue == null) return null; return ManagedClusterPodIdentityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return PowerStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateFQDN: (() { final guardedValue = map['privateFQDN']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkResources: (() { final guardedValue = map['privateLinkResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkResourceResponse>(guardedValue, (value) => PrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceUID: (() { final guardedValue = map['resourceUID']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return ManagedClusterSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceMeshProfile: (() { final guardedValue = map['serviceMeshProfile']; if (guardedValue == null) return null; return ServiceMeshProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      servicePrincipalProfile: (() { final guardedValue = map['servicePrincipalProfile']; if (guardedValue == null) return null; return ManagedClusterServicePrincipalProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ManagedClusterSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ManagedClusterStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return ManagedClusterStorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      supportPlan: (() { final guardedValue = map['supportPlan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return ClusterUpgradeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      windowsProfile: (() { final guardedValue = map['windowsProfile']; if (guardedValue == null) return null; return ManagedClusterWindowsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workloadAutoScalerProfile: (() { final guardedValue = map['workloadAutoScalerProfile']; if (guardedValue == null) return null; return ManagedClusterWorkloadAutoScalerProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
