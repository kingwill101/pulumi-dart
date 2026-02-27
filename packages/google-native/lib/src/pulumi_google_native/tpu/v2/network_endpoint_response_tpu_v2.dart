// ignore_for_file: unused_element, unnecessary_cast

import 'access_config_response_tpu_v2.dart';

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponseTpuV2 {
  /// The access config for the TPU worker.
  final AccessConfigResponseTpuV2 accessConfig;

  /// The internal IP address of this network endpoint.
  final String ipAddress;

  /// The port of this network endpoint.
  final int port;

  NetworkEndpointResponseTpuV2({
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

  factory NetworkEndpointResponseTpuV2.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponseTpuV2(
      accessConfig: AccessConfigResponseTpuV2.fromMap(
          (map['accessConfig'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}
