// ignore_for_file: unused_element, unnecessary_cast

/// Represents one segment of audio.
class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegmentResponse {
  /// Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.
  final bool allowPlaybackInterruption;

  /// Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.
  final String audio;

  /// Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.
  final String uri;

  GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegmentResponse({
    required this.allowPlaybackInterruption,
    required this.audio,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowPlaybackInterruption'] = allowPlaybackInterruption;
    map['audio'] = audio;
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegmentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegmentResponse(
      allowPlaybackInterruption: map['allowPlaybackInterruption'] as bool,
      audio: map['audio'] as String,
      uri: map['uri'] as String,
    );
  }
}
