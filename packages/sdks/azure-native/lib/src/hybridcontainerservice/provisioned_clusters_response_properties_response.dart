// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadprofile_response_response.dart';
import 'addon_profiles_response.dart';
import 'cloud_provider_profile_response.dart';
import 'control_plane_profile_response.dart';
import 'http_proxy_config_response_response.dart';
import 'linux_profile_properties_response.dart';
import 'named_agent_pool_profile_response.dart';
import 'network_profile_response.dart';
import 'provisioned_clusters_common_properties_response_features.dart';
import 'provisioned_clusters_common_properties_response_status.dart';
import 'windows_profile_response_response.dart';

class ProvisionedClustersResponsePropertiesResponse {
  /// AAD profile for the provisioned cluster.
  final AADProfileResponseResponse? aadProfile;
  /// AddonProfiles - Profile of managed cluster add-on.
  final Map<String, AddonProfilesResponse>? addonProfiles;
  /// The agent pools of the cluster.
  final List<NamedAgentPoolProfileResponse>? agentPoolProfiles;
  /// The underlying cloud infra provider properties.
  final CloudProviderProfileResponse? cloudProviderProfile;
  /// ControlPlane - ControlPlane Configuration
  final ControlPlaneProfileResponse? controlPlane;
  /// EnableRBAC - Whether to enable Kubernetes Role-Based Access Control.
  final bool? enableRbac;
  /// Additional features specs like Arc Agent Onboarding.
  final ProvisionedClustersCommonPropertiesResponseFeatures? features;
  /// HttpProxyConfig - Configurations for provisioning the cluster with HTTP proxy servers.
  final HttpProxyConfigResponseResponse? httpProxyConfig;
  /// KubernetesVersion - Version of Kubernetes specified when creating the managed cluster.
  final String? kubernetesVersion;
  /// LinuxProfile - The profile for Linux VMs in the Provisioned Cluster.
  final LinuxProfilePropertiesResponse? linuxProfile;
  /// NetworkProfile - Profile of network configuration.
  final NetworkProfileResponse? networkProfile;
  /// NodeResourceGroup - Name of the resource group containing agent pool nodes.
  final String? nodeResourceGroup;
  final String provisioningState;
  /// HybridAKSClusterStatus defines the observed state of HybridAKSCluster
  final ProvisionedClustersCommonPropertiesResponseStatus status;
  /// WindowsProfile - Profile for Windows VMs in the Provisioned Cluster.
  final WindowsProfileResponseResponse? windowsProfile;

  /// Creates a new [ProvisionedClustersResponsePropertiesResponse].
  /// [aadProfile] AAD profile for the provisioned cluster.
  /// [addonProfiles] AddonProfiles - Profile of managed cluster add-on.
  /// [agentPoolProfiles] The agent pools of the cluster.
  /// [cloudProviderProfile] The underlying cloud infra provider properties.
  /// [controlPlane] ControlPlane - ControlPlane Configuration
  /// [enableRbac] EnableRBAC - Whether to enable Kubernetes Role-Based Access Control.
  /// [features] Additional features specs like Arc Agent Onboarding.
  /// [httpProxyConfig] HttpProxyConfig - Configurations for provisioning the cluster with HTTP proxy servers.
  /// [kubernetesVersion] KubernetesVersion - Version of Kubernetes specified when creating the managed cluster.
  /// [linuxProfile] LinuxProfile - The profile for Linux VMs in the Provisioned Cluster.
  /// [networkProfile] NetworkProfile - Profile of network configuration.
  /// [nodeResourceGroup] NodeResourceGroup - Name of the resource group containing agent pool nodes.
  /// [provisioningState] Required.
  /// [status] HybridAKSClusterStatus defines the observed state of HybridAKSCluster
  /// [windowsProfile] WindowsProfile - Profile for Windows VMs in the Provisioned Cluster.
  ProvisionedClustersResponsePropertiesResponse({
    this.aadProfile,
    this.addonProfiles,
    this.agentPoolProfiles,
    this.cloudProviderProfile,
    this.controlPlane,
    this.enableRbac,
    this.features,
    this.httpProxyConfig,
    this.kubernetesVersion,
    this.linuxProfile,
    this.networkProfile,
    this.nodeResourceGroup,
    required this.provisioningState,
    required this.status,
    this.windowsProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadProfile': ?aadProfile == null ? null : aadProfile!.toMap(),
      'addonProfiles': ?addonProfiles == null ? null : pulumi.Input.encodeMapValues<AddonProfilesResponse, Map<String, dynamic>>(addonProfiles!, (value) => value.toMap()),
      'agentPoolProfiles': ?agentPoolProfiles == null ? null : pulumi.Input.encodeList<NamedAgentPoolProfileResponse, Map<String, dynamic>>(agentPoolProfiles!, (value) => value.toMap()),
      'cloudProviderProfile': ?cloudProviderProfile == null ? null : cloudProviderProfile!.toMap(),
      'controlPlane': ?controlPlane == null ? null : controlPlane!.toMap(),
      'enableRbac': ?enableRbac,
      'features': ?features == null ? null : features!.toMap(),
      'httpProxyConfig': ?httpProxyConfig == null ? null : httpProxyConfig!.toMap(),
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfile': ?linuxProfile == null ? null : linuxProfile!.toMap(),
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'nodeResourceGroup': ?nodeResourceGroup,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'windowsProfile': ?windowsProfile == null ? null : windowsProfile!.toMap(),
    };
  }

  factory ProvisionedClustersResponsePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersResponsePropertiesResponse(
      aadProfile: map['aadProfile'] == null ? null : AADProfileResponseResponse.fromMap((map['aadProfile'] as Map).cast<String, dynamic>()),
      addonProfiles: map['addonProfiles'] == null ? null : pulumi.Input.decodeMapValues<AddonProfilesResponse>(map['addonProfiles'], (value) => AddonProfilesResponse.fromMap((value as Map).cast<String, dynamic>())),
      agentPoolProfiles: map['agentPoolProfiles'] == null ? null : pulumi.Input.decodeList<NamedAgentPoolProfileResponse>(map['agentPoolProfiles'], (value) => NamedAgentPoolProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : CloudProviderProfileResponse.fromMap((map['cloudProviderProfile'] as Map).cast<String, dynamic>()),
      controlPlane: map['controlPlane'] == null ? null : ControlPlaneProfileResponse.fromMap((map['controlPlane'] as Map).cast<String, dynamic>()),
      enableRbac: map['enableRbac'] == null ? null : map['enableRbac'] as bool,
      features: map['features'] == null ? null : ProvisionedClustersCommonPropertiesResponseFeatures.fromMap((map['features'] as Map).cast<String, dynamic>()),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : HttpProxyConfigResponseResponse.fromMap((map['httpProxyConfig'] as Map).cast<String, dynamic>()),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : map['kubernetesVersion'] as String,
      linuxProfile: map['linuxProfile'] == null ? null : LinuxProfilePropertiesResponse.fromMap((map['linuxProfile'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : NetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      nodeResourceGroup: map['nodeResourceGroup'] == null ? null : map['nodeResourceGroup'] as String,
      provisioningState: map['provisioningState'] as String,
      status: ProvisionedClustersCommonPropertiesResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      windowsProfile: map['windowsProfile'] == null ? null : WindowsProfileResponseResponse.fromMap((map['windowsProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

