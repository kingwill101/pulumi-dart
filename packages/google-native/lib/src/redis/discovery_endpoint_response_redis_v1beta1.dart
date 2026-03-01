// ignore_for_file: unused_element, unnecessary_cast

import 'psc_config_response_redis_v1beta1.dart';

/// Endpoints on each network, for Redis clients to connect to the cluster.
class DiscoveryEndpointResponseRedisV1beta1 {
  /// Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  final String address;

  /// The port number of the exposed Redis endpoint.
  final int port;

  /// Customer configuration for where the endpoint is created and accessed from.
  final PscConfigResponseRedisV1beta1 pscConfig;

  /// Creates a new [DiscoveryEndpointResponseRedisV1beta1].
  /// [address] Address of the exposed Redis endpoint used by clients to connect to the service. The address could be either IP or hostname.
  /// [port] The port number of the exposed Redis endpoint.
  /// [pscConfig] Customer configuration for where the endpoint is created and accessed from.
  DiscoveryEndpointResponseRedisV1beta1({
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

  factory DiscoveryEndpointResponseRedisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiscoveryEndpointResponseRedisV1beta1(
      address: map['address'] as String,
      port: map['port'] as int,
      pscConfig: PscConfigResponseRedisV1beta1.fromMap(
        (map['pscConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
