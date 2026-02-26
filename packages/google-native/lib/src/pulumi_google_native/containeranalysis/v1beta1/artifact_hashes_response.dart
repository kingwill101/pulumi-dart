// ignore_for_file: unused_element, unnecessary_cast

/// Defines a hash object for use in Materials and Products.
class ArtifactHashesResponse {
  final String sha256;

  ArtifactHashesResponse({
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sha256'] = sha256;
    return map;
  }

  factory ArtifactHashesResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactHashesResponse(
      sha256: map['sha256'] as String,
    );
  }
}
