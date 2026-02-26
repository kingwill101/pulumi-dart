// ignore_for_file: unused_element, unnecessary_cast

import 'psc_config_response4.dart';

/// Endpoints on each network, for Redis clients to connect to the cluster.
class DiscoveryEndpointResponse2 {
  /// Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  final String address;

  /// The port number of the exposed Redis endpoint.
  final int port;

  /// Customer configuration for where the endpoint is created and accessed from.
  final PscConfigResponse4 pscConfig;

  DiscoveryEndpointResponse2({
    required this.address,
    required this.port,
    required this.pscConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['port'] = port;
    map['pscConfig'] = pscConfig.toMap();
    return map;
  }

  factory DiscoveryEndpointResponse2.fromMap(Map<String, dynamic> map) {
    return DiscoveryEndpointResponse2(
      address: map['address'] as String,
      port: map['port'] as int,
      pscConfig: PscConfigResponse4.fromMap(
          (map['pscConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
