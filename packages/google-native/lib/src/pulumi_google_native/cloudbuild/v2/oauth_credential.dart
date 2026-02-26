// ignore_for_file: unused_element, unnecessary_cast

/// Represents an OAuth token of the account that authorized the Connection, and associated metadata.
class OAuthCredential {
  /// A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final String? oauthTokenSecretVersion;

  OAuthCredential({
    this.oauthTokenSecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oauthTokenSecretVersionValue = oauthTokenSecretVersion;
    if (oauthTokenSecretVersionValue != null) {
      map['oauthTokenSecretVersion'] = oauthTokenSecretVersionValue;
    }
    return map;
  }

  factory OAuthCredential.fromMap(Map<String, dynamic> map) {
    return OAuthCredential(
      oauthTokenSecretVersion: map['oauthTokenSecretVersion'] == null
          ? null
          : map['oauthTokenSecretVersion'] as String,
    );
  }
}
