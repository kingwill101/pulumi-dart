// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_settings.dart';
import 'container_service_linux_profile.dart';
import 'container_service_network_profile.dart';
import 'extended_location.dart';
import 'managed_cluster_aadprofile.dart';
import 'managed_cluster_addon_profile.dart';
import 'managed_cluster_agent_pool_profile.dart';
import 'managed_cluster_aitoolchain_operator_profile.dart';
import 'managed_cluster_apiserver_access_profile.dart';
import 'managed_cluster_auto_upgrade_profile.dart';
import 'managed_cluster_azure_monitor_profile.dart';
import 'managed_cluster_bootstrap_profile.dart';
import 'managed_cluster_httpproxy_config.dart';
import 'managed_cluster_identity.dart';
import 'managed_cluster_ingress_profile.dart';
import 'managed_cluster_metrics_profile.dart';
import 'managed_cluster_node_provisioning_profile.dart';
import 'managed_cluster_node_resource_group_profile.dart';
import 'managed_cluster_oidcissuer_profile.dart';
import 'managed_cluster_pod_identity_profile.dart';
import 'managed_cluster_properties_auto_scaler_profile.dart';
import 'managed_cluster_security_profile.dart';
import 'managed_cluster_service_principal_profile.dart';
import 'managed_cluster_sku.dart';
import 'managed_cluster_storage_profile.dart';
import 'managed_cluster_windows_profile.dart';
import 'managed_cluster_workload_auto_scaler_profile.dart';
import 'private_link_resource.dart';
import 'service_mesh_profile.dart';
import 'user_assigned_identity.dart';

