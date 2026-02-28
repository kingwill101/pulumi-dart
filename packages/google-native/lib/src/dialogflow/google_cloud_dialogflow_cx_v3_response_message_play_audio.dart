// ignore_for_file: unused_element, unnecessary_cast

/// Specifies an audio clip to be played by the client as part of the response.
class GoogleCloudDialogflowCxV3ResponseMessagePlayAudio {
  /// URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  final String audioUri;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessagePlayAudio].
  /// [audioUri] URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.
  GoogleCloudDialogflowCxV3ResponseMessagePlayAudio({
    required this.audioUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audioUri'] = audioUri;
    return map;
  }

  factory GoogleCloudDialogflowCxV3ResponseMessagePlayAudio.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessagePlayAudio(
      audioUri: map['audioUri'] as String,
    );
  }
}
