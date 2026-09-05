// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings {
  /// Post filter sharpening.
  final pulumi.Input<String?>? postFilterSharpening;
  /// Filter strength.
  final pulumi.Input<String?>? strength;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings].
  /// [postFilterSharpening] Post filter sharpening.
  /// [strength] Filter strength.
  const ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings({
    this.postFilterSharpening,
    this.strength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postFilterSharpening': ?postFilterSharpening,
      'strength': ?strength,
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings(
      postFilterSharpening: (() { final guardedValue = map['postFilterSharpening']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strength: (() { final guardedValue = map['strength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
