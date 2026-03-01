// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_containerd_config_registry_host_host_ca.dart';
import 'node_pool_node_config_containerd_config_registry_host_host_client.dart';
import 'node_pool_node_config_containerd_config_registry_host_host_header.dart';

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

  /// Creates a new [NodePoolNodeConfigContainerdConfigRegistryHostHost].
  /// [capabilities] Represent the capabilities of the registry host, specifying what operations a host is capable of performing.
  /// [cas] Configures the registry host certificate.
  /// [clients] Configures the registry host client certificate and key.
  /// [dialTimeout] Specifies the maximum duration allowed for a connection attempt to complete.
  /// [headers] Configures the registry host headers.
  /// [host] Configures the registry host/mirror.
  /// [overridePath] Indicate the host's API root endpoint is defined in the URL path rather than by the API specification.
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
    return <String, dynamic>{
      'capabilities': ?capabilities,
      'cas': ?cas == null ? null : pulumi.Input.encodeList<NodePoolNodeConfigContainerdConfigRegistryHostHostCa, Map<String, dynamic>>(cas!, (value) => value.toMap()),
      'clients': ?clients == null ? null : pulumi.Input.encodeList<NodePoolNodeConfigContainerdConfigRegistryHostHostClient, Map<String, dynamic>>(clients!, (value) => value.toMap()),
      'dialTimeout': ?dialTimeout,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<NodePoolNodeConfigContainerdConfigRegistryHostHostHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'host': host,
      'overridePath': ?overridePath,
    };
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigRegistryHostHost(
      capabilities: map['capabilities'] == null ? null : (map['capabilities'] as List).cast<String>(),
      cas: map['cas'] == null ? null : pulumi.Input.decodeList<NodePoolNodeConfigContainerdConfigRegistryHostHostCa>(map['cas'], (value) => NodePoolNodeConfigContainerdConfigRegistryHostHostCa.fromMap((value as Map).cast<String, dynamic>())),
      clients: map['clients'] == null ? null : pulumi.Input.decodeList<NodePoolNodeConfigContainerdConfigRegistryHostHostClient>(map['clients'], (value) => NodePoolNodeConfigContainerdConfigRegistryHostHostClient.fromMap((value as Map).cast<String, dynamic>())),
      dialTimeout: map['dialTimeout'] == null ? null : map['dialTimeout'] as String,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<NodePoolNodeConfigContainerdConfigRegistryHostHostHeader>(map['headers'], (value) => NodePoolNodeConfigContainerdConfigRegistryHostHostHeader.fromMap((value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      overridePath: map['overridePath'] == null ? null : map['overridePath'] as bool,
    );
  }
}

