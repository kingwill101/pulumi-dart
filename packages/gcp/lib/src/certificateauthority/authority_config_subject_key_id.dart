// ignore_for_file: unused_element, unnecessary_cast

class AuthorityConfigSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  ///
  /// <a name="nested_config_x509_config"></a>The `x509_config` block supports:
  final String? keyId;

  /// Creates a new [AuthorityConfigSubjectKeyId].
  /// [keyId] The value of the KeyId in lowercase hexadecimal.
  AuthorityConfigSubjectKeyId({
    this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyIdValue = keyId;
    if (keyIdValue != null) {
      map['keyId'] = keyIdValue;
    }
    return map;
  }

  factory AuthorityConfigSubjectKeyId.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigSubjectKeyId(
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
    );
  }
}
