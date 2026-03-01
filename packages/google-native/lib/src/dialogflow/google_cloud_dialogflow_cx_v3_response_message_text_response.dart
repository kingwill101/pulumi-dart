// ignore_for_file: unused_element, unnecessary_cast

/// The text response message.
class GoogleCloudDialogflowCxV3ResponseMessageTextResponse {
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final bool allowPlaybackInterruption;

  /// A collection of text responses.
  final List<String> text;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessageTextResponse].
  /// [allowPlaybackInterruption] Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  /// [text] A collection of text responses.
  GoogleCloudDialogflowCxV3ResponseMessageTextResponse({
    required this.allowPlaybackInterruption,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPlaybackInterruption': allowPlaybackInterruption,
      'text': text,
    };
  }

  factory GoogleCloudDialogflowCxV3ResponseMessageTextResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3ResponseMessageTextResponse(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] as bool,
      text: (map['text'] as List).cast<String>(),
    );
  }
}
