// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig {
  /// (Required) The identifier for this object. Format specified above.
  final String languageCode;

  /// (Output)
  /// The speaking rate/speed in the range [0.25, 2.0]. 1.0 is the normal native
  /// speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is
  /// half as fast. Values outside of the range [0.25, 2.0] will return an error.
  final double? speakingRate;

  /// (Output)
  /// The name of the voice. If not set, the service will choose a
  /// voice based on the other parameters such as language_code.
  /// For the list of available voices, please refer to Supported voices and
  /// languages from Cloud Text-to-Speech.
  final String? voice;

  /// Creates a new [AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig].
  /// [languageCode] (Required) The identifier for this object. Format specified above.
  /// [speakingRate] (Output)
  /// [voice] (Output)
  AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig({
    required this.languageCode,
    this.speakingRate,
    this.voice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['languageCode'] = languageCode;
    final speakingRateValue = speakingRate;
    if (speakingRateValue != null) {
      map['speakingRate'] = speakingRateValue;
    }
    final voiceValue = voice;
    if (voiceValue != null) {
      map['voice'] = voiceValue;
    }
    return map;
  }

  factory AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppAudioProcessingConfigSynthesizeSpeechConfig(
      languageCode: map['languageCode'] as String,
      speakingRate:
          map['speakingRate'] == null ? null : map['speakingRate'] as double,
      voice: map['voice'] == null ? null : map['voice'] as String,
    );
  }
}
