// ignore_for_file: unused_element, unnecessary_cast

import 'subscriber_queue_limit_response.dart';

/// The settings of Client Config.
class ClientConfigResponse {
  /// Upper bound of a client's Keep Alive, in seconds.
  final int? maxKeepAliveSeconds;
  /// Upper bound of Message Expiry Interval, in seconds.
  final int? maxMessageExpirySeconds;
  /// Max message size for a packet in Bytes.
  final int? maxPacketSizeBytes;
  /// Upper bound of Receive Maximum that a client can request in the CONNECT packet.
  final int? maxReceiveMaximum;
  /// Upper bound of Session Expiry Interval, in seconds.
  final int? maxSessionExpirySeconds;
  /// The limit on the number of queued messages for a subscriber.
  final SubscriberQueueLimitResponse? subscriberQueueLimit;

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
      'subscriberQueueLimit': ?subscriberQueueLimit == null ? null : subscriberQueueLimit!.toMap(),
    };
  }

  factory ClientConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClientConfigResponse(
      maxKeepAliveSeconds: map['maxKeepAliveSeconds'] == null ? null : map['maxKeepAliveSeconds'] as int,
      maxMessageExpirySeconds: map['maxMessageExpirySeconds'] == null ? null : map['maxMessageExpirySeconds'] as int,
      maxPacketSizeBytes: map['maxPacketSizeBytes'] == null ? null : map['maxPacketSizeBytes'] as int,
      maxReceiveMaximum: map['maxReceiveMaximum'] == null ? null : map['maxReceiveMaximum'] as int,
      maxSessionExpirySeconds: map['maxSessionExpirySeconds'] == null ? null : map['maxSessionExpirySeconds'] as int,
      subscriberQueueLimit: map['subscriberQueueLimit'] == null ? null : SubscriberQueueLimitResponse.fromMap((map['subscriberQueueLimit'] as Map).cast<String, dynamic>()),
    );
  }
}

