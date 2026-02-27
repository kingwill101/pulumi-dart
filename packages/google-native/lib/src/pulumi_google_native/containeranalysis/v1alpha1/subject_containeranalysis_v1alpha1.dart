// ignore_for_file: unused_element, unnecessary_cast

/// Subject refers to the subject of the intoto statement
class SubjectContaineranalysisV1alpha1 {
  /// "": "" Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final Map<String, String>? digest;

  /// name is the name of the Subject used here
  final String? name;

  SubjectContaineranalysisV1alpha1({
    this.digest,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory SubjectContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SubjectContaineranalysisV1alpha1(
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
