// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_inbound_endpoints_response.dart';
import 'discovered_outbound_endpoints_response.dart';

/// Connection endpoint URL a device can use to connect to a service.
class DiscoveredMessagingEndpointsResponse {
  /// Set of endpoints to connect to the device.
  final Map<String, DiscoveredInboundEndpointsResponse>? inbound;
  /// Set of endpoints a device can connect to.
  final DiscoveredOutboundEndpointsResponse? outbound;

  /// Creates a new [DiscoveredMessagingEndpointsResponse].
  /// [inbound] Set of endpoints to connect to the device.
  /// [outbound] Set of endpoints a device can connect to.
  DiscoveredMessagingEndpointsResponse({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?inbound == null ? null : pulumi.Input.encodeMapValues<DiscoveredInboundEndpointsResponse, Map<String, dynamic>>(inbound!, (value) => value.toMap()),
      'outbound': ?outbound == null ? null : outbound!.toMap(),
    };
  }

  factory DiscoveredMessagingEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredMessagingEndpointsResponse(
      inbound: map['inbound'] == null ? null : pulumi.Input.decodeMapValues<DiscoveredInboundEndpointsResponse>(map['inbound'], (value) => DiscoveredInboundEndpointsResponse.fromMap((value as Map).cast<String, dynamic>())),
      outbound: map['outbound'] == null ? null : DiscoveredOutboundEndpointsResponse.fromMap((map['outbound'] as Map).cast<String, dynamic>()),
    );
  }
}

