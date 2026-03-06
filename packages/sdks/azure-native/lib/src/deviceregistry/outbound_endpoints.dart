// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_messaging_endpoint.dart';

/// Property bag contains the device's outbound endpoints
class OutboundEndpoints {
  /// Endpoints the device can connect to.
  final pulumi.Input<Map<String, DeviceMessagingEndpoint>> assigned;
  /// Set of most recently removed endpoints.
  final pulumi.Input<Map<String, DeviceMessagingEndpoint>>? unassigned;

  /// Creates a new [OutboundEndpoints].
  /// [assigned] Endpoints the device can connect to.
  /// [unassigned] Set of most recently removed endpoints.
  const OutboundEndpoints({
    required this.assigned,
    this.unassigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigned': pulumi.Input.mapInputValue<Map<String, DeviceMessagingEndpoint>, Map<String, Map<String, dynamic>>>(assigned, (value) => pulumi.Input.encodeMapValues<DeviceMessagingEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unassigned': ?pulumi.Input.mapOptionalInputValue<Map<String, DeviceMessagingEndpoint>, Map<String, Map<String, dynamic>>>(unassigned, (value) => pulumi.Input.encodeMapValues<DeviceMessagingEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OutboundEndpoints.fromMap(Map<String, dynamic> map) {
    return OutboundEndpoints(
      assigned: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeviceMessagingEndpoint>(map['assigned']!, (value) => DeviceMessagingEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      unassigned: (() { final guardedValue = map['unassigned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeviceMessagingEndpoint>(guardedValue, (value) => DeviceMessagingEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

