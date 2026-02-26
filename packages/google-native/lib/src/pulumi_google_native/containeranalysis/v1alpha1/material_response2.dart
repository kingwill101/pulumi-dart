// ignore_for_file: unused_element, unnecessary_cast

/// Material is a material used in the generation of the provenance
class MaterialResponse2 {
  /// digest is a map from a hash algorithm (e.g. sha256) to the value in the material
  final Map<String, String> digest;

  /// uri is the uri of the material
  final String uri;

  MaterialResponse2({
    required this.digest,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['digest'] = digest;
    map['uri'] = uri;
    return map;
  }

  factory MaterialResponse2.fromMap(Map<String, dynamic> map) {
    return MaterialResponse2(
      digest: (map['digest'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
    );
  }
}
