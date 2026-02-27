// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_node_config_containerd_config_registry_host_host_ca/cluster_node_config_containerd_config_registry_host_host_ca.dart';
import '../cluster_node_config_containerd_config_registry_host_host_client/cluster_node_config_containerd_config_registry_host_host_client.dart';
import '../cluster_node_config_containerd_config_registry_host_host_header/cluster_node_config_containerd_config_registry_host_host_header.dart';

class ClusterNodeConfigContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final List<String>? capabilities;

  /// Configures the registry host certificate.
  final List<ClusterNodeConfigContainerdConfigRegistryHostHostCa>? cas;

  /// Configures the registry host client certificate and key.
  final List<ClusterNodeConfigContainerdConfigRegistryHostHostClient>? clients;

  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final String? dialTimeout;

  /// Configures the registry host headers.
  final List<ClusterNodeConfigContainerdConfigRegistryHostHostHeader>? headers;

  /// Configures the registry host/mirror.
  final String host;

  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final bool? overridePath;

  ClusterNodeConfigContainerdConfigRegistryHostHost({
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
          ClusterNodeConfigContainerdConfigRegistryHostHostCa,
          Map<String, dynamic>>(casValue, (value) => value.toMap());
    }
    final clientsValue = clients;
    if (clientsValue != null) {
      map['clients'] = pulumi.Input.encodeList<
          ClusterNodeConfigContainerdConfigRegistryHostHostClient,
          Map<String, dynamic>>(clientsValue, (value) => value.toMap());
    }
    final dialTimeoutValue = dialTimeout;
    if (dialTimeoutValue != null) {
      map['dialTimeout'] = dialTimeoutValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = pulumi.Input.encodeList<
          ClusterNodeConfigContainerdConfigRegistryHostHostHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    map['host'] = host;
    final overridePathValue = overridePath;
    if (overridePathValue != null) {
      map['overridePath'] = overridePathValue;
    }
    return map;
  }

  factory ClusterNodeConfigContainerdConfigRegistryHostHost.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigRegistryHostHost(
      capabilities: map['capabilities'] == null
          ? null
          : (map['capabilities'] as List).cast<String>(),
      cas: map['cas'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterNodeConfigContainerdConfigRegistryHostHostCa>(
              map['cas'],
              (value) =>
                  ClusterNodeConfigContainerdConfigRegistryHostHostCa.fromMap(
                      (value as Map).cast<String, dynamic>())),
      clients: map['clients'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterNodeConfigContainerdConfigRegistryHostHostClient>(
              map['clients'],
              (value) => ClusterNodeConfigContainerdConfigRegistryHostHostClient
                  .fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout:
          map['dialTimeout'] == null ? null : map['dialTimeout'] as String,
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<
                  ClusterNodeConfigContainerdConfigRegistryHostHostHeader>(
              map['headers'],
              (value) => ClusterNodeConfigContainerdConfigRegistryHostHostHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath:
          map['overridePath'] == null ? null : map['overridePath'] as bool,
    );
  }
}
