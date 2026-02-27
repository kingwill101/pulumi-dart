// ignore_for_file: unused_element, unnecessary_cast

/// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
class SubjectResponseContaineranalysisV1beta1 {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final Map<String, String> digest;

  /// Identifier to distinguish this artifact from others within the subject.
  final String name;

  SubjectResponseContaineranalysisV1beta1({
    required this.digest,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['digest'] = digest;
    map['name'] = name;
    return map;
  }

  factory SubjectResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SubjectResponseContaineranalysisV1beta1(
      digest: (map['digest'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
