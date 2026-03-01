// ignore_for_file: unused_element, unnecessary_cast


class TunnelChannel {
  /// The id of the channel.
  final String? channelId;
  /// The latest consumption time of the channel, unix time in nanosecond.
  final int? channelRpo;
  /// The status of the channel, valid values: `WAIT`, `OPEN`, `CLOSING`, `CLOSE`, `TERMINATED`.
  final String? channelStatus;
  /// The type of the channel, valid values: `BaseData`, `Stream`.
  final String? channelType;
  /// The client id of the channel.
  final String? clientId;

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
      channelId: map['channelId'] == null ? null : map['channelId'] as String,
      channelRpo: map['channelRpo'] == null ? null : map['channelRpo'] as int,
      channelStatus: map['channelStatus'] == null ? null : map['channelStatus'] as String,
      channelType: map['channelType'] == null ? null : map['channelType'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
    );
  }
}

