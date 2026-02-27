// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host/cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final List<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost>?
      hosts;

  /// Defines the host name of the registry server.
  final String server;

  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostsValue = hosts;
    if (hostsValue != null) {
      map['hosts'] = pulumi.Input.encodeList<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost,
          Map<String, dynamic>>(hostsValue, (value) => value.toMap());
    }
    map['server'] = server;
    return map;
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost(
      hosts: map['hosts'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost>(
              map['hosts'],
              (value) =>
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost
                      .fromMap((value as Map).cast<String, dynamic>())),
      server: map['server'] as String,
    );
  }
}
