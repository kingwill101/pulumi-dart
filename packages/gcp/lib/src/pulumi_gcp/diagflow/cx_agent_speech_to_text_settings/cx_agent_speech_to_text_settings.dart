// ignore_for_file: unused_element, unnecessary_cast

class CxAgentSpeechToTextSettings {
  /// Whether to use speech adaptation for speech recognition.
  final bool? enableSpeechAdaptation;

  CxAgentSpeechToTextSettings({
    this.enableSpeechAdaptation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableSpeechAdaptationValue = enableSpeechAdaptation;
    if (enableSpeechAdaptationValue != null) {
      map['enableSpeechAdaptation'] = enableSpeechAdaptationValue;
    }
    return map;
  }

  factory CxAgentSpeechToTextSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentSpeechToTextSettings(
      enableSpeechAdaptation: map['enableSpeechAdaptation'] == null
          ? null
          : map['enableSpeechAdaptation'] as bool,
    );
  }
}
