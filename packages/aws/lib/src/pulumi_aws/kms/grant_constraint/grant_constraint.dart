// ignore_for_file: unused_element, unnecessary_cast

class GrantConstraint {
  /// A list of key-value pairs that must match the encryption context in subsequent cryptographic operation requests. The grant allows the operation only when the encryption context in the request is the same as the encryption context specified in this constraint. Conflicts with <span pulumi-lang-nodejs="`encryptionContextSubset`" pulumi-lang-dotnet="`EncryptionContextSubset`" pulumi-lang-go="`encryptionContextSubset`" pulumi-lang-python="`encryption_context_subset`" pulumi-lang-yaml="`encryptionContextSubset`" pulumi-lang-java="`encryptionContextSubset`">`encryption_context_subset`</span>.
  final Map<String, String>? encryptionContextEquals;

  /// A list of key-value pairs that must be included in the encryption context of subsequent cryptographic operation requests. The grant allows the cryptographic operation only when the encryption context in the request includes the key-value pairs specified in this constraint, although it can include additional key-value pairs. Conflicts with <span pulumi-lang-nodejs="`encryptionContextEquals`" pulumi-lang-dotnet="`EncryptionContextEquals`" pulumi-lang-go="`encryptionContextEquals`" pulumi-lang-python="`encryption_context_equals`" pulumi-lang-yaml="`encryptionContextEquals`" pulumi-lang-java="`encryptionContextEquals`">`encryption_context_equals`</span>.
  final Map<String, String>? encryptionContextSubset;

  GrantConstraint({
    this.encryptionContextEquals,
    this.encryptionContextSubset,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionContextEqualsValue = encryptionContextEquals;
    if (encryptionContextEqualsValue != null) {
      map['encryptionContextEquals'] = encryptionContextEqualsValue;
    }
    final encryptionContextSubsetValue = encryptionContextSubset;
    if (encryptionContextSubsetValue != null) {
      map['encryptionContextSubset'] = encryptionContextSubsetValue;
    }
    return map;
  }

  factory GrantConstraint.fromMap(Map<String, dynamic> map) {
    return GrantConstraint(
      encryptionContextEquals: map['encryptionContextEquals'] == null
          ? null
          : (map['encryptionContextEquals'] as Map).cast<String, String>(),
      encryptionContextSubset: map['encryptionContextSubset'] == null
          ? null
          : (map['encryptionContextSubset'] as Map).cast<String, String>(),
    );
  }
}
