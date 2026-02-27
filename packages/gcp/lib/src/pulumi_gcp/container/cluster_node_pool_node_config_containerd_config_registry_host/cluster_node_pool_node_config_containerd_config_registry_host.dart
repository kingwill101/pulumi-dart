// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_node_pool_node_config_containerd_config_registry_host_host/cluster_node_pool_node_config_containerd_config_registry_host_host.dart';

class ClusterNodePoolNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final List<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost>? hosts;

  /// Defines the host name of the registry server.
  final String server;

  ClusterNodePoolNodeConfigContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostsValue = hosts;
    if (hostsValue != null) {
      map['hosts'] = pulumi.Input.encodeList<
          ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost,
          Map<String, dynamic>>(hostsValue, (value) => value.toMap());
    }
    map['server'] = server;
    return map;
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHost(
      hosts: map['hosts'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost>(
              map['hosts'],
              (value) =>
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost
                      .fromMap((value as Map).cast<String, dynamic>())),
      server: map['server'] as String,
    );
  }
}
