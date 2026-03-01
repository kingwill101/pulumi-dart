// ignore_for_file: unused_element, unnecessary_cast


/// Instructions for labeling job
class LabelingJobInstructions {
  /// The link to a page with detailed labeling instructions for labelers.
  final String? uri;

  /// Creates a new [LabelingJobInstructions].
  /// [uri] The link to a page with detailed labeling instructions for labelers.
  LabelingJobInstructions({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory LabelingJobInstructions.fromMap(Map<String, dynamic> map) {
    return LabelingJobInstructions(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

