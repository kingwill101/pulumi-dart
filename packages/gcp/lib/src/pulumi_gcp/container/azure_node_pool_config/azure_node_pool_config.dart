// ignore_for_file: unused_element, unnecessary_cast

import '../azure_node_pool_config_proxy_config/azure_node_pool_config_proxy_config.dart';
import '../azure_node_pool_config_root_volume/azure_node_pool_config_root_volume.dart';
import '../azure_node_pool_config_ssh_config/azure_node_pool_config_ssh_config.dart';

class AzureNodePoolConfig {
  /// The OS image type to use on node pool instances.
  final String? imageType;

  /// Optional. The initial labels assigned to nodes of this node pool. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;

  /// Proxy configuration for outbound HTTP(S) traffic.
  final AzureNodePoolConfigProxyConfig? proxyConfig;

  /// Optional. Configuration related to the root volume provisioned for each node pool machine. When unspecified, it defaults to a 32-GiB Azure Disk.
  final AzureNodePoolConfigRootVolume? rootVolume;

  /// SSH configuration for how to access the node pool machines.
  final AzureNodePoolConfigSshConfig sshConfig;

  /// Optional. A set of tags to apply to all underlying Azure resources for this node pool. This currently only includes Virtual Machine Scale Sets. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters.
  final Map<String, String>? tags;

  /// Optional. The Azure VM size name. Example: `Standard_DS2_v2`. See (/anthos/clusters/docs/azure/reference/supported-vms) for options. When unspecified, it defaults to `Standard_DS2_v2`.
  final String? vmSize;

  AzureNodePoolConfig({
    this.imageType,
    this.labels,
    this.proxyConfig,
    this.rootVolume,
    required this.sshConfig,
    this.tags,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageTypeValue = imageType;
    if (imageTypeValue != null) {
      map['imageType'] = imageTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final proxyConfigValue = proxyConfig;
    if (proxyConfigValue != null) {
      map['proxyConfig'] = proxyConfigValue.toMap();
    }
    final rootVolumeValue = rootVolume;
    if (rootVolumeValue != null) {
      map['rootVolume'] = rootVolumeValue.toMap();
    }
    map['sshConfig'] = sshConfig.toMap();
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vmSizeValue = vmSize;
    if (vmSizeValue != null) {
      map['vmSize'] = vmSizeValue;
    }
    return map;
  }

  factory AzureNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolConfig(
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      proxyConfig: map['proxyConfig'] == null
          ? null
          : AzureNodePoolConfigProxyConfig.fromMap(
              (map['proxyConfig'] as Map).cast<String, dynamic>()),
      rootVolume: map['rootVolume'] == null
          ? null
          : AzureNodePoolConfigRootVolume.fromMap(
              (map['rootVolume'] as Map).cast<String, dynamic>()),
      sshConfig: AzureNodePoolConfigSshConfig.fromMap(
          (map['sshConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}
