// ignore_for_file: unused_element, unnecessary_cast

/// Settings related to speech recognition.
class GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse {
  /// Whether to use speech adaptation for speech recognition.
  final bool enableSpeechAdaptation;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse].
  /// [enableSpeechAdaptation] Whether to use speech adaptation for speech recognition.
  GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse({
    required this.enableSpeechAdaptation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableSpeechAdaptation'] = enableSpeechAdaptation;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1SpeechToTextSettingsResponse(
      enableSpeechAdaptation: map['enableSpeechAdaptation'] as bool,
    );
  }
}
