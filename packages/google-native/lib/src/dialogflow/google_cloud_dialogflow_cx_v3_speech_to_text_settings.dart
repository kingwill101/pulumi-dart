// ignore_for_file: unused_element, unnecessary_cast


/// Settings related to speech recognition.
class GoogleCloudDialogflowCxV3SpeechToTextSettings {
  /// Whether to use speech adaptation for speech recognition.
  final bool? enableSpeechAdaptation;

  /// Creates a new [GoogleCloudDialogflowCxV3SpeechToTextSettings].
  /// [enableSpeechAdaptation] Whether to use speech adaptation for speech recognition.
  GoogleCloudDialogflowCxV3SpeechToTextSettings({
    this.enableSpeechAdaptation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSpeechAdaptation': ?enableSpeechAdaptation,
    };
  }

  factory GoogleCloudDialogflowCxV3SpeechToTextSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3SpeechToTextSettings(
      enableSpeechAdaptation: map['enableSpeechAdaptation'] == null ? null : map['enableSpeechAdaptation'] as bool,
    );
  }
}

