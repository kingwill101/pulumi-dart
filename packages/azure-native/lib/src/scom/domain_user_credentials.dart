// ignore_for_file: unused_element, unnecessary_cast


/// Get Domain user name and password from key vault
class DomainUserCredentials {
  /// Key vault url to get the domain username and password
  final String? keyVaultUrl;
  /// Domain Password secret
  final String? passwordSecret;
  /// Domain user name secret
  final String? userNameSecret;

  /// Creates a new [DomainUserCredentials].
  /// [keyVaultUrl] Key vault url to get the domain username and password
  /// [passwordSecret] Domain Password secret
  /// [userNameSecret] Domain user name secret
  DomainUserCredentials({
    this.keyVaultUrl,
    this.passwordSecret,
    this.userNameSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUrl': ?keyVaultUrl,
      'passwordSecret': ?passwordSecret,
      'userNameSecret': ?userNameSecret,
    };
  }

  factory DomainUserCredentials.fromMap(Map<String, dynamic> map) {
    return DomainUserCredentials(
      keyVaultUrl: map['keyVaultUrl'] == null ? null : map['keyVaultUrl'] as String,
      passwordSecret: map['passwordSecret'] == null ? null : map['passwordSecret'] as String,
      userNameSecret: map['userNameSecret'] == null ? null : map['userNameSecret'] as String,
    );
  }
}

