// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_ca/cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_ca.dart';
import '../cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_client/cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_client.dart';
import '../cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_header/cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host_header.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost {
  /// Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  final List<String>? capabilities;

  /// Configures the registry host certificate.
  final List<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa>?
      cas;

  /// Configures the registry host client certificate and key.
  final List<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient>?
      clients;

  /// Specifies the maximum duration allowed for a connection attempt to complete.
  final String? dialTimeout;

  /// Configures the registry host headers.
  final List<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader>?
      headers;

  /// Configures the registry host/mirror.
  final String host;

  /// Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
  final bool? overridePath;

  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost({
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
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa,
          Map<String, dynamic>>(casValue, (value) => value.toMap());
    }
    final clientsValue = clients;
    if (clientsValue != null) {
      map['clients'] = Input.encodeList<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient,
          Map<String, dynamic>>(clientsValue, (value) => value.toMap());
    }
    final dialTimeoutValue = dialTimeout;
    if (dialTimeoutValue != null) {
      map['dialTimeout'] = dialTimeoutValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    map['host'] = host;
    final overridePathValue = overridePath;
    if (overridePathValue != null) {
      map['overridePath'] = overridePathValue;
    }
    return map;
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost(
      capabilities: map['capabilities'] == null
          ? null
          : (map['capabilities'] as List).cast<String>(),
      cas: map['cas'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa>(
              map['cas'],
              (value) =>
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa
                      .fromMap((value as Map).cast<String, dynamic>())),
      clients: map['clients'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient>(
              map['clients'],
              (value) =>
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClient
                      .fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout:
          map['dialTimeout'] == null ? null : map['dialTimeout'] as String,
      headers: map['headers'] == null
          ? null
          : Input.decodeList<
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader>(
              map['headers'],
              (value) =>
                  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath:
          map['overridePath'] == null ? null : map['overridePath'] as bool,
    );
  }
}
