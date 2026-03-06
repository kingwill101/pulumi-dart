// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerQuicConfig {
  /// There Is a Need to Correlate the QuIC Listener ID. The Https Listener, in Effect at the Time. quicupgradeenabled True When Required.
  final pulumi.Input<String>? quicListenerId;
  /// Indicates Whether to Enable the QuIC Upgrade
  final pulumi.Input<bool>? quicUpgradeEnabled;

  /// Creates a new [ListenerQuicConfig].
  /// [quicListenerId] There Is a Need to Correlate the QuIC Listener ID. The Https Listener, in Effect at the Time. quicupgradeenabled True When Required.
  /// [quicUpgradeEnabled] Indicates Whether to Enable the QuIC Upgrade
  const ListenerQuicConfig({
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
      quicListenerId: (() { final guardedValue = map['quicListenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quicUpgradeEnabled: (() { final guardedValue = map['quicUpgradeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

