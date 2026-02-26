// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_config_containerd_config_registry_host_host/get_cluster_node_config_containerd_config_registry_host_host.dart';

class GetClusterNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final List<GetClusterNodeConfigContainerdConfigRegistryHostHost> hosts;

  /// Defines the host name of the registry server.
  final String server;

  GetClusterNodeConfigContainerdConfigRegistryHost({
    required this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hosts'] = Input.encodeList<
        GetClusterNodeConfigContainerdConfigRegistryHostHost,
        Map<String, dynamic>>(hosts, (value) => value.toMap());
    map['server'] = server;
    return map;
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHost.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHost(
      hosts: Input.decodeList<
              GetClusterNodeConfigContainerdConfigRegistryHostHost>(
          map['hosts'],
          (value) =>
              GetClusterNodeConfigContainerdConfigRegistryHostHost.fromMap(
                  (value as Map).cast<String, dynamic>())),
      server: map['server'] as String,
    );
  }
}
