// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_containerd_config_registry_host_host.dart';

class ClusterNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final List<ClusterNodeConfigContainerdConfigRegistryHostHost>? hosts;

  /// Defines the host name of the registry server.
  final String server;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  ClusterNodeConfigContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts == null
          ? null
          : pulumi.Input.encodeList<
              ClusterNodeConfigContainerdConfigRegistryHostHost,
              Map<String, dynamic>
            >(hosts!, (value) => value.toMap()),
      'server': server,
    };
  }

  factory ClusterNodeConfigContainerdConfigRegistryHost.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeConfigContainerdConfigRegistryHost(
      hosts: map['hosts'] == null
          ? null
          : pulumi.Input.decodeList<
              ClusterNodeConfigContainerdConfigRegistryHostHost
            >(
              map['hosts'],
              (value) =>
                  ClusterNodeConfigContainerdConfigRegistryHostHost.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      server: map['server'] as String,
    );
  }
}
