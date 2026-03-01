// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_messaging_endpoint_response.dart';

/// Property bag contains the device's outbound endpoints
class OutboundEndpointsResponse {
  /// Endpoints the device can connect to.
  final Map<String, DeviceMessagingEndpointResponse> assigned;
  /// Set of most recently removed endpoints.
  final Map<String, DeviceMessagingEndpointResponse>? unassigned;

  /// Creates a new [OutboundEndpointsResponse].
  /// [assigned] Endpoints the device can connect to.
  /// [unassigned] Set of most recently removed endpoints.
  OutboundEndpointsResponse({
    required this.assigned,
    this.unassigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigned': pulumi.Input.encodeMapValues<DeviceMessagingEndpointResponse, Map<String, dynamic>>(assigned, (value) => value.toMap()),
      'unassigned': ?unassigned == null ? null : pulumi.Input.encodeMapValues<DeviceMessagingEndpointResponse, Map<String, dynamic>>(unassigned!, (value) => value.toMap()),
    };
  }

  factory OutboundEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return OutboundEndpointsResponse(
      assigned: pulumi.Input.decodeMapValues<DeviceMessagingEndpointResponse>(map['assigned'], (value) => DeviceMessagingEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      unassigned: map['unassigned'] == null ? null : pulumi.Input.decodeMapValues<DeviceMessagingEndpointResponse>(map['unassigned'], (value) => DeviceMessagingEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

