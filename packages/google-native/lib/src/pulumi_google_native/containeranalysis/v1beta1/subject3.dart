// ignore_for_file: unused_element, unnecessary_cast

/// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
class Subject3 {
  /// `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/attestation/blob/main/spec/field_types.md#DigestSet
  final Map<String, String>? digest;

  /// Identifier to distinguish this artifact from others within the subject.
  final String? name;

  Subject3({
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

  factory Subject3.fromMap(Map<String, dynamic> map) {
    return Subject3(
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
