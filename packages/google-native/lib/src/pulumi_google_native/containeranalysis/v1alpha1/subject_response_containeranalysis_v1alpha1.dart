// ignore_for_file: unused_element, unnecessary_cast

/// Subject refers to the subject of the intoto statement
class SubjectResponseContaineranalysisV1alpha1 {
  /// "": "" Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final Map<String, String> digest;

  /// name is the name of the Subject used here
  final String name;

  SubjectResponseContaineranalysisV1alpha1({
    required this.digest,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['digest'] = digest;
    map['name'] = name;
    return map;
  }

  factory SubjectResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SubjectResponseContaineranalysisV1alpha1(
      digest: (map['digest'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
