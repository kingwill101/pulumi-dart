// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TunnelChannel {
  /// The id of the channel.
  final pulumi.Input<String>? channelId;

  /// The latest consumption time of the channel, unix time in nanosecond.
  final pulumi.Input<int>? channelRpo;

  /// The status of the channel, valid values: `WAIT`, `OPEN`, `CLOSING`, `CLOSE`, `TERMINATED`.
  final pulumi.Input<String>? channelStatus;

  /// The type of the channel, valid values: `BaseData`, `Stream`.
  final pulumi.Input<String>? channelType;

  /// The client id of the channel.
  final pulumi.Input<String>? clientId;

  /// Creates a new [TunnelChannel].
  /// [channelId] The id of the channel.
  /// [channelRpo] The latest consumption time of the channel, unix time in nanosecond.
  /// [channelStatus] The status of the channel, valid values: `WAIT`, `OPEN`, `CLOSING`, `CLOSE`, `TERMINATED`.
  /// [channelType] The type of the channel, valid values: `BaseData`, `Stream`.
  /// [clientId] The client id of the channel.
  TunnelChannel({
    this.channelId,
    this.channelRpo,
    this.channelStatus,
    this.channelType,
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': ?channelId,
      'channelRpo': ?channelRpo,
      'channelStatus': ?channelStatus,
      'channelType': ?channelType,
      'clientId': ?clientId,
    };
  }

  factory TunnelChannel.fromMap(Map<String, dynamic> map) {
    return TunnelChannel(
      channelId: (() {
        final guardedValue = map['channelId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      channelRpo: (() {
        final guardedValue = map['channelRpo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      channelStatus: (() {
        final guardedValue = map['channelStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      channelType: (() {
        final guardedValue = map['channelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
