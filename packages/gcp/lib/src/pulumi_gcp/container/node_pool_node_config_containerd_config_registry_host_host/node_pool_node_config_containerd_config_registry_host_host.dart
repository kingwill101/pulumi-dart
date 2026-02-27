// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_pool_node_config_containerd_config_registry_host_host_ca/node_pool_node_config_containerd_config_registry_host_host_ca.dart';
import '../node_pool_node_config_containerd_config_registry_host_host_client/node_pool_node_config_containerd_config_registry_host_host_client.dart';
import '../node_pool_node_config_containerd_config_registry_host_host_header/node_pool_node_config_containerd_config_registry_host_host_header.dart';

class NodePoolNodeConfigContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final List<String>? capabilities;

  /// Configures the registry host certificate.
  final List<NodePoolNodeConfigContainerdConfigRegistryHostHostCa>? cas;

  /// Configures the registry host client certificate and key.
  final List<NodePoolNodeConfigContainerdConfigRegistryHostHostClient>? clients;

  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final String? dialTimeout;

  /// Configures the registry host headers.
  final List<NodePoolNodeConfigContainerdConfigRegistryHostHostHeader>? headers;

  /// Configures the registry host/mirror.
  final String host;

  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final bool? overridePath;

  NodePoolNodeConfigContainerdConfigRegistryHostHost({
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
      map['cas'] = pulumi.Input.encodeList<
          NodePoolNodeConfigContainerdConfigRegistryHostHostCa,
          Map<String, dynamic>>(casValue, (value) => value.toMap());
    }
    final clientsValue = clients;
    if (clientsValue != null) {
      map['clients'] = pulumi.Input.encodeList<
          NodePoolNodeConfigContainerdConfigRegistryHostHostClient,
          Map<String, dynamic>>(clientsValue, (value) => value.toMap());
    }
    final dialTimeoutValue = dialTimeout;
    if (dialTimeoutValue != null) {
      map['dialTimeout'] = dialTimeoutValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<
          NodePoolNodeConfigContainerdConfigRegistryHostHostHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    map['host'] = host;
    final overridePathValue = overridePath;
    if (overridePathValue != null) {
      map['overridePath'] = overridePathValue;
    }
    return map;
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigRegistryHostHost(
      capabilities: map['capabilities'] == null
          ? null
          : (map['capabilities'] as List).cast<String>(),
      cas: map['cas'] == null
          ? null
          : pulumi.Input.decodeList<
                  NodePoolNodeConfigContainerdConfigRegistryHostHostCa>(
              map['cas'],
              (value) =>
                  NodePoolNodeConfigContainerdConfigRegistryHostHostCa.fromMap(
                      (value as Map).cast<String, dynamic>())),
      clients: map['clients'] == null
          ? null
          : pulumi.Input.decodeList<
                  NodePoolNodeConfigContainerdConfigRegistryHostHostClient>(
              map['clients'],
              (value) =>
                  NodePoolNodeConfigContainerdConfigRegistryHostHostClient
                      .fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout:
          map['dialTimeout'] == null ? null : map['dialTimeout'] as String,
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<
                  NodePoolNodeConfigContainerdConfigRegistryHostHostHeader>(
              map['headers'],
              (value) =>
                  NodePoolNodeConfigContainerdConfigRegistryHostHostHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath:
          map['overridePath'] == null ? null : map['overridePath'] as bool,
    );
  }
}
