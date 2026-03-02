// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_inbound_endpoints_response.dart';
import 'discovered_outbound_endpoints_response.dart';

/// Connection endpoint URL a device can use to connect to a service.
class DiscoveredMessagingEndpointsResponse {
  /// Set of endpoints to connect to the device.
  final pulumi.Input<Map<String, DiscoveredInboundEndpointsResponse>>? inbound;
  /// Set of endpoints a device can connect to.
  final pulumi.Input<DiscoveredOutboundEndpointsResponse>? outbound;

  /// Creates a new [DiscoveredMessagingEndpointsResponse].
  /// [inbound] Set of endpoints to connect to the device.
  /// [outbound] Set of endpoints a device can connect to.
  DiscoveredMessagingEndpointsResponse({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?pulumi.Input.mapOptionalInputValue<Map<String, DiscoveredInboundEndpointsResponse>, Map<String, Map<String, dynamic>>>(inbound, (value) => pulumi.Input.encodeMapValues<DiscoveredInboundEndpointsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outbound': ?pulumi.Input.mapOptionalInputValue<DiscoveredOutboundEndpointsResponse, Map<String, dynamic>>(outbound, (value) => value.toMap()),
    };
  }

  factory DiscoveredMessagingEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredMessagingEndpointsResponse(
      inbound: map['inbound'] == null ? null : (pulumi.Input.decodeMapValues<DiscoveredInboundEndpointsResponse>(map['inbound']!, (value) => DiscoveredInboundEndpointsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outbound: map['outbound'] == null ? null : (DiscoveredOutboundEndpointsResponse.fromMap((map['outbound']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

