// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_containerd_config_registry_host_host.dart';

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost>
  hosts;

  /// Defines the host name of the registry server.
  final String server;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  GetClusterNodePoolNodeConfigContainerdConfigRegistryHost({
    required this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts':
          pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost,
            Map<String, dynamic>
          >(hosts, (value) => value.toMap()),
      'server': server,
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHost(
      hosts:
          pulumi.Input.decodeList<
            GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost
          >(
            map['hosts'],
            (value) =>
                GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      server: map['server'] as String,
    );
  }
}
