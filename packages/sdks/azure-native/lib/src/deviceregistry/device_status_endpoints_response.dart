// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_status_endpoint_response.dart';

/// Defines the device status for inbound/outbound endpoints.
class DeviceStatusEndpointsResponse {
  /// KeyValue pair representing status of inbound endpoints.
  final Map<String, DeviceStatusEndpointResponse> inbound;

  /// Creates a new [DeviceStatusEndpointsResponse].
  /// [inbound] KeyValue pair representing status of inbound endpoints.
  DeviceStatusEndpointsResponse({
    required this.inbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': pulumi.Input.encodeMapValues<DeviceStatusEndpointResponse, Map<String, dynamic>>(inbound, (value) => value.toMap()),
    };
  }

  factory DeviceStatusEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return DeviceStatusEndpointsResponse(
      inbound: pulumi.Input.decodeMapValues<DeviceStatusEndpointResponse>(map['inbound'], (value) => DeviceStatusEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

