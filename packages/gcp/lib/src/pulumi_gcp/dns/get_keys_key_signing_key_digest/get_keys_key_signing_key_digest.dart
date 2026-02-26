// ignore_for_file: unused_element, unnecessary_cast

class GetKeysKeySigningKeyDigest {
  /// The base-16 encoded bytes of this digest. Suitable for use in a DS resource record.
  final String? digest;

  /// Specifies the algorithm used to calculate this digest. Possible values are <span pulumi-lang-nodejs="`sha1`" pulumi-lang-dotnet="`Sha1`" pulumi-lang-go="`sha1`" pulumi-lang-python="`sha1`" pulumi-lang-yaml="`sha1`" pulumi-lang-java="`sha1`">`sha1`</span>, <span pulumi-lang-nodejs="`sha256`" pulumi-lang-dotnet="`Sha256`" pulumi-lang-go="`sha256`" pulumi-lang-python="`sha256`" pulumi-lang-yaml="`sha256`" pulumi-lang-java="`sha256`">`sha256`</span> and <span pulumi-lang-nodejs="`sha384`" pulumi-lang-dotnet="`Sha384`" pulumi-lang-go="`sha384`" pulumi-lang-python="`sha384`" pulumi-lang-yaml="`sha384`" pulumi-lang-java="`sha384`">`sha384`</span>
  final String? type;

  GetKeysKeySigningKeyDigest({
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

  factory GetKeysKeySigningKeyDigest.fromMap(Map<String, dynamic> map) {
    return GetKeysKeySigningKeyDigest(
      digest: map['digest'] == null ? null : map['digest'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
