// ignore_for_file: unused_element, unnecessary_cast

import 'access_config_response4.dart';

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponse3 {
  /// The access config for the TPU worker.
  final AccessConfigResponse4 accessConfig;

  /// The internal IP address of this network endpoint.
  final String ipAddress;

  /// The port of this network endpoint.
  final int port;

  NetworkEndpointResponse3({
    required this.accessConfig,
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessConfig'] = accessConfig.toMap();
    map['ipAddress'] = ipAddress;
    map['port'] = port;
    return map;
  }

  factory NetworkEndpointResponse3.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponse3(
      accessConfig: AccessConfigResponse4.fromMap(
          (map['accessConfig'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}
