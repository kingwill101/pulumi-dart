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
  /// The version of Kubernetes specified by the user. Both patch version <major.minor.patch> (e.g. 1.20.13) and <major.minor> (e.g. 1.20) are supported. When <major.minor> is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same <major.minor> once it has been created (e.g. 1.14.x -> 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -> 1.15.x or 1.15.x -> 1.16.x are allowed, however 1.14.x -> 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
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
  /// [kubernetesVersion] The version of Kubernetes specified by the user. Both patch version <major.minor.patch> (e.g. 1.20.13) and <major.minor> (e.g. 1.20) are supported. When <major.minor> is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same <major.minor> once it has been created (e.g. 1.14.x -> 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -> 1.15.x or 1.15.x -> 1.16.x are allowed, however 1.14.x -> 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
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
  ManagedClusterArgs({
    pulumi.Output<ManagedClusterAADProfile>? aadProfile,
    pulumi.Output<Map<String, ManagedClusterAddonProfile>>? addonProfiles,
    pulumi.Output<List<ManagedClusterAgentPoolProfile>>? agentPoolProfiles,
    pulumi.Output<ManagedClusterAIToolchainOperatorProfile>? aiToolchainOperatorProfile,
    pulumi.Output<ManagedClusterAPIServerAccessProfile>? apiServerAccessProfile,
    pulumi.Output<ManagedClusterPropertiesAutoScalerProfile>? autoScalerProfile,
    pulumi.Output<ManagedClusterAutoUpgradeProfile>? autoUpgradeProfile,
    pulumi.Output<ManagedClusterAzureMonitorProfile>? azureMonitorProfile,
    pulumi.Output<ManagedClusterBootstrapProfile>? bootstrapProfile,
    pulumi.Output<bool>? disableLocalAccounts,
    pulumi.Output<String>? diskEncryptionSetID,
    pulumi.Output<String>? dnsPrefix,
    pulumi.Output<bool>? enableRBAC,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? fqdnSubdomain,
    pulumi.Output<ManagedClusterHTTPProxyConfig>? httpProxyConfig,
    pulumi.Output<ManagedClusterIdentity>? identity,
    pulumi.Output<Map<String, UserAssignedIdentity>>? identityProfile,
    pulumi.Output<ManagedClusterIngressProfile>? ingressProfile,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? kubernetesVersion,
    pulumi.Output<ContainerServiceLinuxProfile>? linuxProfile,
    pulumi.Output<String>? location,
    pulumi.Output<ManagedClusterMetricsProfile>? metricsProfile,
    pulumi.Output<ContainerServiceNetworkProfile>? networkProfile,
    pulumi.Output<ManagedClusterNodeProvisioningProfile>? nodeProvisioningProfile,
    pulumi.Output<String>? nodeResourceGroup,
    pulumi.Output<ManagedClusterNodeResourceGroupProfile>? nodeResourceGroupProfile,
    pulumi.Output<ManagedClusterOIDCIssuerProfile>? oidcIssuerProfile,
    pulumi.Output<ManagedClusterPodIdentityProfile>? podIdentityProfile,
    pulumi.Output<List<PrivateLinkResource>>? privateLinkResources,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    pulumi.Output<ManagedClusterSecurityProfile>? securityProfile,
    pulumi.Output<ServiceMeshProfile>? serviceMeshProfile,
    pulumi.Output<ManagedClusterServicePrincipalProfile>? servicePrincipalProfile,
    pulumi.Output<ManagedClusterSKU>? sku,
    pulumi.Output<ManagedClusterStorageProfile>? storageProfile,
    pulumi.Output<String>? supportPlan,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ClusterUpgradeSettings>? upgradeSettings,
    pulumi.Output<ManagedClusterWindowsProfile>? windowsProfile,
    pulumi.Output<ManagedClusterWorkloadAutoScalerProfile>? workloadAutoScalerProfile,
  }) :
      aadProfile = pulumi.Input.asOptionalInput<ManagedClusterAADProfile>(aadProfile),
      addonProfiles = pulumi.Input.asOptionalInput<Map<String, ManagedClusterAddonProfile>>(addonProfiles),
      agentPoolProfiles = pulumi.Input.asOptionalInput<List<ManagedClusterAgentPoolProfile>>(agentPoolProfiles),
      aiToolchainOperatorProfile = pulumi.Input.asOptionalInput<ManagedClusterAIToolchainOperatorProfile>(aiToolchainOperatorProfile),
      apiServerAccessProfile = pulumi.Input.asOptionalInput<ManagedClusterAPIServerAccessProfile>(apiServerAccessProfile),
      autoScalerProfile = pulumi.Input.asOptionalInput<ManagedClusterPropertiesAutoScalerProfile>(autoScalerProfile),
      autoUpgradeProfile = pulumi.Input.asOptionalInput<ManagedClusterAutoUpgradeProfile>(autoUpgradeProfile),
      azureMonitorProfile = pulumi.Input.asOptionalInput<ManagedClusterAzureMonitorProfile>(azureMonitorProfile),
      bootstrapProfile = pulumi.Input.asOptionalInput<ManagedClusterBootstrapProfile>(bootstrapProfile),
      disableLocalAccounts = pulumi.Input.asOptionalInput<bool>(disableLocalAccounts),
      diskEncryptionSetID = pulumi.Input.asOptionalInput<String>(diskEncryptionSetID),
      dnsPrefix = pulumi.Input.asOptionalInput<String>(dnsPrefix),
      enableRBAC = pulumi.Input.asOptionalInput<bool>(enableRBAC),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      fqdnSubdomain = pulumi.Input.asOptionalInput<String>(fqdnSubdomain),
      httpProxyConfig = pulumi.Input.asOptionalInput<ManagedClusterHTTPProxyConfig>(httpProxyConfig),
      identity = pulumi.Input.asOptionalInput<ManagedClusterIdentity>(identity),
      identityProfile = pulumi.Input.asOptionalInput<Map<String, UserAssignedIdentity>>(identityProfile),
      ingressProfile = pulumi.Input.asOptionalInput<ManagedClusterIngressProfile>(ingressProfile),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      kubernetesVersion = pulumi.Input.asOptionalInput<String>(kubernetesVersion),
      linuxProfile = pulumi.Input.asOptionalInput<ContainerServiceLinuxProfile>(linuxProfile),
      location = pulumi.Input.asOptionalInput<String>(location),
      metricsProfile = pulumi.Input.asOptionalInput<ManagedClusterMetricsProfile>(metricsProfile),
      networkProfile = pulumi.Input.asOptionalInput<ContainerServiceNetworkProfile>(networkProfile),
      nodeProvisioningProfile = pulumi.Input.asOptionalInput<ManagedClusterNodeProvisioningProfile>(nodeProvisioningProfile),
      nodeResourceGroup = pulumi.Input.asOptionalInput<String>(nodeResourceGroup),
      nodeResourceGroupProfile = pulumi.Input.asOptionalInput<ManagedClusterNodeResourceGroupProfile>(nodeResourceGroupProfile),
      oidcIssuerProfile = pulumi.Input.asOptionalInput<ManagedClusterOIDCIssuerProfile>(oidcIssuerProfile),
      podIdentityProfile = pulumi.Input.asOptionalInput<ManagedClusterPodIdentityProfile>(podIdentityProfile),
      privateLinkResources = pulumi.Input.asOptionalInput<List<PrivateLinkResource>>(privateLinkResources),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      securityProfile = pulumi.Input.asOptionalInput<ManagedClusterSecurityProfile>(securityProfile),
      serviceMeshProfile = pulumi.Input.asOptionalInput<ServiceMeshProfile>(serviceMeshProfile),
      servicePrincipalProfile = pulumi.Input.asOptionalInput<ManagedClusterServicePrincipalProfile>(servicePrincipalProfile),
      sku = pulumi.Input.asOptionalInput<ManagedClusterSKU>(sku),
      storageProfile = pulumi.Input.asOptionalInput<ManagedClusterStorageProfile>(storageProfile),
      supportPlan = pulumi.Input.asOptionalInput<String>(supportPlan),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradeSettings = pulumi.Input.asOptionalInput<ClusterUpgradeSettings>(upgradeSettings),
      windowsProfile = pulumi.Input.asOptionalInput<ManagedClusterWindowsProfile>(windowsProfile),
      workloadAutoScalerProfile = pulumi.Input.asOptionalInput<ManagedClusterWorkloadAutoScalerProfile>(workloadAutoScalerProfile);

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
      aadProfile: map['aadProfile'] == null ? null : pulumi.Output.create<ManagedClusterAADProfile>(ManagedClusterAADProfile.fromMap((map['aadProfile'] as Map).cast<String, dynamic>())),
      addonProfiles: map['addonProfiles'] == null ? null : pulumi.Output.create<Map<String, ManagedClusterAddonProfile>>(pulumi.Input.decodeMapValues<ManagedClusterAddonProfile>(map['addonProfiles'], (value) => ManagedClusterAddonProfile.fromMap((value as Map).cast<String, dynamic>()))),
      agentPoolProfiles: map['agentPoolProfiles'] == null ? null : pulumi.Output.create<List<ManagedClusterAgentPoolProfile>>(pulumi.Input.decodeList<ManagedClusterAgentPoolProfile>(map['agentPoolProfiles'], (value) => ManagedClusterAgentPoolProfile.fromMap((value as Map).cast<String, dynamic>()))),
      aiToolchainOperatorProfile: map['aiToolchainOperatorProfile'] == null ? null : pulumi.Output.create<ManagedClusterAIToolchainOperatorProfile>(ManagedClusterAIToolchainOperatorProfile.fromMap((map['aiToolchainOperatorProfile'] as Map).cast<String, dynamic>())),
      apiServerAccessProfile: map['apiServerAccessProfile'] == null ? null : pulumi.Output.create<ManagedClusterAPIServerAccessProfile>(ManagedClusterAPIServerAccessProfile.fromMap((map['apiServerAccessProfile'] as Map).cast<String, dynamic>())),
      autoScalerProfile: map['autoScalerProfile'] == null ? null : pulumi.Output.create<ManagedClusterPropertiesAutoScalerProfile>(ManagedClusterPropertiesAutoScalerProfile.fromMap((map['autoScalerProfile'] as Map).cast<String, dynamic>())),
      autoUpgradeProfile: map['autoUpgradeProfile'] == null ? null : pulumi.Output.create<ManagedClusterAutoUpgradeProfile>(ManagedClusterAutoUpgradeProfile.fromMap((map['autoUpgradeProfile'] as Map).cast<String, dynamic>())),
      azureMonitorProfile: map['azureMonitorProfile'] == null ? null : pulumi.Output.create<ManagedClusterAzureMonitorProfile>(ManagedClusterAzureMonitorProfile.fromMap((map['azureMonitorProfile'] as Map).cast<String, dynamic>())),
      bootstrapProfile: map['bootstrapProfile'] == null ? null : pulumi.Output.create<ManagedClusterBootstrapProfile>(ManagedClusterBootstrapProfile.fromMap((map['bootstrapProfile'] as Map).cast<String, dynamic>())),
      disableLocalAccounts: map['disableLocalAccounts'] == null ? null : pulumi.Output.create<bool>(map['disableLocalAccounts'] as bool),
      diskEncryptionSetID: map['diskEncryptionSetID'] == null ? null : pulumi.Output.create<String>(map['diskEncryptionSetID'] as String),
      dnsPrefix: map['dnsPrefix'] == null ? null : pulumi.Output.create<String>(map['dnsPrefix'] as String),
      enableRBAC: map['enableRBAC'] == null ? null : pulumi.Output.create<bool>(map['enableRBAC'] as bool),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      fqdnSubdomain: map['fqdnSubdomain'] == null ? null : pulumi.Output.create<String>(map['fqdnSubdomain'] as String),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : pulumi.Output.create<ManagedClusterHTTPProxyConfig>(ManagedClusterHTTPProxyConfig.fromMap((map['httpProxyConfig'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedClusterIdentity>(ManagedClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      identityProfile: map['identityProfile'] == null ? null : pulumi.Output.create<Map<String, UserAssignedIdentity>>(pulumi.Input.decodeMapValues<UserAssignedIdentity>(map['identityProfile'], (value) => UserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>()))),
      ingressProfile: map['ingressProfile'] == null ? null : pulumi.Output.create<ManagedClusterIngressProfile>(ManagedClusterIngressProfile.fromMap((map['ingressProfile'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : pulumi.Output.create<String>(map['kubernetesVersion'] as String),
      linuxProfile: map['linuxProfile'] == null ? null : pulumi.Output.create<ContainerServiceLinuxProfile>(ContainerServiceLinuxProfile.fromMap((map['linuxProfile'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metricsProfile: map['metricsProfile'] == null ? null : pulumi.Output.create<ManagedClusterMetricsProfile>(ManagedClusterMetricsProfile.fromMap((map['metricsProfile'] as Map).cast<String, dynamic>())),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<ContainerServiceNetworkProfile>(ContainerServiceNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      nodeProvisioningProfile: map['nodeProvisioningProfile'] == null ? null : pulumi.Output.create<ManagedClusterNodeProvisioningProfile>(ManagedClusterNodeProvisioningProfile.fromMap((map['nodeProvisioningProfile'] as Map).cast<String, dynamic>())),
      nodeResourceGroup: map['nodeResourceGroup'] == null ? null : pulumi.Output.create<String>(map['nodeResourceGroup'] as String),
      nodeResourceGroupProfile: map['nodeResourceGroupProfile'] == null ? null : pulumi.Output.create<ManagedClusterNodeResourceGroupProfile>(ManagedClusterNodeResourceGroupProfile.fromMap((map['nodeResourceGroupProfile'] as Map).cast<String, dynamic>())),
      oidcIssuerProfile: map['oidcIssuerProfile'] == null ? null : pulumi.Output.create<ManagedClusterOIDCIssuerProfile>(ManagedClusterOIDCIssuerProfile.fromMap((map['oidcIssuerProfile'] as Map).cast<String, dynamic>())),
      podIdentityProfile: map['podIdentityProfile'] == null ? null : pulumi.Output.create<ManagedClusterPodIdentityProfile>(ManagedClusterPodIdentityProfile.fromMap((map['podIdentityProfile'] as Map).cast<String, dynamic>())),
      privateLinkResources: map['privateLinkResources'] == null ? null : pulumi.Output.create<List<PrivateLinkResource>>(pulumi.Input.decodeList<PrivateLinkResource>(map['privateLinkResources'], (value) => PrivateLinkResource.fromMap((value as Map).cast<String, dynamic>()))),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<ManagedClusterSecurityProfile>(ManagedClusterSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      serviceMeshProfile: map['serviceMeshProfile'] == null ? null : pulumi.Output.create<ServiceMeshProfile>(ServiceMeshProfile.fromMap((map['serviceMeshProfile'] as Map).cast<String, dynamic>())),
      servicePrincipalProfile: map['servicePrincipalProfile'] == null ? null : pulumi.Output.create<ManagedClusterServicePrincipalProfile>(ManagedClusterServicePrincipalProfile.fromMap((map['servicePrincipalProfile'] as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : pulumi.Output.create<ManagedClusterSKU>(ManagedClusterSKU.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      storageProfile: map['storageProfile'] == null ? null : pulumi.Output.create<ManagedClusterStorageProfile>(ManagedClusterStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())),
      supportPlan: map['supportPlan'] == null ? null : pulumi.Output.create<String>(map['supportPlan'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradeSettings: map['upgradeSettings'] == null ? null : pulumi.Output.create<ClusterUpgradeSettings>(ClusterUpgradeSettings.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>())),
      windowsProfile: map['windowsProfile'] == null ? null : pulumi.Output.create<ManagedClusterWindowsProfile>(ManagedClusterWindowsProfile.fromMap((map['windowsProfile'] as Map).cast<String, dynamic>())),
      workloadAutoScalerProfile: map['workloadAutoScalerProfile'] == null ? null : pulumi.Output.create<ManagedClusterWorkloadAutoScalerProfile>(ManagedClusterWorkloadAutoScalerProfile.fromMap((map['workloadAutoScalerProfile'] as Map).cast<String, dynamic>())),
    );
  }
}

