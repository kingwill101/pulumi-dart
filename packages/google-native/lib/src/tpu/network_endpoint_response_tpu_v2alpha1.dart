// ignore_for_file: unused_element, unnecessary_cast

import 'access_config_response_tpu_v2alpha1.dart';

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponseTpuV2alpha1 {
  /// The access config for the TPU worker.
  final AccessConfigResponseTpuV2alpha1 accessConfig;

  /// The internal IP address of this network endpoint.
  final String ipAddress;

  /// The port of this network endpoint.
  final int port;

  /// Creates a new [NetworkEndpointResponseTpuV2alpha1].
  /// [accessConfig] The access config for the TPU worker.
  /// [ipAddress] The internal IP address of this network endpoint.
  /// [port] The port of this network endpoint.
  NetworkEndpointResponseTpuV2alpha1({
    required this.accessConfig,
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': accessConfig.toMap(),
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory NetworkEndpointResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponseTpuV2alpha1(
      accessConfig: AccessConfigResponseTpuV2alpha1.fromMap(
        (map['accessConfig'] as Map).cast<String, dynamic>(),
      ),
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}
