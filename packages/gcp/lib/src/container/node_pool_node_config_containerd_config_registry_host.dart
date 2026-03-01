// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_containerd_config_registry_host_host.dart';

class NodePoolNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final List<NodePoolNodeConfigContainerdConfigRegistryHostHost>? hosts;

  /// Defines the host name of the registry server.
  final String server;

  /// Creates a new [NodePoolNodeConfigContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  NodePoolNodeConfigContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts == null
          ? null
          : pulumi.Input.encodeList<
              NodePoolNodeConfigContainerdConfigRegistryHostHost,
              Map<String, dynamic>
            >(hosts!, (value) => value.toMap()),
      'server': server,
    };
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigContainerdConfigRegistryHost(
      hosts: map['hosts'] == null
          ? null
          : pulumi.Input.decodeList<
              NodePoolNodeConfigContainerdConfigRegistryHostHost
            >(
              map['hosts'],
              (value) =>
                  NodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      server: map['server'] as String,
    );
  }
}