/// {@template pulumi_containerservice_managed_cluster_args_doc}
/// The set of arguments for ManagedCluster.
/// {@endtemplate}
/// {@macro pulumi_containerservice_managed_cluster_args_doc}
class ManagedClusterArgs {
  /// The Azure Active Directory configuration.
  final pulumi.Input<ManagedClusterAADProfile>? aadProfile;
  /// The profile of managed cluster add-on.
  final pulumi.Input<Map<String, ManagedClusterAddonProfile>>? addonProfiles;
  /// The agent pool properties.
  final pulumi.Input<List<ManagedClusterAgentPoolProfile>>? agentPoolProfiles;
  /// AI toolchain operator settings that apply to the whole cluster.
  final pulumi.Input<ManagedClusterAIToolchainOperatorProfile>? aiToolchainOperatorProfile;
  /// The access profile for managed cluster API server.
  final pulumi.Input<ManagedClusterAPIServerAccessProfile>? apiServerAccessProfile;
  /// Parameters to be applied to the cluster-autoscaler when enabled
  final pulumi.Input<ManagedClusterPropertiesAutoScalerProfile>? autoScalerProfile;
  /// The auto upgrade configuration.
  final pulumi.Input<ManagedClusterAutoUpgradeProfile>? autoUpgradeProfile;
  /// Azure Monitor addon profiles for monitoring the managed cluster.
  final pulumi.Input<ManagedClusterAzureMonitorProfile>? azureMonitorProfile;
  /// Profile of the cluster bootstrap configuration.
  final pulumi.Input<ManagedClusterBootstrapProfile>? bootstrapProfile;
  /// If local accounts should be disabled on the Managed Cluster. If set to true, getting static credentials will be disabled for this cluster. This must only be used on Managed Clusters that are AAD enabled. For more details see [disable local accounts](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts-preview).
  final pulumi.Input<bool>? disableLocalAccounts;
  /// The Resource ID of the disk encryption set to use for enabling encryption at rest. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskEncryptionSets/{encryptionSetName}'
  final pulumi.Input<String>? diskEncryptionSetID;
  /// The DNS prefix of the Managed Cluster. This cannot be updated once the Managed Cluster has been created.
  final pulumi.Input<String>? dnsPrefix;
  /// Whether to enable Kubernetes Role-Based Access Control.
  final pulumi.Input<bool>? enableRBAC;
  /// The extended location of the Virtual Machine.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The FQDN subdomain of the private cluster with custom private dns zone. This cannot be updated once the Managed Cluster has been created.
  final pulumi.Input<String>? fqdnSubdomain;
  /// Configurations for provisioning the cluster with HTTP proxy servers.
  final pulumi.Input<ManagedClusterHTTPProxyConfig>? httpProxyConfig;
  /// The identity of the managed cluster, if configured.
  final pulumi.Input<ManagedClusterIdentity>? identity;
  /// The user identity associated with the managed cluster. This identity will be used by the kubelet. Only one user assigned identity is allowed. The only accepted key is "kubeletidentity", with value of "resourceId": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}".
  final pulumi.Input<Map<String, UserAssignedIdentity>>? identityProfile;
  /// Ingress profile for the managed cluster.
  final pulumi.Input<ManagedClusterIngressProfile>? ingressProfile;
  /// This is primarily used to expose different UI experiences in the portal for different kinds
  final pulumi.Input<String>? kind;
  /// The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -&gt; 1.15.x or 1.15.x -&gt; 1.16.x are allowed, however 1.14.x -&gt; 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
  final pulumi.Input<String>? kubernetesVersion;
  /// The profile for Linux VMs in the Managed Cluster.
  final pulumi.Input<ContainerServiceLinuxProfile>? linuxProfile;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Optional cluster metrics configuration.
  final pulumi.Input<ManagedClusterMetricsProfile>? metricsProfile;
  /// The network configuration profile.
  final pulumi.Input<ContainerServiceNetworkProfile>? networkProfile;
  /// Node provisioning settings that apply to the whole cluster.
  final pulumi.Input<ManagedClusterNodeProvisioningProfile>? nodeProvisioningProfile;
  /// The name of the resource group containing agent pool nodes.
  final pulumi.Input<String>? nodeResourceGroup;
  /// Profile of the node resource group configuration.
  final pulumi.Input<ManagedClusterNodeResourceGroupProfile>? nodeResourceGroupProfile;
  /// The OIDC issuer profile of the Managed Cluster.
  final pulumi.Input<ManagedClusterOIDCIssuerProfile>? oidcIssuerProfile;
  /// The pod identity profile of the Managed Cluster. See [use AAD pod identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity) for more details on AAD pod identity integration.
  final pulumi.Input<ManagedClusterPodIdentityProfile>? podIdentityProfile;
  /// Private link resources associated with the cluster.
  final pulumi.Input<List<PrivateLinkResource>>? privateLinkResources;
  /// PublicNetworkAccess of the managedCluster. Allow or deny public network access for AKS
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String>? resourceName;
  /// Security profile for the managed cluster.
  final pulumi.Input<ManagedClusterSecurityProfile>? securityProfile;
  /// Service mesh profile for a managed cluster.
  final pulumi.Input<ServiceMeshProfile>? serviceMeshProfile;
  /// Information about a service principal identity for the cluster to use for manipulating Azure APIs.
  final pulumi.Input<ManagedClusterServicePrincipalProfile>? servicePrincipalProfile;
  /// The managed cluster SKU.
  final pulumi.Input<ManagedClusterSKU>? sku;
  /// Storage profile for the managed cluster.
  final pulumi.Input<ManagedClusterStorageProfile>? storageProfile;
  /// The support plan for the Managed Cluster. If unspecified, the default is 'KubernetesOfficial'.
  final pulumi.Input<String>? supportPlan;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Settings for upgrading a cluster.
  final pulumi.Input<ClusterUpgradeSettings>? upgradeSettings;
  /// The profile for Windows VMs in the Managed Cluster.
  final pulumi.Input<ManagedClusterWindowsProfile>? windowsProfile;
  /// Workload Auto-scaler profile for the managed cluster.
  final pulumi.Input<ManagedClusterWorkloadAutoScalerProfile>? workloadAutoScalerProfile;

