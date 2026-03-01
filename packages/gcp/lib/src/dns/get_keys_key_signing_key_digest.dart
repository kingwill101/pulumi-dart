// ignore_for_file: unused_element, unnecessary_cast

class GetKeysKeySigningKeyDigest {
  /// The base-16 encoded bytes of this digest. Suitable for use in a DS resource record.
  final String? digest;

  /// Specifies the algorithm used to calculate this digest. Possible values are `sha1`, `sha256` and `sha384`
  final String? type;

  /// Creates a new [GetKeysKeySigningKeyDigest].
  /// [digest] The base-16 encoded bytes of this digest. Suitable for use in a DS resource record.
  /// [type] Specifies the algorithm used to calculate this digest. Possible values are `sha1`, `sha256` and `sha384`
  GetKeysKeySigningKeyDigest({this.digest, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'digest': ?digest, 'type': ?type};
  }

  factory GetKeysKeySigningKeyDigest.fromMap(Map<String, dynamic> map) {
    return GetKeysKeySigningKeyDigest(
      digest: map['digest'] == null ? null : map['digest'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
