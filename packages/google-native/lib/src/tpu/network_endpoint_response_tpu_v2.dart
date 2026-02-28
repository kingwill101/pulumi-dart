// ignore_for_file: unused_element, unnecessary_cast

import 'access_config_response.dart';

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponseTpuV2 {
  /// The access config for the TPU worker.
  final AccessConfigResponse accessConfig;
  /// The internal IP address of this network endpoint.
  final String ipAddress;
  /// The port of this network endpoint.
  final int port;

  /// Creates a new [NetworkEndpointResponseTpuV2].
  /// [accessConfig] The access config for the TPU worker.
  /// [ipAddress] The internal IP address of this network endpoint.
  /// [port] The port of this network endpoint.
  NetworkEndpointResponseTpuV2({
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

  factory NetworkEndpointResponseTpuV2.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponseTpuV2(
      accessConfig: AccessConfigResponse.fromMap((map['accessConfig'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as int,
    );
  }
}

