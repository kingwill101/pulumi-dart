// ignore_for_file: unused_element, unnecessary_cast

import 'device_status_endpoints_response.dart';
import 'status_config_response.dart';

/// Defines the device status properties.
class DeviceStatusResponse {
  /// Defines the device status config properties.
  final StatusConfigResponse config;
  /// Defines the device status for inbound/outbound endpoints.
  final DeviceStatusEndpointsResponse endpoints;

  /// Creates a new [DeviceStatusResponse].
  /// [config] Defines the device status config properties.
  /// [endpoints] Defines the device status for inbound/outbound endpoints.
  DeviceStatusResponse({
    required this.config,
    required this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config.toMap(),
      'endpoints': endpoints.toMap(),
    };
  }

  factory DeviceStatusResponse.fromMap(Map<String, dynamic> map) {
    return DeviceStatusResponse(
      config: StatusConfigResponse.fromMap((map['config'] as Map).cast<String, dynamic>()),
      endpoints: DeviceStatusEndpointsResponse.fromMap((map['endpoints'] as Map).cast<String, dynamic>()),
    );
  }
}

