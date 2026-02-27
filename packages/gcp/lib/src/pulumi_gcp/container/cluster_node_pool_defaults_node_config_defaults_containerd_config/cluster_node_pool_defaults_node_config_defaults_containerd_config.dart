// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_node_pool_defaults_node_config_defaults_containerd_config_private_registry_access_config/cluster_node_pool_defaults_node_config_defaults_containerd_config_private_registry_access_config.dart';
import '../cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host/cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host.dart';
import '../cluster_node_pool_defaults_node_config_defaults_containerd_config_writable_cgroups/cluster_node_pool_defaults_node_config_defaults_containerd_config_writable_cgroups.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig {
  /// Configuration for private container registries. There are two fields in this config:
  final ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig?
      privateRegistryAccessConfig;

  /// Defines containerd registry host configuration. Each `registry_hosts` entry represents a `hosts.toml` file. See [customize containerd configuration in GKE nodes](https://docs.cloud.google.com/kubernetes-engine/docs/how-to/customize-containerd-configuration#registryHosts) for more detail. Example:
  final List<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost>?
      registryHosts;

  /// Configuration for writable cgroups. This allows containers to have a writable `/sys/fs/cgroup` directory, which is required for some workloads to create their own sub-cgroups. The `writable_cgroups` block supports:
  final ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups?
      writableCgroups;

  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig({
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
      map['registryHosts'] = Input.encodeList<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost,
          Map<String, dynamic>>(registryHostsValue, (value) => value.toMap());
    }
    final writableCgroupsValue = writableCgroups;
    if (writableCgroupsValue != null) {
      map['writableCgroups'] = writableCgroupsValue.toMap();
    }
    return map;
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig(
      privateRegistryAccessConfig: map['privateRegistryAccessConfig'] == null
          ? null
          : ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig
              .fromMap((map['privateRegistryAccessConfig'] as Map)
                  .cast<String, dynamic>()),
      registryHosts: map['registryHosts'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost>(
              map['registryHosts'],
              (value) =>
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost
                      .fromMap((value as Map).cast<String, dynamic>())),
      writableCgroups: map['writableCgroups'] == null
          ? null
          : ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups
              .fromMap((map['writableCgroups'] as Map).cast<String, dynamic>()),
    );
  }
}
