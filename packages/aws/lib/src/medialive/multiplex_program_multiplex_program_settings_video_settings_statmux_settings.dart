// ignore_for_file: unused_element, unnecessary_cast

class MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings {
  /// Maximum bitrate.
  final int? maximumBitrate;

  /// Minimum bitrate.
  final int? minimumBitrate;

  /// Priority value.
  final int? priority;

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
    final map = <String, dynamic>{};
    final maximumBitrateValue = maximumBitrate;
    if (maximumBitrateValue != null) {
      map['maximumBitrate'] = maximumBitrateValue;
    }
    final minimumBitrateValue = minimumBitrate;
    if (minimumBitrateValue != null) {
      map['minimumBitrate'] = minimumBitrateValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    return map;
  }

  factory MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings.fromMap(
      Map<String, dynamic> map) {
    return MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings(
      maximumBitrate:
          map['maximumBitrate'] == null ? null : map['maximumBitrate'] as int,
      minimumBitrate:
          map['minimumBitrate'] == null ? null : map['minimumBitrate'] as int,
      priority: map['priority'] == null ? null : map['priority'] as int,
    );
  }
}
