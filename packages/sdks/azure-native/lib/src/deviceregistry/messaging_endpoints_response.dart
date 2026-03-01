// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_endpoints_response.dart';
import 'outbound_endpoints_response.dart';

/// Connection endpoint URL a device can use to connect to a service.
class MessagingEndpointsResponse {
  /// Set of endpoints to connect to the device.
  final Map<String, InboundEndpointsResponse>? inbound;
  /// Set of endpoints a device can connect to.
  final OutboundEndpointsResponse? outbound;

  /// Creates a new [MessagingEndpointsResponse].
  /// [inbound] Set of endpoints to connect to the device.
  /// [outbound] Set of endpoints a device can connect to.
  MessagingEndpointsResponse({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?inbound == null ? null : pulumi.Input.encodeMapValues<InboundEndpointsResponse, Map<String, dynamic>>(inbound!, (value) => value.toMap()),
      'outbound': ?outbound == null ? null : outbound!.toMap(),
    };
  }

  factory MessagingEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return MessagingEndpointsResponse(
      inbound: map['inbound'] == null ? null : pulumi.Input.decodeMapValues<InboundEndpointsResponse>(map['inbound'], (value) => InboundEndpointsResponse.fromMap((value as Map).cast<String, dynamic>())),
      outbound: map['outbound'] == null ? null : OutboundEndpointsResponse.fromMap((map['outbound'] as Map).cast<String, dynamic>()),
    );
  }
}

