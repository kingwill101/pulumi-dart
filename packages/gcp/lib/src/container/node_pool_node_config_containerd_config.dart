// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_containerd_config_private_registry_access_config.dart';
import 'node_pool_node_config_containerd_config_registry_host.dart';
import 'node_pool_node_config_containerd_config_writable_cgroups.dart';

class NodePoolNodeConfigContainerdConfig {
  /// Parameters for private container registries configuration.
  final NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig?
  privateRegistryAccessConfig;

  /// Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  final List<NodePoolNodeConfigContainerdConfigRegistryHost>? registryHosts;

  /// Parameters for writable cgroups configuration.
  final NodePoolNodeConfigContainerdConfigWritableCgroups? writableCgroups;

  /// Creates a new [NodePoolNodeConfigContainerdConfig].
  /// [privateRegistryAccessConfig] Parameters for private container registries configuration.
  /// [registryHosts] Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  /// [writableCgroups] Parameters for writable cgroups configuration.
  NodePoolNodeConfigContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateRegistryAccessConfig': ?privateRegistryAccessConfig == null
          ? null
          : privateRegistryAccessConfig!.toMap(),
      'registryHosts': ?registryHosts == null
          ? null
          : pulumi.Input.encodeList<
              NodePoolNodeConfigContainerdConfigRegistryHost,
              Map<String, dynamic>
            >(registryHosts!, (value) => value.toMap()),
      'writableCgroups': ?writableCgroups == null
          ? null
          : writableCgroups!.toMap(),
    };
  }

  factory NodePoolNodeConfigContainerdConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfig(
      privateRegistryAccessConfig: map['privateRegistryAccessConfig'] == null
          ? null
          : NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(
              (map['privateRegistryAccessConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      registryHosts: map['registryHosts'] == null
          ? null
          : pulumi.Input.decodeList<
              NodePoolNodeConfigContainerdConfigRegistryHost
            >(
              map['registryHosts'],
              (value) => NodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      writableCgroups: map['writableCgroups'] == null
          ? null
          : NodePoolNodeConfigContainerdConfigWritableCgroups.fromMap(
              (map['writableCgroups'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
