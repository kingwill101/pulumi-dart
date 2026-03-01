// ignore_for_file: unused_element, unnecessary_cast

import 'psc_config_response.dart';

/// Endpoints on each network, for Redis clients to connect to the cluster.
class DiscoveryEndpointResponse {
  /// Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  final String address;

  /// The port number of the exposed Redis endpoint.
  final int port;

  /// Customer configuration for where the endpoint is created and accessed from.
  final PscConfigResponse pscConfig;

  /// Creates a new [DiscoveryEndpointResponse].
  /// [address] Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  /// [port] The port number of the exposed Redis endpoint.
  /// [pscConfig] Customer configuration for where the endpoint is created and accessed from.
  DiscoveryEndpointResponse({
    required this.address,
    required this.port,
    required this.pscConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
      'pscConfig': pscConfig.toMap(),
    };
  }

  factory DiscoveryEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveryEndpointResponse(
      address: map['address'] as String,
      port: map['port'] as int,
      pscConfig: PscConfigResponse.fromMap(
        (map['pscConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
