// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_discovery_endpoint_psc_config.dart';

class ClusterDiscoveryEndpoint {
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final String? address;
  /// Output only. The port number of the exposed Redis endpoint.
  final int? port;
  /// Output only. Customer configuration for where the endpoint
  /// is created and accessed from.
  /// Structure is documented below.
  final ClusterDiscoveryEndpointPscConfig? pscConfig;

  /// Creates a new [ClusterDiscoveryEndpoint].
  /// [address] Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  /// [port] Output only. The port number of the exposed Redis endpoint.
  /// [pscConfig] Output only. Customer configuration for where the endpoint
  ClusterDiscoveryEndpoint({
    this.address,
    this.port,
    this.pscConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
      'pscConfig': ?pscConfig == null ? null : pscConfig!.toMap(),
    };
  }

  factory ClusterDiscoveryEndpoint.fromMap(Map<String, dynamic> map) {
    return ClusterDiscoveryEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      pscConfig: map['pscConfig'] == null ? null : ClusterDiscoveryEndpointPscConfig.fromMap((map['pscConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

