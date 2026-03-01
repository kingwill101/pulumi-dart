// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'discovered_inbound_endpoints.dart';
import 'discovered_outbound_endpoints.dart';

/// Connection endpoint URL a device can use to connect to a service.
class DiscoveredMessagingEndpoints {
  /// Set of endpoints to connect to the device.
  final Map<String, DiscoveredInboundEndpoints>? inbound;
  /// Set of endpoints a device can connect to.
  final DiscoveredOutboundEndpoints? outbound;

  /// Creates a new [DiscoveredMessagingEndpoints].
  /// [inbound] Set of endpoints to connect to the device.
  /// [outbound] Set of endpoints a device can connect to.
  DiscoveredMessagingEndpoints({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?inbound == null ? null : pulumi.Input.encodeMapValues<DiscoveredInboundEndpoints, Map<String, dynamic>>(inbound!, (value) => value.toMap()),
      'outbound': ?outbound == null ? null : outbound!.toMap(),
    };
  }

  factory DiscoveredMessagingEndpoints.fromMap(Map<String, dynamic> map) {
    return DiscoveredMessagingEndpoints(
      inbound: map['inbound'] == null ? null : pulumi.Input.decodeMapValues<DiscoveredInboundEndpoints>(map['inbound'], (value) => DiscoveredInboundEndpoints.fromMap((value as Map).cast<String, dynamic>())),
      outbound: map['outbound'] == null ? null : DiscoveredOutboundEndpoints.fromMap((map['outbound'] as Map).cast<String, dynamic>()),
    );
  }
}

