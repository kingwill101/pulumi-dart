// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_status_endpoints_response.dart';
import 'status_config_response.dart';

/// Defines the device status properties.
class DeviceStatusResponse {
  /// Defines the device status config properties.
  final pulumi.Input<StatusConfigResponse> config;
  /// Defines the device status for inbound/outbound endpoints.
  final pulumi.Input<DeviceStatusEndpointsResponse> endpoints;

  /// Creates a new [DeviceStatusResponse].
  /// [config] Defines the device status config properties.
  /// [endpoints] Defines the device status for inbound/outbound endpoints.
  DeviceStatusResponse({
    required this.config,
    required this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<StatusConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'endpoints': pulumi.Input.mapInputValue<DeviceStatusEndpointsResponse, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
    };
  }

  factory DeviceStatusResponse.fromMap(Map<String, dynamic> map) {
    return DeviceStatusResponse(
      config: pulumi.Input.fromValue(StatusConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
      endpoints: pulumi.Input.fromValue(DeviceStatusEndpointsResponse.fromMap((map['endpoints']! as Map).cast<String, dynamic>())),
    );
  }
}

