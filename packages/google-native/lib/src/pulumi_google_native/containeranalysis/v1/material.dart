// ignore_for_file: unused_element, unnecessary_cast

class Material {
  final Map<String, String>? digest;
  final String? uri;

  Material({
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

  factory Material.fromMap(Map<String, dynamic> map) {
    return Material(
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
