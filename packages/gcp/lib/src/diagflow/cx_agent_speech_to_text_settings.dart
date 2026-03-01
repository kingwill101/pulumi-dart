// ignore_for_file: unused_element, unnecessary_cast

class CxAgentSpeechToTextSettings {
  /// Whether to use speech adaptation for speech recognition.
  final bool? enableSpeechAdaptation;

  /// Creates a new [CxAgentSpeechToTextSettings].
  /// [enableSpeechAdaptation] Whether to use speech adaptation for speech recognition.
  CxAgentSpeechToTextSettings({this.enableSpeechAdaptation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableSpeechAdaptation': ?enableSpeechAdaptation};
  }

  factory CxAgentSpeechToTextSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentSpeechToTextSettings(
      enableSpeechAdaptation: map['enableSpeechAdaptation'] == null
          ? null
          : map['enableSpeechAdaptation'] as bool,
    );
  }
}
