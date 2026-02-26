// ignore_for_file: unused_element, unnecessary_cast

/// A Cloud Storage source of conversation data.
class GoogleCloudContactcenterinsightsV1GcsSourceResponse {
  /// Cloud Storage URI that points to a file that contains the conversation audio.
  final String audioUri;

  /// Immutable. Cloud Storage URI that points to a file that contains the conversation transcript.
  final String transcriptUri;

  GoogleCloudContactcenterinsightsV1GcsSourceResponse({
    required this.audioUri,
    required this.transcriptUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audioUri'] = audioUri;
    map['transcriptUri'] = transcriptUri;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1GcsSourceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1GcsSourceResponse(
      audioUri: map['audioUri'] as String,
      transcriptUri: map['transcriptUri'] as String,
    );
  }
}
