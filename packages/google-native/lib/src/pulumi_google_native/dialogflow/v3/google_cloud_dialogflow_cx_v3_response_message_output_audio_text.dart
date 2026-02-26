// ignore_for_file: unused_element, unnecessary_cast

/// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
class GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText {
  /// The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).
  final String? ssml;

  /// The raw text to be synthesized.
  final String? text;

  GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText({
    this.ssml,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ssmlValue = ssml;
    if (ssmlValue != null) {
      map['ssml'] = ssmlValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText(
      ssml: map['ssml'] == null ? null : map['ssml'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
