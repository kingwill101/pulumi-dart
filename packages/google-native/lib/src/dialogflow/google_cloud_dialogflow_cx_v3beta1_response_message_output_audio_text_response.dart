// ignore_for_file: unused_element, unnecessary_cast

/// A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse {
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final bool allowPlaybackInterruption;

  /// The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).
  final String ssml;

  /// The raw text to be synthesized.
  final String text;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse].
  /// [allowPlaybackInterruption] Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  /// [ssml] The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).
  /// [text] The raw text to be synthesized.
  GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse({
    required this.allowPlaybackInterruption,
    required this.ssml,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': allowPlaybackInterruption,
      'ssml': ssml,
      'text': text,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioTextResponse(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] as bool,
      ssml: map['ssml'] as String,
      text: map['text'] as String,
    );
  }
}
