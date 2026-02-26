// ignore_for_file: unused_element, unnecessary_cast

class AuthorityConfigSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedConfigX509Config"" pulumi-lang-dotnet=""NestedConfigX509Config"" pulumi-lang-go=""nestedConfigX509Config"" pulumi-lang-python=""nested_config_x509_config"" pulumi-lang-yaml=""nestedConfigX509Config"" pulumi-lang-java=""nestedConfigX509Config"">"nested_config_x509_config"</span>></a>The <span pulumi-lang-nodejs="`x509Config`" pulumi-lang-dotnet="`X509Config`" pulumi-lang-go="`x509Config`" pulumi-lang-python="`x509_config`" pulumi-lang-yaml="`x509Config`" pulumi-lang-java="`x509Config`">`x509_config`</span> block supports:
  final String? keyId;

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
