// ignore_for_file: unused_element, unnecessary_cast

/// The text response message.
class GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse {
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final bool allowPlaybackInterruption;

  /// A collection of text responses.
  final List<String> text;

  GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse({
    required this.allowPlaybackInterruption,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowPlaybackInterruption'] = allowPlaybackInterruption;
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] as bool,
      text: (map['text'] as List).cast<String>(),
    );
  }
}
