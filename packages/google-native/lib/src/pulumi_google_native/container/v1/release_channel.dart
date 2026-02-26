// ignore_for_file: unused_element, unnecessary_cast

import 'release_channel_channel.dart';

/// ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannel {
  /// channel specifies which release channel the cluster is subscribed to.
  final ReleaseChannelChannel? channel;

  ReleaseChannel({
    this.channel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final channelValue = channel;
    if (channelValue != null) {
      map['channel'] = channelValue.value;
    }
    return map;
  }

  factory ReleaseChannel.fromMap(Map<String, dynamic> map) {
    return ReleaseChannel(
      channel: map['channel'] == null
          ? null
          : ReleaseChannelChannel.fromValue(map['channel'] as String),
    );
  }
}
