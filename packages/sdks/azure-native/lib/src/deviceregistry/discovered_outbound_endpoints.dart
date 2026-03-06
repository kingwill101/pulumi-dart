// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_messaging_endpoint.dart';

/// Property bag contains the device's outbound endpoints
class DiscoveredOutboundEndpoints {
  /// Endpoints the device can connect to.
  final pulumi.Input<Map<String, DeviceMessagingEndpoint>> assigned;

  /// Creates a new [DiscoveredOutboundEndpoints].
  /// [assigned] Endpoints the device can connect to.
  const DiscoveredOutboundEndpoints({
    required this.assigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigned': pulumi.Input.mapInputValue<Map<String, DeviceMessagingEndpoint>, Map<String, Map<String, dynamic>>>(assigned, (value) => pulumi.Input.encodeMapValues<DeviceMessagingEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiscoveredOutboundEndpoints.fromMap(Map<String, dynamic> map) {
    return DiscoveredOutboundEndpoints(
      assigned: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeviceMessagingEndpoint>(map['assigned']!, (value) => DeviceMessagingEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

