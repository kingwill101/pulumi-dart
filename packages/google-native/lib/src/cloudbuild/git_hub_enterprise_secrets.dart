// ignore_for_file: unused_element, unnecessary_cast

/// GitHubEnterpriseSecrets represents the names of all necessary secrets in Secret Manager for a GitHub Enterprise server. Format is: projects//secrets/.
class GitHubEnterpriseSecrets {
  /// The resource name for the OAuth client ID secret in Secret Manager.
  final String? oauthClientIdName;

  /// The resource name for the OAuth client ID secret version in Secret Manager.
  final String? oauthClientIdVersionName;

  /// The resource name for the OAuth secret in Secret Manager.
  final String? oauthSecretName;

  /// The resource name for the OAuth secret secret version in Secret Manager.
  final String? oauthSecretVersionName;

  /// The resource name for the private key secret.
  final String? privateKeyName;

  /// The resource name for the private key secret version.
  final String? privateKeyVersionName;

  /// The resource name for the webhook secret in Secret Manager.
  final String? webhookSecretName;

  /// The resource name for the webhook secret secret version in Secret Manager.
  final String? webhookSecretVersionName;

  /// Creates a new [GitHubEnterpriseSecrets].
  /// [oauthClientIdName] The resource name for the OAuth client ID secret in Secret Manager.
  /// [oauthClientIdVersionName] The resource name for the OAuth client ID secret version in Secret Manager.
  /// [oauthSecretName] The resource name for the OAuth secret in Secret Manager.
  /// [oauthSecretVersionName] The resource name for the OAuth secret secret version in Secret Manager.
  /// [privateKeyName] The resource name for the private key secret.
  /// [privateKeyVersionName] The resource name for the private key secret version.
  /// [webhookSecretName] The resource name for the webhook secret in Secret Manager.
  /// [webhookSecretVersionName] The resource name for the webhook secret secret version in Secret Manager.
  GitHubEnterpriseSecrets({
    this.oauthClientIdName,
    this.oauthClientIdVersionName,
    this.oauthSecretName,
    this.oauthSecretVersionName,
    this.privateKeyName,
    this.privateKeyVersionName,
    this.webhookSecretName,
    this.webhookSecretVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthClientIdName': ?oauthClientIdName,
      'oauthClientIdVersionName': ?oauthClientIdVersionName,
      'oauthSecretName': ?oauthSecretName,
      'oauthSecretVersionName': ?oauthSecretVersionName,
      'privateKeyName': ?privateKeyName,
      'privateKeyVersionName': ?privateKeyVersionName,
      'webhookSecretName': ?webhookSecretName,
      'webhookSecretVersionName': ?webhookSecretVersionName,
    };
  }

  factory GitHubEnterpriseSecrets.fromMap(Map<String, dynamic> map) {
    return GitHubEnterpriseSecrets(
      oauthClientIdName: map['oauthClientIdName'] == null
          ? null
          : map['oauthClientIdName'] as String,
      oauthClientIdVersionName: map['oauthClientIdVersionName'] == null
          ? null
          : map['oauthClientIdVersionName'] as String,
      oauthSecretName: map['oauthSecretName'] == null
          ? null
          : map['oauthSecretName'] as String,
      oauthSecretVersionName: map['oauthSecretVersionName'] == null
          ? null
          : map['oauthSecretVersionName'] as String,
      privateKeyName: map['privateKeyName'] == null
          ? null
          : map['privateKeyName'] as String,
      privateKeyVersionName: map['privateKeyVersionName'] == null
          ? null
          : map['privateKeyVersionName'] as String,
      webhookSecretName: map['webhookSecretName'] == null
          ? null
          : map['webhookSecretName'] as String,
      webhookSecretVersionName: map['webhookSecretVersionName'] == null
          ? null
          : map['webhookSecretVersionName'] as String,
    );
  }
}
