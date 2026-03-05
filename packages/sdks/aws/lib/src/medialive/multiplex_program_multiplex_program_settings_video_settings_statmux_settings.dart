// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings {
  /// Maximum bitrate.
  final pulumi.Input<int>? maximumBitrate;
  /// Minimum bitrate.
  final pulumi.Input<int>? minimumBitrate;
  /// Priority value.
  final pulumi.Input<int>? priority;

  /// Creates a new [MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings].
  /// [maximumBitrate] Maximum bitrate.
  /// [minimumBitrate] Minimum bitrate.
  /// [priority] Priority value.
  MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings({
    this.maximumBitrate,
    this.minimumBitrate,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumBitrate': ?maximumBitrate,
      'minimumBitrate': ?minimumBitrate,
      'priority': ?priority,
    };
  }

  factory MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings.fromMap(Map<String, dynamic> map) {
    return MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings(
      maximumBitrate: (() { final guardedValue = map['maximumBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumBitrate: (() { final guardedValue = map['minimumBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

