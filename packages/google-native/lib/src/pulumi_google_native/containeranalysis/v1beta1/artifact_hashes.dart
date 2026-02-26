// ignore_for_file: unused_element, unnecessary_cast

/// Defines a hash object for use in Materials and Products.
class ArtifactHashes {
  final String? sha256;

  ArtifactHashes({
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sha256Value = sha256;
    if (sha256Value != null) {
      map['sha256'] = sha256Value;
    }
    return map;
  }

  factory ArtifactHashes.fromMap(Map<String, dynamic> map) {
    return ArtifactHashes(
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}
