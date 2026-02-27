// ignore_for_file: unused_element, unnecessary_cast

import 'release_channel_channel_container_v1beta1.dart';

/// ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannelContainerV1beta1 {
  /// channel specifies which release channel the cluster is subscribed to.
  final ReleaseChannelChannelContainerV1beta1? channel;

  ReleaseChannelContainerV1beta1({
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

  factory ReleaseChannelContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelContainerV1beta1(
      channel: map['channel'] == null
          ? null
          : ReleaseChannelChannelContainerV1beta1.fromValue(
              map['channel'] as String),
    );
  }
}
