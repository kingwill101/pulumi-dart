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

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsTimecodeBurninSettings(
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timecodeBurninFontSize: (() {
        final guardedValue = map['timecodeBurninFontSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timecodeBurninPosition: (() {
        final guardedValue = map['timecodeBurninPosition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
