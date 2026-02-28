// ignore_for_file: unused_element, unnecessary_cast

class SubjectResponse {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final Map<String, String> digest;
  final String name;

  /// Creates a new [SubjectResponse].
  /// [digest] `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  /// [name] Required.
  SubjectResponse({
    required this.digest,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['digest'] = digest;
    map['name'] = name;
    return map;
  }

  factory SubjectResponse.fromMap(Map<String, dynamic> map) {
    return SubjectResponse(
      digest: (map['digest'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
