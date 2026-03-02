// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_inbound_endpoints.dart';
import 'discovered_outbound_endpoints.dart';

/// Connection endpoint URL a device can use to connect to a service.
class DiscoveredMessagingEndpoints {
  /// Set of endpoints to connect to the device.
  final pulumi.Input<Map<String, DiscoveredInboundEndpoints>>? inbound;
  /// Set of endpoints a device can connect to.
  final pulumi.Input<DiscoveredOutboundEndpoints>? outbound;

  /// Creates a new [DiscoveredMessagingEndpoints].
  /// [inbound] Set of endpoints to connect to the device.
  /// [outbound] Set of endpoints a device can connect to.
  DiscoveredMessagingEndpoints({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?pulumi.Input.mapOptionalInputValue<Map<String, DiscoveredInboundEndpoints>, Map<String, Map<String, dynamic>>>(inbound, (value) => pulumi.Input.encodeMapValues<DiscoveredInboundEndpoints, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outbound': ?pulumi.Input.mapOptionalInputValue<DiscoveredOutboundEndpoints, Map<String, dynamic>>(outbound, (value) => value.toMap()),
    };
  }

  factory DiscoveredMessagingEndpoints.fromMap(Map<String, dynamic> map) {
    return DiscoveredMessagingEndpoints(
      inbound: map['inbound'] == null ? null : (pulumi.Input.decodeMapValues<DiscoveredInboundEndpoints>(map['inbound']!, (value) => DiscoveredInboundEndpoints.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outbound: map['outbound'] == null ? null : (DiscoveredOutboundEndpoints.fromMap((map['outbound']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

