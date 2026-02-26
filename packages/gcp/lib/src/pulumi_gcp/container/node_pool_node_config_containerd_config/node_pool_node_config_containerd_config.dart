// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../node_pool_node_config_containerd_config_private_registry_access_config/node_pool_node_config_containerd_config_private_registry_access_config.dart';
import '../node_pool_node_config_containerd_config_registry_host/node_pool_node_config_containerd_config_registry_host.dart';
import '../node_pool_node_config_containerd_config_writable_cgroups/node_pool_node_config_containerd_config_writable_cgroups.dart';

class NodePoolNodeConfigContainerdConfig {
  /// Parameters for private container registries configuration.
  final NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig?
      privateRegistryAccessConfig;

  /// Configures containerd registry host configuration. Each<span pulumi-lang-nodejs=" registryHosts " pulumi-lang-dotnet=" RegistryHosts " pulumi-lang-go=" registryHosts " pulumi-lang-python=" registry_hosts " pulumi-lang-yaml=" registryHosts " pulumi-lang-java=" registryHosts "> registry_hosts </span>entry represents a hosts.toml file.
  final List<NodePoolNodeConfigContainerdConfigRegistryHost>? registryHosts;

  /// Parameters for writable cgroups configuration.
  final NodePoolNodeConfigContainerdConfigWritableCgroups? writableCgroups;

  NodePoolNodeConfigContainerdConfig({
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
          NodePoolNodeConfigContainerdConfigRegistryHost,
          Map<String, dynamic>>(registryHostsValue, (value) => value.toMap());
    }
    final writableCgroupsValue = writableCgroups;
    if (writableCgroupsValue != null) {
      map['writableCgroups'] = writableCgroupsValue.toMap();
    }
    return map;
  }

  factory NodePoolNodeConfigContainerdConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfig(
      privateRegistryAccessConfig: map['privateRegistryAccessConfig'] == null
          ? null
          : NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig
              .fromMap((map['privateRegistryAccessConfig'] as Map)
                  .cast<String, dynamic>()),
      registryHosts: map['registryHosts'] == null
          ? null
          : Input.decodeList<NodePoolNodeConfigContainerdConfigRegistryHost>(
              map['registryHosts'],
              (value) => NodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
                  (value as Map).cast<String, dynamic>())),
      writableCgroups: map['writableCgroups'] == null
          ? null
          : NodePoolNodeConfigContainerdConfigWritableCgroups.fromMap(
              (map['writableCgroups'] as Map).cast<String, dynamic>()),
    );
  }
}
