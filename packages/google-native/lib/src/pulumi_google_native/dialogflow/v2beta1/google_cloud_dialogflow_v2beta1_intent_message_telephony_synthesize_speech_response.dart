// ignore_for_file: unused_element, unnecessary_cast

/// Synthesizes speech and plays back the synthesized audio to the caller in Telephony Gateway. Telephony Gateway takes the synthesizer settings from `DetectIntentResponse.output_audio_config` which can either be set at request-level or can come from the agent-level synthesizer config.
class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse {
  /// The SSML to be synthesized. For more information, see [SSML](https://developers.google.com/actions/reference/ssml).
  final String ssml;

  /// The raw text to be synthesized.
  final String text;

  GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse({
    required this.ssml,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ssml'] = ssml;
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse(
      ssml: map['ssml'] as String,
      text: map['text'] as String,
    );
  }
}
