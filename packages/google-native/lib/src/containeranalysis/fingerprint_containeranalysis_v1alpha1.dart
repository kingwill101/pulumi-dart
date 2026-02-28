// ignore_for_file: unused_element, unnecessary_cast


/// A set of properties that uniquely identify a given Docker image.
class FingerprintContaineranalysisV1alpha1 {
  /// The layer-id of the final layer in the Docker image's v1 representation. This field can be used as a filter in list requests.
  final String? v1Name;
  /// The ordered list of v2 blobs that represent a given image.
  final List<String>? v2Blob;

  /// Creates a new [FingerprintContaineranalysisV1alpha1].
  /// [v1Name] The layer-id of the final layer in the Docker image's v1 representation. This field can be used as a filter in list requests.
  /// [v2Blob] The ordered list of v2 blobs that represent a given image.
  FingerprintContaineranalysisV1alpha1({
    this.v1Name,
    this.v2Blob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'v1Name': ?v1Name,
      'v2Blob': ?v2Blob,
    };
  }

  factory FingerprintContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return FingerprintContaineranalysisV1alpha1(
      v1Name: map['v1Name'] == null ? null : map['v1Name'] as String,
      v2Blob: map['v2Blob'] == null ? null : (map['v2Blob'] as List).cast<String>(),
    );
  }
}

