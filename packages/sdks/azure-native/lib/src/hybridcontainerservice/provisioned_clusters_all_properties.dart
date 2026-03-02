// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadprofile.dart';
import 'addon_profiles.dart';
import 'cloud_provider_profile.dart';
import 'control_plane_profile.dart';
import 'http_proxy_config.dart';
import 'linux_profile_properties.dart';
import 'named_agent_pool_profile.dart';
import 'network_profile.dart';
import 'provisioned_clusters_common_properties_features.dart';
import 'windows_profile.dart';

/// All properties of the provisioned cluster
class ProvisionedClustersAllProperties {
  /// AAD profile for the provisioned cluster.
  final pulumi.Input<AADProfile>? aadProfile;
  /// AddonProfiles - Profile of managed cluster add-on.
  final pulumi.Input<Map<String, AddonProfiles>>? addonProfiles;
  /// The agent pools of the cluster.
  final pulumi.Input<List<NamedAgentPoolProfile>>? agentPoolProfiles;
  /// The underlying cloud infra provider properties.
  final pulumi.Input<CloudProviderProfile>? cloudProviderProfile;
  /// ControlPlane - ControlPlane Configuration
  final pulumi.Input<ControlPlaneProfile>? controlPlane;
  /// EnableRBAC - Whether to enable Kubernetes Role-Based Access Control.
  final pulumi.Input<bool>? enableRbac;
  /// Additional features specs like Arc Agent Onboarding.
  final pulumi.Input<ProvisionedClustersCommonPropertiesFeatures>? features;
  /// HttpProxyConfig - Configurations for provisioning the cluster with HTTP proxy servers.
  final pulumi.Input<HttpProxyConfig>? httpProxyConfig;
  /// KubernetesVersion - Version of Kubernetes specified when creating the managed cluster.
  final pulumi.Input<String>? kubernetesVersion;
  /// LinuxProfile - The profile for Linux VMs in the Provisioned Cluster.
  final pulumi.Input<LinuxProfileProperties>? linuxProfile;
  /// NetworkProfile - Profile of network configuration.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// NodeResourceGroup - Name of the resource group containing agent pool nodes.
  final pulumi.Input<String>? nodeResourceGroup;
  /// WindowsProfile - Profile for Windows VMs in the Provisioned Cluster.
  final pulumi.Input<WindowsProfile>? windowsProfile;

  /// Creates a new [ProvisionedClustersAllProperties].
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
  /// [windowsProfile] WindowsProfile - Profile for Windows VMs in the Provisioned Cluster.
  ProvisionedClustersAllProperties({
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
    this.windowsProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadProfile': ?pulumi.Input.mapOptionalInputValue<AADProfile, Map<String, dynamic>>(aadProfile, (value) => value.toMap()),
      'addonProfiles': ?pulumi.Input.mapOptionalInputValue<Map<String, AddonProfiles>, Map<String, Map<String, dynamic>>>(addonProfiles, (value) => pulumi.Input.encodeMapValues<AddonProfiles, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentPoolProfiles': ?pulumi.Input.mapOptionalInputValue<List<NamedAgentPoolProfile>, List<Map<String, dynamic>>>(agentPoolProfiles, (value) => pulumi.Input.encodeList<NamedAgentPoolProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudProviderProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfile, Map<String, dynamic>>(cloudProviderProfile, (value) => value.toMap()),
      'controlPlane': ?pulumi.Input.mapOptionalInputValue<ControlPlaneProfile, Map<String, dynamic>>(controlPlane, (value) => value.toMap()),
      'enableRbac': ?enableRbac,
      'features': ?pulumi.Input.mapOptionalInputValue<ProvisionedClustersCommonPropertiesFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'httpProxyConfig': ?pulumi.Input.mapOptionalInputValue<HttpProxyConfig, Map<String, dynamic>>(httpProxyConfig, (value) => value.toMap()),
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfile': ?pulumi.Input.mapOptionalInputValue<LinuxProfileProperties, Map<String, dynamic>>(linuxProfile, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'nodeResourceGroup': ?nodeResourceGroup,
      'windowsProfile': ?pulumi.Input.mapOptionalInputValue<WindowsProfile, Map<String, dynamic>>(windowsProfile, (value) => value.toMap()),
    };
  }

  factory ProvisionedClustersAllProperties.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersAllProperties(
      aadProfile: map['aadProfile'] == null ? null : (AADProfile.fromMap((map['aadProfile'] as Map).cast<String, dynamic>())).input(),
      addonProfiles: map['addonProfiles'] == null ? null : (pulumi.Input.decodeMapValues<AddonProfiles>(map['addonProfiles'], (value) => AddonProfiles.fromMap((value as Map).cast<String, dynamic>()))).input(),
      agentPoolProfiles: map['agentPoolProfiles'] == null ? null : (pulumi.Input.decodeList<NamedAgentPoolProfile>(map['agentPoolProfiles'], (value) => NamedAgentPoolProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : (CloudProviderProfile.fromMap((map['cloudProviderProfile'] as Map).cast<String, dynamic>())).input(),
      controlPlane: map['controlPlane'] == null ? null : (ControlPlaneProfile.fromMap((map['controlPlane'] as Map).cast<String, dynamic>())).input(),
      enableRbac: map['enableRbac'] == null ? null : (map['enableRbac'] as bool).input(),
      features: map['features'] == null ? null : (ProvisionedClustersCommonPropertiesFeatures.fromMap((map['features'] as Map).cast<String, dynamic>())).input(),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : (HttpProxyConfig.fromMap((map['httpProxyConfig'] as Map).cast<String, dynamic>())).input(),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : (map['kubernetesVersion'] as String).input(),
      linuxProfile: map['linuxProfile'] == null ? null : (LinuxProfileProperties.fromMap((map['linuxProfile'] as Map).cast<String, dynamic>())).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      nodeResourceGroup: map['nodeResourceGroup'] == null ? null : (map['nodeResourceGroup'] as String).input(),
      windowsProfile: map['windowsProfile'] == null ? null : (WindowsProfile.fromMap((map['windowsProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

