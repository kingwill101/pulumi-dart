// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings {
  /// Post filter sharpening.
  final String? postFilterSharpening;

  /// Filter strength.
  final String? strength;

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

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH265SettingsFilterSettingsTemporalFilterSettings(
      postFilterSharpening: map['postFilterSharpening'] == null
          ? null
          : map['postFilterSharpening'] as String,
      strength: map['strength'] == null ? null : map['strength'] as String,
    );
  }
}
