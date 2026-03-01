// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_messaging_endpoint.dart';

/// Property bag contains the device's outbound endpoints
class OutboundEndpoints {
  /// Endpoints the device can connect to.
  final Map<String, DeviceMessagingEndpoint> assigned;
  /// Set of most recently removed endpoints.
  final Map<String, DeviceMessagingEndpoint>? unassigned;

  /// Creates a new [OutboundEndpoints].
  /// [assigned] Endpoints the device can connect to.
  /// [unassigned] Set of most recently removed endpoints.
  OutboundEndpoints({
    required this.assigned,
    this.unassigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigned': pulumi.Input.encodeMapValues<DeviceMessagingEndpoint, Map<String, dynamic>>(assigned, (value) => value.toMap()),
      'unassigned': ?unassigned == null ? null : pulumi.Input.encodeMapValues<DeviceMessagingEndpoint, Map<String, dynamic>>(unassigned!, (value) => value.toMap()),
    };
  }

  factory OutboundEndpoints.fromMap(Map<String, dynamic> map) {
    return OutboundEndpoints(
      assigned: pulumi.Input.decodeMapValues<DeviceMessagingEndpoint>(map['assigned'], (value) => DeviceMessagingEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      unassigned: map['unassigned'] == null ? null : pulumi.Input.decodeMapValues<DeviceMessagingEndpoint>(map['unassigned'], (value) => DeviceMessagingEndpoint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