  /// Creates a new [ManagedClusterArgs].
  /// [aadProfile] The Azure Active Directory configuration.
  /// [addonProfiles] The profile of managed cluster add-on.
  /// [agentPoolProfiles] The agent pool properties.
  /// [aiToolchainOperatorProfile] AI toolchain operator settings that apply to the whole cluster.
  /// [apiServerAccessProfile] The access profile for managed cluster API server.
  /// [autoScalerProfile] Parameters to be applied to the cluster-autoscaler when enabled
  /// [autoUpgradeProfile] The auto upgrade configuration.
  /// [azureMonitorProfile] Azure Monitor addon profiles for monitoring the managed cluster.
  /// [bootstrapProfile] Profile of the cluster bootstrap configuration.
  /// [disableLocalAccounts] If local accounts should be disabled on the Managed Cluster. If set to true, getting static credentials will be disabled for this cluster. This must only be used on Managed Clusters that are AAD enabled. For more details see [disable local accounts](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts-preview).
  /// [diskEncryptionSetID] The Resource ID of the disk encryption set to use for enabling encryption at rest. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskEncryptionSets/{encryptionSetName}'
  /// [dnsPrefix] The DNS prefix of the Managed Cluster. This cannot be updated once the Managed Cluster has been created.
  /// [enableRBAC] Whether to enable Kubernetes Role-Based Access Control.
  /// [extendedLocation] The extended location of the Virtual Machine.
  /// [fqdnSubdomain] The FQDN subdomain of the private cluster with custom private dns zone. This cannot be updated once the Managed Cluster has been created.
  /// [httpProxyConfig] Configurations for provisioning the cluster with HTTP proxy servers.
  /// [identity] The identity of the managed cluster, if configured.
  /// [identityProfile] The user identity associated with the managed cluster. This identity will be used by the kubelet. Only one user assigned identity is allowed. The only accepted key is "kubeletidentity", with value of "resourceId": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}".
  /// [ingressProfile] Ingress profile for the managed cluster.
  /// [kind] This is primarily used to expose different UI experiences in the portal for different kinds
  /// [kubernetesVersion] The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -&gt; 1.15.x or 1.15.x -&gt; 1.16.x are allowed, however 1.14.x -&gt; 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
  /// [linuxProfile] The profile for Linux VMs in the Managed Cluster.
  /// [location] The geo-location where the resource lives
  /// [metricsProfile] Optional cluster metrics configuration.
  /// [networkProfile] The network configuration profile.
  /// [nodeProvisioningProfile] Node provisioning settings that apply to the whole cluster.
  /// [nodeResourceGroup] The name of the resource group containing agent pool nodes.
  /// [nodeResourceGroupProfile] Profile of the node resource group configuration.
  /// [oidcIssuerProfile] The OIDC issuer profile of the Managed Cluster.
  /// [podIdentityProfile] The pod identity profile of the Managed Cluster. See [use AAD pod identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity) for more details on AAD pod identity integration.
  /// [privateLinkResources] Private link resources associated with the cluster.
  /// [publicNetworkAccess] PublicNetworkAccess of the managedCluster. Allow or deny public network access for AKS
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [securityProfile] Security profile for the managed cluster.
  /// [serviceMeshProfile] Service mesh profile for a managed cluster.
  /// [servicePrincipalProfile] Information about a service principal identity for the cluster to use for manipulating Azure APIs.
  /// [sku] The managed cluster SKU.
  /// [storageProfile] Storage profile for the managed cluster.
  /// [supportPlan] The support plan for the Managed Cluster. If unspecified, the default is 'KubernetesOfficial'.
  /// [tags] Resource tags.
  /// [upgradeSettings] Settings for upgrading a cluster.
  /// [windowsProfile] The profile for Windows VMs in the Managed Cluster.
  /// [workloadAutoScalerProfile] Workload Auto-scaler profile for the managed cluster.
  const ManagedClusterArgs({
    this.aadProfile,
    this.addonProfiles,
    this.agentPoolProfiles,
    this.aiToolchainOperatorProfile,
    this.apiServerAccessProfile,
    this.autoScalerProfile,
    this.autoUpgradeProfile,
    this.azureMonitorProfile,
    this.bootstrapProfile,
    this.disableLocalAccounts,
    this.diskEncryptionSetID,
    this.dnsPrefix,
    this.enableRBAC,
    this.extendedLocation,
    this.fqdnSubdomain,
    this.httpProxyConfig,
    this.identity,
    this.identityProfile,
    this.ingressProfile,
    this.kind,
    this.kubernetesVersion,
    this.linuxProfile,
    this.location,
    this.metricsProfile,
    this.networkProfile,
    this.nodeProvisioningProfile,
    this.nodeResourceGroup,
    this.nodeResourceGroupProfile,
    this.oidcIssuerProfile,
    this.podIdentityProfile,
    this.privateLinkResources,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.resourceName,
    this.securityProfile,
    this.serviceMeshProfile,
    this.servicePrincipalProfile,
    this.sku,
    this.storageProfile,
    this.supportPlan,
    this.tags,
    this.upgradeSettings,
    this.windowsProfile,
    this.workloadAutoScalerProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAADProfile, Map<String, dynamic>>(aadProfile, (value) => value.toMap()),
      'addonProfiles': ?pulumi.Input.mapOptionalInputValue<Map<String, ManagedClusterAddonProfile>, Map<String, Map<String, dynamic>>>(addonProfiles, (value) => pulumi.Input.encodeMapValues<ManagedClusterAddonProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentPoolProfiles': ?pulumi.Input.mapOptionalInputValue<List<ManagedClusterAgentPoolProfile>, List<Map<String, dynamic>>>(agentPoolProfiles, (value) => pulumi.Input.encodeList<ManagedClusterAgentPoolProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aiToolchainOperatorProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAIToolchainOperatorProfile, Map<String, dynamic>>(aiToolchainOperatorProfile, (value) => value.toMap()),
      'apiServerAccessProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAPIServerAccessProfile, Map<String, dynamic>>(apiServerAccessProfile, (value) => value.toMap()),
      'autoScalerProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterPropertiesAutoScalerProfile, Map<String, dynamic>>(autoScalerProfile, (value) => value.toMap()),
      'autoUpgradeProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAutoUpgradeProfile, Map<String, dynamic>>(autoUpgradeProfile, (value) => value.toMap()),
      'azureMonitorProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAzureMonitorProfile, Map<String, dynamic>>(azureMonitorProfile, (value) => value.toMap()),
      'bootstrapProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterBootstrapProfile, Map<String, dynamic>>(bootstrapProfile, (value) => value.toMap()),
      'disableLocalAccounts': ?disableLocalAccounts,
      'diskEncryptionSetID': ?diskEncryptionSetID,
      'dnsPrefix': ?dnsPrefix,
      'enableRBAC': ?enableRBAC,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'fqdnSubdomain': ?fqdnSubdomain,
      'httpProxyConfig': ?pulumi.Input.mapOptionalInputValue<ManagedClusterHTTPProxyConfig, Map<String, dynamic>>(httpProxyConfig, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'identityProfile': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentity>, Map<String, Map<String, dynamic>>>(identityProfile, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterIngressProfile, Map<String, dynamic>>(ingressProfile, (value) => value.toMap()),
      'kind': ?kind,
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfile': ?pulumi.Input.mapOptionalInputValue<ContainerServiceLinuxProfile, Map<String, dynamic>>(linuxProfile, (value) => value.toMap()),
      'location': ?location,
      'metricsProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterMetricsProfile, Map<String, dynamic>>(metricsProfile, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<ContainerServiceNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'nodeProvisioningProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterNodeProvisioningProfile, Map<String, dynamic>>(nodeProvisioningProfile, (value) => value.toMap()),
      'nodeResourceGroup': ?nodeResourceGroup,
      'nodeResourceGroupProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterNodeResourceGroupProfile, Map<String, dynamic>>(nodeResourceGroupProfile, (value) => value.toMap()),
      'oidcIssuerProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterOIDCIssuerProfile, Map<String, dynamic>>(oidcIssuerProfile, (value) => value.toMap()),
      'podIdentityProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterPodIdentityProfile, Map<String, dynamic>>(podIdentityProfile, (value) => value.toMap()),
      'privateLinkResources': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkResource>, List<Map<String, dynamic>>>(privateLinkResources, (value) => pulumi.Input.encodeList<PrivateLinkResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'serviceMeshProfile': ?pulumi.Input.mapOptionalInputValue<ServiceMeshProfile, Map<String, dynamic>>(serviceMeshProfile, (value) => value.toMap()),
      'servicePrincipalProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterServicePrincipalProfile, Map<String, dynamic>>(servicePrincipalProfile, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSKU, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterStorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'supportPlan': ?supportPlan,
      'tags': ?tags,
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'windowsProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterWindowsProfile, Map<String, dynamic>>(windowsProfile, (value) => value.toMap()),
      'workloadAutoScalerProfile': ?pulumi.Input.mapOptionalInputValue<ManagedClusterWorkloadAutoScalerProfile, Map<String, dynamic>>(workloadAutoScalerProfile, (value) => value.toMap()),
    };
  }

  factory ManagedClusterArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterArgs(
      aadProfile: (() { final guardedValue = map['aadProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterAADProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      addonProfiles: (() { final guardedValue = map['addonProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ManagedClusterAddonProfile>(guardedValue, (value) => ManagedClusterAddonProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      agentPoolProfiles: (() { final guardedValue = map['agentPoolProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedClusterAgentPoolProfile>(guardedValue, (value) => ManagedClusterAgentPoolProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aiToolchainOperatorProfile: (() { final guardedValue = map['aiToolchainOperatorProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterAIToolchainOperatorProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiServerAccessProfile: (() { final guardedValue = map['apiServerAccessProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterAPIServerAccessProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoScalerProfile: (() { final guardedValue = map['autoScalerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterPropertiesAutoScalerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoUpgradeProfile: (() { final guardedValue = map['autoUpgradeProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterAutoUpgradeProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureMonitorProfile: (() { final guardedValue = map['azureMonitorProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterAzureMonitorProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootstrapProfile: (() { final guardedValue = map['bootstrapProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterBootstrapProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableLocalAccounts: (() { final guardedValue = map['disableLocalAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      diskEncryptionSetID: (() { final guardedValue = map['diskEncryptionSetID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsPrefix: (() { final guardedValue = map['dnsPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableRBAC: (() { final guardedValue = map['enableRBAC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdnSubdomain: (() { final guardedValue = map['fqdnSubdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpProxyConfig: (() { final guardedValue = map['httpProxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterHTTPProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityProfile: (() { final guardedValue = map['identityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentity>(guardedValue, (value) => UserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingressProfile: (() { final guardedValue = map['ingressProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterIngressProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxProfile: (() { final guardedValue = map['linuxProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerServiceLinuxProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricsProfile: (() { final guardedValue = map['metricsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterMetricsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerServiceNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeProvisioningProfile: (() { final guardedValue = map['nodeProvisioningProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterNodeProvisioningProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeResourceGroup: (() { final guardedValue = map['nodeResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeResourceGroupProfile: (() { final guardedValue = map['nodeResourceGroupProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterNodeResourceGroupProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcIssuerProfile: (() { final guardedValue = map['oidcIssuerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterOIDCIssuerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podIdentityProfile: (() { final guardedValue = map['podIdentityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterPodIdentityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkResources: (() { final guardedValue = map['privateLinkResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateLinkResource>(guardedValue, (value) => PrivateLinkResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceMeshProfile: (() { final guardedValue = map['serviceMeshProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMeshProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      servicePrincipalProfile: (() { final guardedValue = map['servicePrincipalProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterServicePrincipalProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterSKU.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterStorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportPlan: (() { final guardedValue = map['supportPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowsProfile: (() { final guardedValue = map['windowsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterWindowsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadAutoScalerProfile: (() { final guardedValue = map['workloadAutoScalerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterWorkloadAutoScalerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

