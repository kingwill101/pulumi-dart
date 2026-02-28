// ignore_for_file: unused_element, unnecessary_cast

/// A set of properties that uniquely identify a given Docker image.
class FingerprintContaineranalysisV1beta1 {
  /// The layer ID of the final layer in the Docker image's v1 representation.
  final String v1Name;

  /// The ordered list of v2 blobs that represent a given image.
  final List<String> v2Blob;

  /// Creates a new [FingerprintContaineranalysisV1beta1].
  /// [v1Name] The layer ID of the final layer in the Docker image's v1 representation.
  /// [v2Blob] The ordered list of v2 blobs that represent a given image.
  FingerprintContaineranalysisV1beta1({
    required this.v1Name,
    required this.v2Blob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['v1Name'] = v1Name;
    map['v2Blob'] = v2Blob;
    return map;
  }

  factory FingerprintContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return FingerprintContaineranalysisV1beta1(
      v1Name: map['v1Name'] as String,
      v2Blob: (map['v2Blob'] as List).cast<String>(),
    );
  }
}
