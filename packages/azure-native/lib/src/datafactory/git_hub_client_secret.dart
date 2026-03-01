// ignore_for_file: unused_element, unnecessary_cast


/// Client secret information for factory's bring your own app repository configuration.
class GitHubClientSecret {
  /// Bring your own app client secret AKV URL.
  final String? byoaSecretAkvUrl;
  /// Bring your own app client secret name in AKV.
  final String? byoaSecretName;

  /// Creates a new [GitHubClientSecret].
  /// [byoaSecretAkvUrl] Bring your own app client secret AKV URL.
  /// [byoaSecretName] Bring your own app client secret name in AKV.
  GitHubClientSecret({
    this.byoaSecretAkvUrl,
    this.byoaSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'byoaSecretAkvUrl': ?byoaSecretAkvUrl,
      'byoaSecretName': ?byoaSecretName,
    };
  }

  factory GitHubClientSecret.fromMap(Map<String, dynamic> map) {
    return GitHubClientSecret(
      byoaSecretAkvUrl: map['byoaSecretAkvUrl'] == null ? null : map['byoaSecretAkvUrl'] as String,
      byoaSecretName: map['byoaSecretName'] == null ? null : map['byoaSecretName'] as String,
    );
  }
}

