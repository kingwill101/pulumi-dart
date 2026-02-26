// ignore_for_file: unused_element, unnecessary_cast

/// ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannelResponse2 {
  /// channel specifies which release channel the cluster is subscribed to.
  final String channel;

  ReleaseChannelResponse2({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channel'] = channel;
    return map;
  }

  factory ReleaseChannelResponse2.fromMap(Map<String, dynamic> map) {
    return ReleaseChannelResponse2(
      channel: map['channel'] as String,
    );
  }
}
