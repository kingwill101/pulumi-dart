// ignore_for_file: unused_element, unnecessary_cast

/// BitbucketServerSecrets represents the secrets in Secret Manager for a Bitbucket Server.
class BitbucketServerSecrets {
  /// The resource name for the admin access token's secret version.
  final String adminAccessTokenVersionName;

  /// The resource name for the read access token's secret version.
  final String readAccessTokenVersionName;

  /// Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final String webhookSecretVersionName;

  BitbucketServerSecrets({
    required this.adminAccessTokenVersionName,
    required this.readAccessTokenVersionName,
    required this.webhookSecretVersionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminAccessTokenVersionName'] = adminAccessTokenVersionName;
    map['readAccessTokenVersionName'] = readAccessTokenVersionName;
    map['webhookSecretVersionName'] = webhookSecretVersionName;
    return map;
  }

  factory BitbucketServerSecrets.fromMap(Map<String, dynamic> map) {
    return BitbucketServerSecrets(
      adminAccessTokenVersionName: map['adminAccessTokenVersionName'] as String,
      readAccessTokenVersionName: map['readAccessTokenVersionName'] as String,
      webhookSecretVersionName: map['webhookSecretVersionName'] as String,
    );
  }
}
