// ignore_for_file: unused_element, unnecessary_cast

import 'access_config_response5.dart';

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponse4 {
  /// The access config for the TPU worker.
  final AccessConfigResponse5 accessConfig;

  /// The internal IP address of this network endpoint.
  final String ipAddress;

  /// The port of this network endpoint.
  final int port;

  NetworkEndpointResponse4({
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

  factory NetworkEndpointResponse4.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponse4(
      accessConfig: AccessConfigResponse5.fromMap(
          (map['accessConfig'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}
