// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_endpoints.dart';
import 'outbound_endpoints.dart';

/// Connection endpoint URL a device can use to connect to a service.
class MessagingEndpoints {
  /// Set of endpoints to connect to the device.
  final Map<String, InboundEndpoints>? inbound;
  /// Set of endpoints a device can connect to.
  final OutboundEndpoints? outbound;

  /// Creates a new [MessagingEndpoints].
  /// [inbound] Set of endpoints to connect to the device.
  /// [outbound] Set of endpoints a device can connect to.
  MessagingEndpoints({
    this.inbound,
    this.outbound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inbound': ?inbound == null ? null : pulumi.Input.encodeMapValues<InboundEndpoints, Map<String, dynamic>>(inbound!, (value) => value.toMap()),
      'outbound': ?outbound == null ? null : outbound!.toMap(),
    };
  }

  factory MessagingEndpoints.fromMap(Map<String, dynamic> map) {
    return MessagingEndpoints(
      inbound: map['inbound'] == null ? null : pulumi.Input.decodeMapValues<InboundEndpoints>(map['inbound'], (value) => InboundEndpoints.fromMap((value as Map).cast<String, dynamic>())),
      outbound: map['outbound'] == null ? null : OutboundEndpoints.fromMap((map['outbound'] as Map).cast<String, dynamic>()),
    );
  }
}

