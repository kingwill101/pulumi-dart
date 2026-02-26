// ignore_for_file: unused_element, unnecessary_cast

import 'release_channel_channel2.dart';

/// ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannel2 {
  /// channel specifies which release channel the cluster is subscribed to.
  final ReleaseChannelChannel2? channel;

  ReleaseChannel2({
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

  factory ReleaseChannel2.fromMap(Map<String, dynamic> map) {
    return ReleaseChannel2(
      channel: map['channel'] == null
          ? null
          : ReleaseChannelChannel2.fromValue(map['channel'] as String),
    );
  }
}
