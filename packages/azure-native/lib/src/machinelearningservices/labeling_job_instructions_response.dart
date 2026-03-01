// ignore_for_file: unused_element, unnecessary_cast


/// Instructions for labeling job
class LabelingJobInstructionsResponse {
  /// The link to a page with detailed labeling instructions for labelers.
  final String? uri;

  /// Creates a new [LabelingJobInstructionsResponse].
  /// [uri] The link to a page with detailed labeling instructions for labelers.
  LabelingJobInstructionsResponse({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory LabelingJobInstructionsResponse.fromMap(Map<String, dynamic> map) {
    return LabelingJobInstructionsResponse(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

