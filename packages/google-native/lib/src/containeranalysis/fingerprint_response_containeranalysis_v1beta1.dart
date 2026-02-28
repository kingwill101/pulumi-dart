// ignore_for_file: unused_element, unnecessary_cast


/// A set of properties that uniquely identify a given Docker image.
class FingerprintResponseContaineranalysisV1beta1 {
  /// The layer ID of the final layer in the Docker image's v1 representation.
  final String v1Name;
  /// The ordered list of v2 blobs that represent a given image.
  final List<String> v2Blob;
  /// The name of the image's v2 blobs computed via: [bottom] := v2_blobbottom := sha256(v2_blob[N] + " " + v2_name[N+1]) Only the name of the final blob is kept.
  final String v2Name;

  /// Creates a new [FingerprintResponseContaineranalysisV1beta1].
  /// [v1Name] The layer ID of the final layer in the Docker image's v1 representation.
  /// [v2Blob] The ordered list of v2 blobs that represent a given image.
  /// [v2Name] The name of the image's v2 blobs computed via: [bottom] := v2_blobbottom := sha256(v2_blob[N] + " " + v2_name[N+1]) Only the name of the final blob is kept.
  FingerprintResponseContaineranalysisV1beta1({
    required this.v1Name,
    required this.v2Blob,
    required this.v2Name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'v1Name': v1Name,
      'v2Blob': v2Blob,
      'v2Name': v2Name,
    };
  }

  factory FingerprintResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return FingerprintResponseContaineranalysisV1beta1(
      v1Name: map['v1Name'] as String,
      v2Blob: (map['v2Blob'] as List).cast<String>(),
      v2Name: map['v2Name'] as String,
    );
  }
}

