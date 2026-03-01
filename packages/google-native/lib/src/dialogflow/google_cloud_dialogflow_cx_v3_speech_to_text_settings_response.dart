// ignore_for_file: unused_element, unnecessary_cast

/// Settings related to speech recognition.
class GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse {
  /// Whether to use speech adaptation for speech recognition.
  final bool enableSpeechAdaptation;

  /// Creates a new [GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse].
  /// [enableSpeechAdaptation] Whether to use speech adaptation for speech recognition.
  GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse({
    required this.enableSpeechAdaptation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableSpeechAdaptation': enableSpeechAdaptation};
  }

  factory GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse(
      enableSpeechAdaptation: map['enableSpeechAdaptation'] as bool,
    );
  }
}
