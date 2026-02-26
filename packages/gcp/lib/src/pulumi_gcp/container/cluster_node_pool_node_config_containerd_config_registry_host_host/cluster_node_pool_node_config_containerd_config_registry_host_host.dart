// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_node_pool_node_config_containerd_config_registry_host_host_ca/cluster_node_pool_node_config_containerd_config_registry_host_host_ca.dart';
import '../cluster_node_pool_node_config_containerd_config_registry_host_host_client/cluster_node_pool_node_config_containerd_config_registry_host_host_client.dart';
import '../cluster_node_pool_node_config_containerd_config_registry_host_host_header/cluster_node_pool_node_config_containerd_config_registry_host_host_header.dart';

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final List<String>? capabilities;

  /// Configures the registry host certificate.
  final List<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa>? cas;

  /// Configures the registry host client certificate and key.
  final List<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient>?
      clients;

  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final String? dialTimeout;

  /// Configures the registry host headers.
  final List<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader>?
      headers;

  /// Configures the registry host/mirror.
  final String host;

  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final bool? overridePath;

  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost({
    this.capabilities,
    this.cas,
    this.clients,
    this.dialTimeout,
    this.headers,
    required this.host,
    this.overridePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capabilitiesValue = capabilities;
    if (capabilitiesValue != null) {
      map['capabilities'] = capabilitiesValue;
    }
    final casValue = cas;
    if (casValue != null) {
      map['cas'] = Input.encodeList<
          ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa,
          Map<String, dynamic>>(casValue, (value) => value.toMap());
    }
    final clientsValue = clients;
    if (clientsValue != null) {
      map['clients'] = Input.encodeList<
          ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient,
          Map<String, dynamic>>(clientsValue, (value) => value.toMap());
    }
    final dialTimeoutValue = dialTimeout;
    if (dialTimeoutValue != null) {
      map['dialTimeout'] = dialTimeoutValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<
          ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    map['host'] = host;
    final overridePathValue = overridePath;
    if (overridePathValue != null) {
      map['overridePath'] = overridePathValue;
    }
    return map;
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost(
      capabilities: map['capabilities'] == null
          ? null
          : (map['capabilities'] as List).cast<String>(),
      cas: map['cas'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa>(
              map['cas'],
              (value) =>
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa
                      .fromMap((value as Map).cast<String, dynamic>())),
      clients: map['clients'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient>(
              map['clients'],
              (value) =>
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClient
                      .fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout:
          map['dialTimeout'] == null ? null : map['dialTimeout'] as String,
      headers: map['headers'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader>(
              map['headers'],
              (value) =>
                  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath:
          map['overridePath'] == null ? null : map['overridePath'] as bool,
    );
  }
}
