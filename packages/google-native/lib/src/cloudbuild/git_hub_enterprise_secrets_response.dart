// ignore_for_file: unused_element, unnecessary_cast

/// GitHubEnterpriseSecrets represents the names of all necessary secrets in Secret Manager for a GitHub Enterprise server. Format is: projects//secrets/.
class GitHubEnterpriseSecretsResponse {
  /// The resource name for the OAuth client ID secret in Secret Manager.
  final String oauthClientIdName;

  /// The resource name for the OAuth client ID secret version in Secret Manager.
  final String oauthClientIdVersionName;

  /// The resource name for the OAuth secret in Secret Manager.
  final String oauthSecretName;

  /// The resource name for the OAuth secret secret version in Secret Manager.
  final String oauthSecretVersionName;

  /// The resource name for the private key secret.
  final String privateKeyName;

  /// The resource name for the private key secret version.
  final String privateKeyVersionName;

  /// The resource name for the webhook secret in Secret Manager.
  final String webhookSecretName;

  /// The resource name for the webhook secret secret version in Secret Manager.
  final String webhookSecretVersionName;

  /// Creates a new [GitHubEnterpriseSecretsResponse].
  /// [oauthClientIdName] The resource name for the OAuth client ID secret in Secret Manager.
  /// [oauthClientIdVersionName] The resource name for the OAuth client ID secret version in Secret Manager.
  /// [oauthSecretName] The resource name for the OAuth secret in Secret Manager.
  /// [oauthSecretVersionName] The resource name for the OAuth secret secret version in Secret Manager.
  /// [privateKeyName] The resource name for the private key secret.
  /// [privateKeyVersionName] The resource name for the private key secret version.
  /// [webhookSecretName] The resource name for the webhook secret in Secret Manager.
  /// [webhookSecretVersionName] The resource name for the webhook secret secret version in Secret Manager.
  GitHubEnterpriseSecretsResponse({
    required this.oauthClientIdName,
    required this.oauthClientIdVersionName,
    required this.oauthSecretName,
    required this.oauthSecretVersionName,
    required this.privateKeyName,
    required this.privateKeyVersionName,
    required this.webhookSecretName,
    required this.webhookSecretVersionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oauthClientIdName'] = oauthClientIdName;
    map['oauthClientIdVersionName'] = oauthClientIdVersionName;
    map['oauthSecretName'] = oauthSecretName;
    map['oauthSecretVersionName'] = oauthSecretVersionName;
    map['privateKeyName'] = privateKeyName;
    map['privateKeyVersionName'] = privateKeyVersionName;
    map['webhookSecretName'] = webhookSecretName;
    map['webhookSecretVersionName'] = webhookSecretVersionName;
    return map;
  }

  factory GitHubEnterpriseSecretsResponse.fromMap(Map<String, dynamic> map) {
    return GitHubEnterpriseSecretsResponse(
      oauthClientIdName: map['oauthClientIdName'] as String,
      oauthClientIdVersionName: map['oauthClientIdVersionName'] as String,
      oauthSecretName: map['oauthSecretName'] as String,
      oauthSecretVersionName: map['oauthSecretVersionName'] as String,
      privateKeyName: map['privateKeyName'] as String,
      privateKeyVersionName: map['privateKeyVersionName'] as String,
      webhookSecretName: map['webhookSecretName'] as String,
      webhookSecretVersionName: map['webhookSecretVersionName'] as String,
    );
  }
}
