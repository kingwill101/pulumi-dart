// ignore_for_file: unused_element, unnecessary_cast


/// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
class SubjectContaineranalysisV1beta1 {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final Map<String, String>? digest;
  /// Identifier to distinguish this artifact from others within the subject.
  final String? name;

  /// Creates a new [SubjectContaineranalysisV1beta1].
  /// [digest] `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  /// [name] Identifier to distinguish this artifact from others within the subject.
  SubjectContaineranalysisV1beta1({
    this.digest,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'name': ?name,
    };
  }

  factory SubjectContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SubjectContaineranalysisV1beta1(
      digest: map['digest'] == null ? null : (map['digest'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

