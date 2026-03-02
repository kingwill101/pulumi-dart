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
      maximumBitrate: map['maximumBitrate'] == null ? null : ((map['maximumBitrate'] as int).input()).input(),
      minimumBitrate: map['minimumBitrate'] == null ? null : ((map['minimumBitrate'] as int).input()).input(),
      priority: map['priority'] == null ? null : ((map['priority'] as int).input()).input(),
    );
  }
}

