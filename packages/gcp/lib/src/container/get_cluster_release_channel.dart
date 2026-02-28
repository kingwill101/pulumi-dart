// ignore_for_file: unused_element, unnecessary_cast


class GetClusterReleaseChannel {
  /// The selected release channel. Accepted values are:
  /// * UNSPECIFIED: Not set.
  /// * RAPID: Weekly upgrade cadence; Early testers and developers who requires new features.
  /// * REGULAR: Multiple per month upgrade cadence; Production users who need features not yet offered in the Stable channel.
  /// * STABLE: Every few months upgrade cadence; Production users who need stability above all else, and for whom frequent upgrades are too risky.
  /// * EXTENDED: GKE provides extended support for Kubernetes minor versions through the Extended channel. With this channel, you can stay on a minor version for up to 24 months.
  final String channel;

  /// Creates a new [GetClusterReleaseChannel].
  /// [channel] The selected release channel. Accepted values are:
  GetClusterReleaseChannel({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory GetClusterReleaseChannel.fromMap(Map<String, dynamic> map) {
    return GetClusterReleaseChannel(
      channel: map['channel'] as String,
    );
  }
}

