// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config_private_registry_access_config.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_writable_cgroup.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig {
  /// Parameters for private container registries configuration.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig>
      privateRegistryAccessConfigs;

  /// Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost>
      registryHosts;

  /// Parameters for writable cgroups configuration.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup>
      writableCgroups;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig].
  /// [privateRegistryAccessConfigs] Parameters for private container registries configuration.
  /// [registryHosts] Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  /// [writableCgroups] Parameters for writable cgroups configuration.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig({
    required this.privateRegistryAccessConfigs,
    required this.registryHosts,
    required this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateRegistryAccessConfigs'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig,
        Map<String,
            dynamic>>(privateRegistryAccessConfigs, (value) => value.toMap());
    map['registryHosts'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost,
        Map<String, dynamic>>(registryHosts, (value) => value.toMap());
    map['writableCgroups'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup,
        Map<String, dynamic>>(writableCgroups, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig(
      privateRegistryAccessConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig>(
          map['privateRegistryAccessConfigs'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      registryHosts: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost>(
          map['registryHosts'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost
                  .fromMap((value as Map).cast<String, dynamic>())),
      writableCgroups: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup>(
          map['writableCgroups'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
