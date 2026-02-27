// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_node_pool_node_config_containerd_config_private_registry_access_config/cluster_node_pool_node_config_containerd_config_private_registry_access_config.dart';
import '../cluster_node_pool_node_config_containerd_config_registry_host/cluster_node_pool_node_config_containerd_config_registry_host.dart';
import '../cluster_node_pool_node_config_containerd_config_writable_cgroups/cluster_node_pool_node_config_containerd_config_writable_cgroups.dart';

class ClusterNodePoolNodeConfigContainerdConfig {
  /// Configuration for private container registries. There are two fields in this config:
  final ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig?
      privateRegistryAccessConfig;

  /// Defines containerd registry host configuration. Each `registry_hosts` entry represents a `hosts.toml` file. See [customize containerd configuration in GKE nodes](https://docs.cloud.google.com/kubernetes-engine/docs/how-to/customize-containerd-configuration#registryHosts) for more detail. Example:
  final List<ClusterNodePoolNodeConfigContainerdConfigRegistryHost>?
      registryHosts;

  /// Configuration for writable cgroups. This allows containers to have a writable `/sys/fs/cgroup` directory, which is required for some workloads to create their own sub-cgroups. The `writable_cgroups` block supports:
  final ClusterNodePoolNodeConfigContainerdConfigWritableCgroups?
      writableCgroups;

  ClusterNodePoolNodeConfigContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final privateRegistryAccessConfigValue = privateRegistryAccessConfig;
    if (privateRegistryAccessConfigValue != null) {
      map['privateRegistryAccessConfig'] =
          privateRegistryAccessConfigValue.toMap();
    }
    final registryHostsValue = registryHosts;
    if (registryHostsValue != null) {
      map['registryHosts'] = pulumi.Input.encodeList<
          ClusterNodePoolNodeConfigContainerdConfigRegistryHost,
          Map<String, dynamic>>(registryHostsValue, (value) => value.toMap());
    }
    final writableCgroupsValue = writableCgroups;
    if (writableCgroupsValue != null) {
      map['writableCgroups'] = writableCgroupsValue.toMap();
    }
    return map;
  }

  factory ClusterNodePoolNodeConfigContainerdConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfig(
      privateRegistryAccessConfig: map['privateRegistryAccessConfig'] == null
          ? null
          : ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig
              .fromMap((map['privateRegistryAccessConfig'] as Map)
                  .cast<String, dynamic>()),
      registryHosts: map['registryHosts'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHost>(
              map['registryHosts'],
              (value) =>
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
                      (value as Map).cast<String, dynamic>())),
      writableCgroups: map['writableCgroups'] == null
          ? null
          : ClusterNodePoolNodeConfigContainerdConfigWritableCgroups.fromMap(
              (map['writableCgroups'] as Map).cast<String, dynamic>()),
    );
  }
}
