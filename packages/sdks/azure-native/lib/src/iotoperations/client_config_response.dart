// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_queue_limit_response.dart';

/// The settings of Client Config.
class ClientConfigResponse {
  /// Upper bound of a client's Keep Alive, in seconds.
  final pulumi.Input<int?>? maxKeepAliveSeconds;
  /// Upper bound of Message Expiry Interval, in seconds.
  final pulumi.Input<int?>? maxMessageExpirySeconds;
  /// Max message size for a packet in Bytes.
  final pulumi.Input<int?>? maxPacketSizeBytes;
  /// Upper bound of Receive Maximum that a client can request in the CONNECT packet.
  final pulumi.Input<int?>? maxReceiveMaximum;
  /// Upper bound of Session Expiry Interval, in seconds.
  final pulumi.Input<int?>? maxSessionExpirySeconds;
  /// The limit on the number of queued messages for a subscriber.
  final pulumi.Input<SubscriberQueueLimitResponse?>? subscriberQueueLimit;

  /// Creates a new [ClientConfigResponse].
  /// [maxKeepAliveSeconds] Upper bound of a client's Keep Alive, in seconds.
  /// [maxMessageExpirySeconds] Upper bound of Message Expiry Interval, in seconds.
  /// [maxPacketSizeBytes] Max message size for a packet in Bytes.
  /// [maxReceiveMaximum] Upper bound of Receive Maximum that a client can request in the CONNECT packet.
  /// [maxSessionExpirySeconds] Upper bound of Session Expiry Interval, in seconds.
  /// [subscriberQueueLimit] The limit on the number of queued messages for a subscriber.
  const ClientConfigResponse({
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
      maxKeepAliveSeconds: (() { final guardedValue = map['maxKeepAliveSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxMessageExpirySeconds: (() { final guardedValue = map['maxMessageExpirySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxPacketSizeBytes: (() { final guardedValue = map['maxPacketSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxReceiveMaximum: (() { final guardedValue = map['maxReceiveMaximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxSessionExpirySeconds: (() { final guardedValue = map['maxSessionExpirySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      subscriberQueueLimit: (() { final guardedValue = map['subscriberQueueLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriberQueueLimitResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
