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
  final pulumi.Input<AADProfileResponseResponse>? aadProfile;
  /// AddonProfiles - Profile of managed cluster add-on.
  final pulumi.Input<Map<String, AddonProfilesResponse>>? addonProfiles;
  /// The agent pools of the cluster.
  final pulumi.Input<List<NamedAgentPoolProfileResponse>>? agentPoolProfiles;
  /// The underlying cloud infra provider properties.
  final pulumi.Input<CloudProviderProfileResponse>? cloudProviderProfile;
  /// ControlPlane - ControlPlane Configuration
  final pulumi.Input<ControlPlaneProfileResponse>? controlPlane;
  /// EnableRBAC - Whether to enable Kubernetes Role-Based Access Control.
  final pulumi.Input<bool>? enableRbac;
  /// Additional features specs like Arc Agent Onboarding.
  final pulumi.Input<ProvisionedClustersCommonPropertiesResponseFeatures>? features;
  /// HttpProxyConfig - Configurations for provisioning the cluster with HTTP proxy servers.
  final pulumi.Input<HttpProxyConfigResponseResponse>? httpProxyConfig;
  /// KubernetesVersion - Version of Kubernetes specified when creating the managed cluster.
  final pulumi.Input<String>? kubernetesVersion;
  /// LinuxProfile - The profile for Linux VMs in the Provisioned Cluster.
  final pulumi.Input<LinuxProfilePropertiesResponse>? linuxProfile;
  /// NetworkProfile - Profile of network configuration.
  final pulumi.Input<NetworkProfileResponse>? networkProfile;
  /// NodeResourceGroup - Name of the resource group containing agent pool nodes.
  final pulumi.Input<String>? nodeResourceGroup;
  final pulumi.Input<String> provisioningState;
  /// HybridAKSClusterStatus defines the observed state of HybridAKSCluster
  final pulumi.Input<ProvisionedClustersCommonPropertiesResponseStatus> status;
  /// WindowsProfile - Profile for Windows VMs in the Provisioned Cluster.
  final pulumi.Input<WindowsProfileResponseResponse>? windowsProfile;

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
      'aadProfile': ?pulumi.Input.mapOptionalInputValue<AADProfileResponseResponse, Map<String, dynamic>>(aadProfile, (value) => value.toMap()),
      'addonProfiles': ?pulumi.Input.mapOptionalInputValue<Map<String, AddonProfilesResponse>, Map<String, Map<String, dynamic>>>(addonProfiles, (value) => pulumi.Input.encodeMapValues<AddonProfilesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentPoolProfiles': ?pulumi.Input.mapOptionalInputValue<List<NamedAgentPoolProfileResponse>, List<Map<String, dynamic>>>(agentPoolProfiles, (value) => pulumi.Input.encodeList<NamedAgentPoolProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudProviderProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfileResponse, Map<String, dynamic>>(cloudProviderProfile, (value) => value.toMap()),
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<ControlPlaneProfileResponse, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'enableRbac': ?enableRbac,
      'features': ?pulumi.Input.mapOptionalInputValue<ProvisionedClustersCommonPropertiesResponseFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'httpProxyConfig': ?pulumi.Input.mapOptionalInputValue<HttpProxyConfigResponseResponse, Map<String, dynamic>>(httpProxyConfig, (value) => value.toMap()),
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfile': ?pulumi.Input.mapOptionalInputValue<LinuxProfilePropertiesResponse, Map<String, dynamic>>(linuxProfile, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfileResponse, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'nodeResourceGroup': ?nodeResourceGroup,
      'provisioningState': provisioningState,
      'status': pulumi.Input.mapInputValue<ProvisionedClustersCommonPropertiesResponseStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'windowsProfile': ?pulumi.Input.mapOptionalInputValue<WindowsProfileResponseResponse, Map<String, dynamic>>(windowsProfile, (value) => value.toMap()),
    };
  }

  factory ProvisionedClustersResponsePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersResponsePropertiesResponse(
      aadProfile: map['aadProfile'] == null ? null : (AADProfileResponseResponse.fromMap((map['aadProfile']! as Map).cast<String, dynamic>())).input(),
      addonProfiles: map['addonProfiles'] == null ? null : (pulumi.Input.decodeMapValues<AddonProfilesResponse>(map['addonProfiles']!, (value) => AddonProfilesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      agentPoolProfiles: map['agentPoolProfiles'] == null ? null : (pulumi.Input.decodeList<NamedAgentPoolProfileResponse>(map['agentPoolProfiles']!, (value) => NamedAgentPoolProfileResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : (CloudProviderProfileResponse.fromMap((map['cloudProviderProfile']! as Map).cast<String, dynamic>())).input(),
      controlPlane: map['controlPlane'] == null ? null : (ControlPlaneProfileResponse.fromMap((map['controlPlane']! as Map).cast<String, dynamic>())).input(),
      enableRbac: map['enableRbac'] == null ? null : (map['enableRbac']! as bool).input(),
      features: map['features'] == null ? null : (ProvisionedClustersCommonPropertiesResponseFeatures.fromMap((map['features']! as Map).cast<String, dynamic>())).input(),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : (HttpProxyConfigResponseResponse.fromMap((map['httpProxyConfig']! as Map).cast<String, dynamic>())).input(),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : (map['kubernetesVersion']! as String).input(),
      linuxProfile: map['linuxProfile'] == null ? null : (LinuxProfilePropertiesResponse.fromMap((map['linuxProfile']! as Map).cast<String, dynamic>())).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfileResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>())).input(),
      nodeResourceGroup: map['nodeResourceGroup'] == null ? null : (map['nodeResourceGroup']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      status: (ProvisionedClustersCommonPropertiesResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      windowsProfile: map['windowsProfile'] == null ? null : (WindowsProfileResponseResponse.fromMap((map['windowsProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

