// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_endpoints_response.dart';
import 'outbound_endpoints_response.dart';

/// Connection endpoint URL a device can use to connect to a service.
class MessagingEndpointsResponse {
  /// Set of endpoints to connect to the device.
  final pulumi.Input<Map<String, InboundEndpointsResponse>>? inbound;
  /// Set of endpoints a device can connect to.
  final pulumi.Input<OutboundEndpointsResponse>? outbound;

  /// Creates a new [MessagingEndpointsResponse].
  /// [inbound] Set of endpoints to connect to the device.
  /// [outbound] Set of endpoints a device can connect to.
  const MessagingEndpointsResponse({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?pulumi.Input.mapOptionalInputValue<Map<String, InboundEndpointsResponse>, Map<String, Map<String, dynamic>>>(inbound, (value) => pulumi.Input.encodeMapValues<InboundEndpointsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outbound': ?pulumi.Input.mapOptionalInputValue<OutboundEndpointsResponse, Map<String, dynamic>>(outbound, (value) => value.toMap()),
    };
  }

  factory MessagingEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return MessagingEndpointsResponse(
      inbound: (() { final guardedValue = map['inbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<InboundEndpointsResponse>(guardedValue, (value) => InboundEndpointsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outbound: (() { final guardedValue = map['outbound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OutboundEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
