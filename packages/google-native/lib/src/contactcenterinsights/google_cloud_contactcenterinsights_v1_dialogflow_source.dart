// ignore_for_file: unused_element, unnecessary_cast

/// A Dialogflow source of conversation data.
class GoogleCloudContactcenterinsightsV1DialogflowSource {
  /// Cloud Storage URI that points to a file that contains the conversation audio.
  final String? audioUri;

  /// Creates a new [GoogleCloudContactcenterinsightsV1DialogflowSource].
  /// [audioUri] Cloud Storage URI that points to a file that contains the conversation audio.
  GoogleCloudContactcenterinsightsV1DialogflowSource({
    this.audioUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audioUriValue = audioUri;
    if (audioUriValue != null) {
      map['audioUri'] = audioUriValue;
    }
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1DialogflowSource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1DialogflowSource(
      audioUri: map['audioUri'] == null ? null : map['audioUri'] as String,
    );
  }
}
