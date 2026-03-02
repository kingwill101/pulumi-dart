// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_queue_limit_response.dart';

/// The settings of Client Config.
class ClientConfigResponse {
  /// Upper bound of a client's Keep Alive, in seconds.
  final pulumi.Input<int>? maxKeepAliveSeconds;
  /// Upper bound of Message Expiry Interval, in seconds.
  final pulumi.Input<int>? maxMessageExpirySeconds;
  /// Max message size for a packet in Bytes.
  final pulumi.Input<int>? maxPacketSizeBytes;
  /// Upper bound of Receive Maximum that a client can request in the CONNECT packet.
  final pulumi.Input<int>? maxReceiveMaximum;
  /// Upper bound of Session Expiry Interval, in seconds.
  final pulumi.Input<int>? maxSessionExpirySeconds;
  /// The limit on the number of queued messages for a subscriber.
  final pulumi.Input<SubscriberQueueLimitResponse>? subscriberQueueLimit;

  /// Creates a new [ClientConfigResponse].
  /// [maxKeepAliveSeconds] Upper bound of a client's Keep Alive, in seconds.
  /// [maxMessageExpirySeconds] Upper bound of Message Expiry Interval, in seconds.
  /// [maxPacketSizeBytes] Max message size for a packet in Bytes.
  /// [maxReceiveMaximum] Upper bound of Receive Maximum that a client can request in the CONNECT packet.
  /// [maxSessionExpirySeconds] Upper bound of Session Expiry Interval, in seconds.
  /// [subscriberQueueLimit] The limit on the number of queued messages for a subscriber.
  ClientConfigResponse({
    this.maxKeepAliveSeconds,
    this.maxMessageExpirySeconds,
    this.maxPacketSizeBytes,
    this.maxReceiveMaximum,
    this.maxSessionExpirySeconds,
    this.subscriberQueueLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxKeepAliveSeconds': ?maxKeepAliveSeconds,
      'maxMessageExpirySeconds': ?maxMessageExpirySeconds,
      'maxPacketSizeBytes': ?maxPacketSizeBytes,
      'maxReceiveMaximum': ?maxReceiveMaximum,
      'maxSessionExpirySeconds': ?maxSessionExpirySeconds,
      'subscriberQueueLimit': ?pulumi.Input.mapOptionalInputValue<SubscriberQueueLimitResponse, Map<String, dynamic>>(subscriberQueueLimit, (value) => value.toMap()),
    };
  }

  factory ClientConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClientConfigResponse(
      maxKeepAliveSeconds: map['maxKeepAliveSeconds'] == null ? null : (map['maxKeepAliveSeconds'] as int).input(),
      maxMessageExpirySeconds: map['maxMessageExpirySeconds'] == null ? null : (map['maxMessageExpirySeconds'] as int).input(),
      maxPacketSizeBytes: map['maxPacketSizeBytes'] == null ? null : (map['maxPacketSizeBytes'] as int).input(),
      maxReceiveMaximum: map['maxReceiveMaximum'] == null ? null : (map['maxReceiveMaximum'] as int).input(),
      maxSessionExpirySeconds: map['maxSessionExpirySeconds'] == null ? null : (map['maxSessionExpirySeconds'] as int).input(),
      subscriberQueueLimit: map['subscriberQueueLimit'] == null ? null : (SubscriberQueueLimitResponse.fromMap((map['subscriberQueueLimit'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

