// ignore_for_file: unused_element, unnecessary_cast

class GetKeysZoneSigningKeyDigest {
  /// The base-16 encoded bytes of this digest. Suitable for use in a DS resource record.
  final String? digest;

  /// Specifies the algorithm used to calculate this digest. Possible values are `sha1`, `sha256` and `sha384`
  final String? type;

  GetKeysZoneSigningKeyDigest({
    this.digest,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetKeysZoneSigningKeyDigest.fromMap(Map<String, dynamic> map) {
    return GetKeysZoneSigningKeyDigest(
      digest: map['digest'] == null ? null : map['digest'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
