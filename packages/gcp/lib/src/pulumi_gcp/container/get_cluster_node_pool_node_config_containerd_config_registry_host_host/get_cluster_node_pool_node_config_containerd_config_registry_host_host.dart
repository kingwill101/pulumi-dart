// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_pool_node_config_containerd_config_registry_host_host_ca/get_cluster_node_pool_node_config_containerd_config_registry_host_host_ca.dart';
import '../get_cluster_node_pool_node_config_containerd_config_registry_host_host_client/get_cluster_node_pool_node_config_containerd_config_registry_host_host_client.dart';
import '../get_cluster_node_pool_node_config_containerd_config_registry_host_host_header/get_cluster_node_pool_node_config_containerd_config_registry_host_host_header.dart';

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final List<String> capabilities;

  /// Configures the registry host certificate.
  final List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa>
      cas;

  /// Configures the registry host client certificate and key.
  final List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient>
      clients;

  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final String dialTimeout;

  /// Configures the registry host headers.
  final List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader>
      headers;

  /// Configures the registry host/mirror.
  final String host;

  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final bool overridePath;

  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost({
    required this.capabilities,
    required this.cas,
    required this.clients,
    required this.dialTimeout,
    required this.headers,
    required this.host,
    required this.overridePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capabilities'] = capabilities;
    map['cas'] = Input.encodeList<
        GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa,
        Map<String, dynamic>>(cas, (value) => value.toMap());
    map['clients'] = Input.encodeList<
        GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient,
        Map<String, dynamic>>(clients, (value) => value.toMap());
    map['dialTimeout'] = dialTimeout;
    map['headers'] = Input.encodeList<
        GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    map['host'] = host;
    map['overridePath'] = overridePath;
    return map;
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHost(
      capabilities: (map['capabilities'] as List).cast<String>(),
      cas: Input.decodeList<
              GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa>(
          map['cas'],
          (value) =>
              GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa
                  .fromMap((value as Map).cast<String, dynamic>())),
      clients: Input.decodeList<
              GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient>(
          map['clients'],
          (value) =>
              GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient
                  .fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout: map['dialTimeout'] as String,
      headers: Input.decodeList<
              GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader>(
          map['headers'],
          (value) =>
              GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath: map['overridePath'] as bool,
    );
  }
}
