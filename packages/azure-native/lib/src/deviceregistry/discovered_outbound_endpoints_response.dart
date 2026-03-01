// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_messaging_endpoint_response.dart';

/// Property bag contains the device's outbound endpoints
class DiscoveredOutboundEndpointsResponse {
  /// Endpoints the device can connect to.
  final Map<String, DeviceMessagingEndpointResponse> assigned;

  /// Creates a new [DiscoveredOutboundEndpointsResponse].
  /// [assigned] Endpoints the device can connect to.
  DiscoveredOutboundEndpointsResponse({
    required this.assigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigned': pulumi.Input.encodeMapValues<DeviceMessagingEndpointResponse, Map<String, dynamic>>(assigned, (value) => value.toMap()),
    };
  }

  factory DiscoveredOutboundEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredOutboundEndpointsResponse(
      assigned: pulumi.Input.decodeMapValues<DeviceMessagingEndpointResponse>(map['assigned'], (value) => DeviceMessagingEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

