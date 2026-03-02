// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings {
  /// Set a prefix on the burned in timecode.
  final pulumi.Input<String>? prefix;
  /// Sets the size of the burned in timecode.
  final pulumi.Input<String>? timecodeBurninFontSize;
  /// Sets the position of the burned in timecode.
  final pulumi.Input<String>? timecodeBurninPosition;

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
    return <String, dynamic>{
      'prefix': ?prefix,
      'timecodeBurninFontSize': ?timecodeBurninFontSize,
      'timecodeBurninPosition': ?timecodeBurninPosition,
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings(
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      timecodeBurninFontSize: map['timecodeBurninFontSize'] == null ? null : (map['timecodeBurninFontSize'] as String).input(),
      timecodeBurninPosition: map['timecodeBurninPosition'] == null ? null : (map['timecodeBurninPosition'] as String).input(),
    );
  }
}

