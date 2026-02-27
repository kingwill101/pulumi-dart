// ignore_for_file: unused_element, unnecessary_cast

/// Material is a material used in the generation of the provenance
class MaterialContaineranalysisV1alpha1 {
  /// digest is a map from a hash algorithm (e.g. sha256) to the value in the material
  final Map<String, String>? digest;

  /// uri is the uri of the material
  final String? uri;

  MaterialContaineranalysisV1alpha1({
    this.digest,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory MaterialContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return MaterialContaineranalysisV1alpha1(
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
