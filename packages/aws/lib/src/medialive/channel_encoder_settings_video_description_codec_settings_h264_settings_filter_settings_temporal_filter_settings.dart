// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings {
  /// Post filter sharpening.
  final String? postFilterSharpening;

  /// Filter strength.
  final String? strength;

  /// Creates a new [ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings].
  /// [postFilterSharpening] Post filter sharpening.
  /// [strength] Filter strength.
  ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings({
    this.postFilterSharpening,
    this.strength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postFilterSharpening': ?postFilterSharpening,
      'strength': ?strength,
    };
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings(
      postFilterSharpening: map['postFilterSharpening'] == null
          ? null
          : map['postFilterSharpening'] as String,
      strength: map['strength'] == null ? null : map['strength'] as String,
    );
  }
}
