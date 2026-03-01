// ignore_for_file: unused_element, unnecessary_cast

/// ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.
class ReleaseChannelResponseContainerV1beta1 {
  /// channel specifies which release channel the cluster is subscribed to.
  final String channel;

  /// Creates a new [ReleaseChannelResponseContainerV1beta1].
  /// [channel] channel specifies which release channel the cluster is subscribed to.
  ReleaseChannelResponseContainerV1beta1({required this.channel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'channel': channel};
  }

  factory ReleaseChannelResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReleaseChannelResponseContainerV1beta1(
      channel: map['channel'] as String,
    );
  }
}
