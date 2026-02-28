// ignore_for_file: unused_element, unnecessary_cast

/// Specifies an audio clip to be played by the client as part of the response.
class GoogleCloudDialogflowCxV3ResponseMessagePlayAudioResponse {
  /// Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  final bool allowPlaybackInterruption;

  /// URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  final String audioUri;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessagePlayAudioResponse].
  /// [allowPlaybackInterruption] Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.
  /// [audioUri] URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  GoogleCloudDialogflowCxV3ResponseMessagePlayAudioResponse({
    required this.allowPlaybackInterruption,
    required this.audioUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowPlaybackInterruption'] = allowPlaybackInterruption;
    map['audioUri'] = audioUri;
    return map;
  }

  factory GoogleCloudDialogflowCxV3ResponseMessagePlayAudioResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessagePlayAudioResponse(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] as bool,
      audioUri: map['audioUri'] as String,
    );
  }
}
