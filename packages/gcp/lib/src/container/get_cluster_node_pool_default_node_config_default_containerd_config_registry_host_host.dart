// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_ca.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_client.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host_header.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final List<String> capabilities;

  /// Configures the registry host certificate.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa>
      cas;

  /// Configures the registry host client certificate and key.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient>
      clients;

  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final String dialTimeout;

  /// Configures the registry host headers.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader>
      headers;

  /// Configures the registry host/mirror.
  final String host;

  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final bool overridePath;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost].
  /// [capabilities] Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  /// [cas] Configures the registry host certificate.
  /// [clients] Configures the registry host client certificate and key.
  /// [dialTimeout] Specifies the maximum duration allowed for a connection attempt to complete.
  /// [headers] Configures the registry host headers.
  /// [host] Configures the registry host/mirror.
  /// [overridePath] Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost({
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
    map['cas'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa,
        Map<String, dynamic>>(cas, (value) => value.toMap());
    map['clients'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient,
        Map<String, dynamic>>(clients, (value) => value.toMap());
    map['dialTimeout'] = dialTimeout;
    map['headers'] = pulumi.Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    map['host'] = host;
    map['overridePath'] = overridePath;
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost(
      capabilities: (map['capabilities'] as List).cast<String>(),
      cas: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa>(
          map['cas'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa
                  .fromMap((value as Map).cast<String, dynamic>())),
      clients: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient>(
          map['clients'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClient
                  .fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout: map['dialTimeout'] as String,
      headers: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader>(
          map['headers'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath: map['overridePath'] as bool,
    );
  }
}
