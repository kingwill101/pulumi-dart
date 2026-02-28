// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_containerd_config_private_registry_access_config.dart';
import 'get_cluster_node_pool_node_config_containerd_config_registry_host.dart';
import 'get_cluster_node_pool_node_config_containerd_config_writable_cgroup.dart';

class GetClusterNodePoolNodeConfigContainerdConfig {
  /// Parameters for private container registries configuration.
  final List<
          GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig>
      privateRegistryAccessConfigs;

  /// Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  final List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHost>
      registryHosts;

  /// Parameters for writable cgroups configuration.
  final List<GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup>
      writableCgroups;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfig].
  /// [privateRegistryAccessConfigs] Parameters for private container registries configuration.
  /// [registryHosts] Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  /// [writableCgroups] Parameters for writable cgroups configuration.
  GetClusterNodePoolNodeConfigContainerdConfig({
    required this.privateRegistryAccessConfigs,
    required this.registryHosts,
    required this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateRegistryAccessConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig,
        Map<String,
            dynamic>>(privateRegistryAccessConfigs, (value) => value.toMap());
    map['registryHosts'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigContainerdConfigRegistryHost,
        Map<String, dynamic>>(registryHosts, (value) => value.toMap());
    map['writableCgroups'] = pulumi.Input.encodeList<
        GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup,
        Map<String, dynamic>>(writableCgroups, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolNodeConfigContainerdConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfig(
      privateRegistryAccessConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig>(
          map['privateRegistryAccessConfigs'],
          (value) =>
              GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      registryHosts: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigContainerdConfigRegistryHost>(
          map['registryHosts'],
          (value) =>
              GetClusterNodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
                  (value as Map).cast<String, dynamic>())),
      writableCgroups: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup>(
          map['writableCgroups'],
          (value) => GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
