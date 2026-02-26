// ignore_for_file: unused_element, unnecessary_cast

/// Subject refers to the subject of the intoto statement
class SubjectResponse2 {
  /// "": "" Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final Map<String, String> digest;

  /// name is the name of the Subject used here
  final String name;

  SubjectResponse2({
    required this.digest,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['digest'] = digest;
    map['name'] = name;
    return map;
  }

  factory SubjectResponse2.fromMap(Map<String, dynamic> map) {
    return SubjectResponse2(
      digest: (map['digest'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
