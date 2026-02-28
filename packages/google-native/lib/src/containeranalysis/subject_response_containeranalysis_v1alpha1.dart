// ignore_for_file: unused_element, unnecessary_cast


/// Subject refers to the subject of the intoto statement
class SubjectResponseContaineranalysisV1alpha1 {
  /// "": "" Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final Map<String, String> digest;
  /// name is the name of the Subject used here
  final String name;

  /// Creates a new [SubjectResponseContaineranalysisV1alpha1].
  /// [digest] "": "" Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  /// [name] name is the name of the Subject used here
  SubjectResponseContaineranalysisV1alpha1({
    required this.digest,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'name': name,
    };
  }

  factory SubjectResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SubjectResponseContaineranalysisV1alpha1(
      digest: (map['digest'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}

