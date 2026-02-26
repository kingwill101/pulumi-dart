// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings {
  /// Post filter sharpening.
  final String? postFilterSharpening;

  /// Filter strength.
  final String? strength;

  ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings({
    this.postFilterSharpening,
    this.strength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postFilterSharpeningValue = postFilterSharpening;
    if (postFilterSharpeningValue != null) {
      map['postFilterSharpening'] = postFilterSharpeningValue;
    }
    final strengthValue = strength;
    if (strengthValue != null) {
      map['strength'] = strengthValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescriptionCodecSettingsH264SettingsFilterSettingsTemporalFilterSettings(
      postFilterSharpening: map['postFilterSharpening'] == null
          ? null
          : map['postFilterSharpening'] as String,
      strength: map['strength'] == null ? null : map['strength'] as String,
    );
  }
}
