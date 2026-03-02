// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTunnelsTunnelChannel {
  /// The id of the channel.
  final pulumi.Input<String> channelId;
  /// The latest consumption time of the channel, unix time in nanosecond
  final pulumi.Input<int> channelRpo;
  /// The status of the channel, valid values: `WAIT`, `OPEN`, `CLOSING`, `CLOSE`, `TERMINATED`.
  final pulumi.Input<String> channelStatus;
  /// The type of the channel, valid values: `BaseData`, `Stream`.
  final pulumi.Input<String> channelType;
  /// The client id of the channel.
  final pulumi.Input<String> clientId;

  /// Creates a new [GetTunnelsTunnelChannel].
  /// [channelId] The id of the channel.
  /// [channelRpo] The latest consumption time of the channel, unix time in nanosecond
  /// [channelStatus] The status of the channel, valid values: `WAIT`, `OPEN`, `CLOSING`, `CLOSE`, `TERMINATED`.
  /// [channelType] The type of the channel, valid values: `BaseData`, `Stream`.
  /// [clientId] The client id of the channel.
  GetTunnelsTunnelChannel({
    required this.channelId,
    required this.channelRpo,
    required this.channelStatus,
    required this.channelType,
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'channelRpo': channelRpo,
      'channelStatus': channelStatus,
      'channelType': channelType,
      'clientId': clientId,
    };
  }

  factory GetTunnelsTunnelChannel.fromMap(Map<String, dynamic> map) {
    return GetTunnelsTunnelChannel(
      channelId: (map['channelId'] as String).input(),
      channelRpo: (map['channelRpo'] as int).input(),
      channelStatus: (map['channelStatus'] as String).input(),
      channelType: (map['channelType'] as String).input(),
      clientId: (map['clientId'] as String).input(),
    );
  }
}

