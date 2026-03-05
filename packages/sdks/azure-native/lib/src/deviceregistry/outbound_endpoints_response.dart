// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_messaging_endpoint_response.dart';

/// Property bag contains the device's outbound endpoints
class OutboundEndpointsResponse {
  /// Endpoints the device can connect to.
  final pulumi.Input<Map<String, DeviceMessagingEndpointResponse>> assigned;
  /// Set of most recently removed endpoints.
  final pulumi.Input<Map<String, DeviceMessagingEndpointResponse>>? unassigned;

  /// Creates a new [OutboundEndpointsResponse].
  /// [assigned] Endpoints the device can connect to.
  /// [unassigned] Set of most recently removed endpoints.
  OutboundEndpointsResponse({
    required this.assigned,
    this.unassigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigned': pulumi.Input.mapInputValue<Map<String, DeviceMessagingEndpointResponse>, Map<String, Map<String, dynamic>>>(assigned, (value) => pulumi.Input.encodeMapValues<DeviceMessagingEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unassigned': ?pulumi.Input.mapOptionalInputValue<Map<String, DeviceMessagingEndpointResponse>, Map<String, Map<String, dynamic>>>(unassigned, (value) => pulumi.Input.encodeMapValues<DeviceMessagingEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OutboundEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return OutboundEndpointsResponse(
      assigned: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeviceMessagingEndpointResponse>(map['assigned']!, (value) => DeviceMessagingEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))),
      unassigned: (() { final guardedValue = map['unassigned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeviceMessagingEndpointResponse>(guardedValue, (value) => DeviceMessagingEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

