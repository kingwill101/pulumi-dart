// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_node_config_containerd_config_registry_host_host_ca/get_cluster_node_config_containerd_config_registry_host_host_ca.dart';
import '../get_cluster_node_config_containerd_config_registry_host_host_client/get_cluster_node_config_containerd_config_registry_host_host_client.dart';
import '../get_cluster_node_config_containerd_config_registry_host_host_header/get_cluster_node_config_containerd_config_registry_host_host_header.dart';

class GetClusterNodeConfigContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final List<String> capabilities;

  /// Configures the registry host certificate.
  final List<GetClusterNodeConfigContainerdConfigRegistryHostHostCa> cas;

  /// Configures the registry host client certificate and key.
  final List<GetClusterNodeConfigContainerdConfigRegistryHostHostClient>
      clients;

  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final String dialTimeout;

  /// Configures the registry host headers.
  final List<GetClusterNodeConfigContainerdConfigRegistryHostHostHeader>
      headers;

  /// Configures the registry host/mirror.
  final String host;

  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final bool overridePath;

  GetClusterNodeConfigContainerdConfigRegistryHostHost({
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
        GetClusterNodeConfigContainerdConfigRegistryHostHostCa,
        Map<String, dynamic>>(cas, (value) => value.toMap());
    map['clients'] = pulumi.Input.encodeList<
        GetClusterNodeConfigContainerdConfigRegistryHostHostClient,
        Map<String, dynamic>>(clients, (value) => value.toMap());
    map['dialTimeout'] = dialTimeout;
    map['headers'] = pulumi.Input.encodeList<
        GetClusterNodeConfigContainerdConfigRegistryHostHostHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    map['host'] = host;
    map['overridePath'] = overridePath;
    return map;
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHostHost.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHostHost(
      capabilities: (map['capabilities'] as List).cast<String>(),
      cas: pulumi.Input.decodeList<
              GetClusterNodeConfigContainerdConfigRegistryHostHostCa>(
          map['cas'],
          (value) =>
              GetClusterNodeConfigContainerdConfigRegistryHostHostCa.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clients: pulumi.Input.decodeList<
              GetClusterNodeConfigContainerdConfigRegistryHostHostClient>(
          map['clients'],
          (value) => GetClusterNodeConfigContainerdConfigRegistryHostHostClient
              .fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout: map['dialTimeout'] as String,
      headers: pulumi.Input.decodeList<
              GetClusterNodeConfigContainerdConfigRegistryHostHostHeader>(
          map['headers'],
          (value) => GetClusterNodeConfigContainerdConfigRegistryHostHostHeader
              .fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath: map['overridePath'] as bool,
    );
  }
}
