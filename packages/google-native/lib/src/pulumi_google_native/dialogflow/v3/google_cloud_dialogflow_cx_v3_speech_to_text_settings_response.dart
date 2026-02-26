// ignore_for_file: unused_element, unnecessary_cast

/// Settings related to speech recognition.
class GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse {
  /// Whether to use speech adaptation for speech recognition.
  final bool enableSpeechAdaptation;

  GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse({
    required this.enableSpeechAdaptation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableSpeechAdaptation'] = enableSpeechAdaptation;
    return map;
  }

  factory GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3SpeechToTextSettingsResponse(
      enableSpeechAdaptation: map['enableSpeechAdaptation'] as bool,
    );
  }
}
