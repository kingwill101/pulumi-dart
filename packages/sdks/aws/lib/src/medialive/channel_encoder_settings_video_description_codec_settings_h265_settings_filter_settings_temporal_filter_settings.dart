// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings {
  /// Post filter sharpening.
  final pulumi.Input<String>? postFilterSharpening;
  /// Filter strength.
  final pulumi.Input<String>? strength;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings].
  /// [postFilterSharpening] Post filter sharpening.
  /// [strength] Filter strength.
  ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings({
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
      postFilterSharpening: map['postFilterSharpening'] == null ? null : ((map['postFilterSharpening'] as String).input()).input(),
      strength: map['strength'] == null ? null : ((map['strength'] as String).input()).input(),
    );
  }
}

