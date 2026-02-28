// ignore_for_file: unused_element, unnecessary_cast


/// A point in a conversation that marks the start or the end of an annotation.
class GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse {
  /// The index in the sequence of transcribed pieces of the conversation where the boundary is located. This index starts at zero.
  final int transcriptIndex;
  /// The word index of this boundary with respect to the first word in the transcript piece. This index starts at zero.
  final int wordIndex;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse].
  /// [transcriptIndex] The index in the sequence of transcribed pieces of the conversation where the boundary is located. This index starts at zero.
  /// [wordIndex] The word index of this boundary with respect to the first word in the transcript piece. This index starts at zero.
  GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse({
    required this.transcriptIndex,
    required this.wordIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transcriptIndex': transcriptIndex,
      'wordIndex': wordIndex,
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse(
      transcriptIndex: map['transcriptIndex'] as int,
      wordIndex: map['wordIndex'] as int,
    );
  }
}

