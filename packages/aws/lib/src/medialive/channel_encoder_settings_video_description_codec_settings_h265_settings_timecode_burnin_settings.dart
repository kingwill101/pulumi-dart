// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings {
  /// Set a prefix on the burned in timecode.
  final String? prefix;

  /// Sets the size of the burned in timecode.
  final String? timecodeBurninFontSize;

  /// Sets the position of the burned in timecode.
  final String? timecodeBurninPosition;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings].
  /// [prefix] Set a prefix on the burned in timecode.
  /// [timecodeBurninFontSize] Sets the size of the burned in timecode.
  /// [timecodeBurninPosition] Sets the position of the burned in timecode.
  ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings({
    this.prefix,
    this.timecodeBurninFontSize,
    this.timecodeBurninPosition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final timecodeBurninFontSizeValue = timecodeBurninFontSize;
    if (timecodeBurninFontSizeValue != null) {
      map['timecodeBurninFontSize'] = timecodeBurninFontSizeValue;
    }
    final timecodeBurninPositionValue = timecodeBurninPosition;
    if (timecodeBurninPositionValue != null) {
      map['timecodeBurninPosition'] = timecodeBurninPositionValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      timecodeBurninFontSize: map['timecodeBurninFontSize'] == null
          ? null
          : map['timecodeBurninFontSize'] as String,
      timecodeBurninPosition: map['timecodeBurninPosition'] == null
          ? null
          : map['timecodeBurninPosition'] as String,
    );
  }
}
