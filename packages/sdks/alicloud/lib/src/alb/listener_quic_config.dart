// ignore_for_file: unused_element, unnecessary_cast


class ListenerQuicConfig {
  /// There Is a Need to Correlate the QuIC Listener ID. The Https Listener, in Effect at the Time. quicupgradeenabled True When Required.
  final String? quicListenerId;
  /// Indicates Whether to Enable the QuIC Upgrade
  final bool? quicUpgradeEnabled;

  /// Creates a new [ListenerQuicConfig].
  /// [quicListenerId] There Is a Need to Correlate the QuIC Listener ID. The Https Listener, in Effect at the Time. quicupgradeenabled True When Required.
  /// [quicUpgradeEnabled] Indicates Whether to Enable the QuIC Upgrade
  ListenerQuicConfig({
    this.quicListenerId,
    this.quicUpgradeEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quicListenerId': ?quicListenerId,
      'quicUpgradeEnabled': ?quicUpgradeEnabled,
    };
  }

  factory ListenerQuicConfig.fromMap(Map<String, dynamic> map) {
    return ListenerQuicConfig(
      quicListenerId: map['quicListenerId'] == null ? null : map['quicListenerId'] as String,
      quicUpgradeEnabled: map['quicUpgradeEnabled'] == null ? null : map['quicUpgradeEnabled'] as bool,
    );
  }
}

