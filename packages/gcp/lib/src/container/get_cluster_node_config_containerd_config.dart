// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_containerd_config_private_registry_access_config.dart';
import 'get_cluster_node_config_containerd_config_registry_host.dart';
import 'get_cluster_node_config_containerd_config_writable_cgroup.dart';

class GetClusterNodeConfigContainerdConfig {
  /// Parameters for private container registries configuration.
  final List<GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig>
      privateRegistryAccessConfigs;

  /// Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  final List<GetClusterNodeConfigContainerdConfigRegistryHost> registryHosts;

  /// Parameters for writable cgroups configuration.
  final List<GetClusterNodeConfigContainerdConfigWritableCgroup>
      writableCgroups;

  /// Creates a new [GetClusterNodeConfigContainerdConfig].
  /// [privateRegistryAccessConfigs] Parameters for private container registries configuration.
  /// [registryHosts] Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  /// [writableCgroups] Parameters for writable cgroups configuration.
  GetClusterNodeConfigContainerdConfig({
    required this.privateRegistryAccessConfigs,
    required this.registryHosts,
    required this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateRegistryAccessConfigs'] = pulumi.Input.encodeList<
            GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig,
            Map<String, dynamic>>(
        privateRegistryAccessConfigs, (value) => value.toMap());
    map['registryHosts'] = pulumi.Input.encodeList<
        GetClusterNodeConfigContainerdConfigRegistryHost,
        Map<String, dynamic>>(registryHosts, (value) => value.toMap());
    map['writableCgroups'] = pulumi.Input.encodeList<
        GetClusterNodeConfigContainerdConfigWritableCgroup,
        Map<String, dynamic>>(writableCgroups, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodeConfigContainerdConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfig(
      privateRegistryAccessConfigs: pulumi.Input.decodeList<
              GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig>(
          map['privateRegistryAccessConfigs'],
          (value) =>
              GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      registryHosts: pulumi.Input.decodeList<
              GetClusterNodeConfigContainerdConfigRegistryHost>(
          map['registryHosts'],
          (value) => GetClusterNodeConfigContainerdConfigRegistryHost.fromMap(
              (value as Map).cast<String, dynamic>())),
      writableCgroups: pulumi.Input.decodeList<
              GetClusterNodeConfigContainerdConfigWritableCgroup>(
          map['writableCgroups'],
          (value) => GetClusterNodeConfigContainerdConfigWritableCgroup.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
