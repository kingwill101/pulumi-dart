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
  final AADProfile? aadProfile;
  /// AddonProfiles - Profile of managed cluster add-on.
  final Map<String, AddonProfiles>? addonProfiles;
  /// The agent pools of the cluster.
  final List<NamedAgentPoolProfile>? agentPoolProfiles;
  /// The underlying cloud infra provider properties.
  final CloudProviderProfile? cloudProviderProfile;
  /// ControlPlane - ControlPlane Configuration
  final ControlPlaneProfile? controlPlane;
  /// EnableRBAC - Whether to enable Kubernetes Role-Based Access Control.
  final bool? enableRbac;
  /// Additional features specs like Arc Agent Onboarding.
  final ProvisionedClustersCommonPropertiesFeatures? features;
  /// HttpProxyConfig - Configurations for provisioning the cluster with HTTP proxy servers.
  final HttpProxyConfig? httpProxyConfig;
  /// KubernetesVersion - Version of Kubernetes specified when creating the managed cluster.
  final String? kubernetesVersion;
  /// LinuxProfile - The profile for Linux VMs in the Provisioned Cluster.
  final LinuxProfileProperties? linuxProfile;
  /// NetworkProfile - Profile of network configuration.
  final NetworkProfile? networkProfile;
  /// NodeResourceGroup - Name of the resource group containing agent pool nodes.
  final String? nodeResourceGroup;
  /// WindowsProfile - Profile for Windows VMs in the Provisioned Cluster.
  final WindowsProfile? windowsProfile;

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
      'aadProfile': ?aadProfile == null ? null : aadProfile!.toMap(),
      'addonProfiles': ?addonProfiles == null ? null : pulumi.Input.encodeMapValues<AddonProfiles, Map<String, dynamic>>(addonProfiles!, (value) => value.toMap()),
      'agentPoolProfiles': ?agentPoolProfiles == null ? null : pulumi.Input.encodeList<NamedAgentPoolProfile, Map<String, dynamic>>(agentPoolProfiles!, (value) => value.toMap()),
      'cloudProviderProfile': ?cloudProviderProfile == null ? null : cloudProviderProfile!.toMap(),
      'controlPlane': ?controlPlane == null ? null : controlPlane!.toMap(),
      'enableRbac': ?enableRbac,
      'features': ?features == null ? null : features!.toMap(),
      'httpProxyConfig': ?httpProxyConfig == null ? null : httpProxyConfig!.toMap(),
      'kubernetesVersion': ?kubernetesVersion,
      'linuxProfile': ?linuxProfile == null ? null : linuxProfile!.toMap(),
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'nodeResourceGroup': ?nodeResourceGroup,
      'windowsProfile': ?windowsProfile == null ? null : windowsProfile!.toMap(),
    };
  }

  factory ProvisionedClustersAllProperties.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersAllProperties(
      aadProfile: map['aadProfile'] == null ? null : AADProfile.fromMap((map['aadProfile'] as Map).cast<String, dynamic>()),
      addonProfiles: map['addonProfiles'] == null ? null : pulumi.Input.decodeMapValues<AddonProfiles>(map['addonProfiles'], (value) => AddonProfiles.fromMap((value as Map).cast<String, dynamic>())),
      agentPoolProfiles: map['agentPoolProfiles'] == null ? null : pulumi.Input.decodeList<NamedAgentPoolProfile>(map['agentPoolProfiles'], (value) => NamedAgentPoolProfile.fromMap((value as Map).cast<String, dynamic>())),
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : CloudProviderProfile.fromMap((map['cloudProviderProfile'] as Map).cast<String, dynamic>()),
      controlPlane: map['controlPlane'] == null ? null : ControlPlaneProfile.fromMap((map['controlPlane'] as Map).cast<String, dynamic>()),
      enableRbac: map['enableRbac'] == null ? null : map['enableRbac'] as bool,
      features: map['features'] == null ? null : ProvisionedClustersCommonPropertiesFeatures.fromMap((map['features'] as Map).cast<String, dynamic>()),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : HttpProxyConfig.fromMap((map['httpProxyConfig'] as Map).cast<String, dynamic>()),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : map['kubernetesVersion'] as String,
      linuxProfile: map['linuxProfile'] == null ? null : LinuxProfileProperties.fromMap((map['linuxProfile'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      nodeResourceGroup: map['nodeResourceGroup'] == null ? null : map['nodeResourceGroup'] as String,
      windowsProfile: map['windowsProfile'] == null ? null : WindowsProfile.fromMap((map['windowsProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

