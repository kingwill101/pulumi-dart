// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_node_config_containerd_config_registry_host_host/cluster_node_config_containerd_config_registry_host_host.dart';

class ClusterNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final List<ClusterNodeConfigContainerdConfigRegistryHostHost>? hosts;

  /// Defines the host name of the registry server.
  final String server;

  ClusterNodeConfigContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostsValue = hosts;
    if (hostsValue != null) {
      map['hosts'] = pulumi.Input.encodeList<
          ClusterNodeConfigContainerdConfigRegistryHostHost,
          Map<String, dynamic>>(hostsValue, (value) => value.toMap());
    }
    map['server'] = server;
    return map;
  }

  factory ClusterNodeConfigContainerdConfigRegistryHost.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigRegistryHost(
      hosts: map['hosts'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterNodeConfigContainerdConfigRegistryHostHost>(
              map['hosts'],
              (value) =>
                  ClusterNodeConfigContainerdConfigRegistryHostHost.fromMap(
                      (value as Map).cast<String, dynamic>())),
      server: map['server'] as String,
    );
  }
}
