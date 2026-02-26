// ignore_for_file: unused_element, unnecessary_cast

/// GitLabSecrets represents the secrets in Secret Manager for a GitLab integration.
class GitLabSecrets {
  /// The resource name for the api access token’s secret version
  final String apiAccessTokenVersion;

  /// Immutable. API Key that will be attached to webhook requests from GitLab to Cloud Build.
  final String apiKeyVersion;

  /// The resource name for the read access token’s secret version
  final String readAccessTokenVersion;

  /// Immutable. The resource name for the webhook secret’s secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another GitLabConfig.
  final String webhookSecretVersion;

  GitLabSecrets({
    required this.apiAccessTokenVersion,
    required this.apiKeyVersion,
    required this.readAccessTokenVersion,
    required this.webhookSecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiAccessTokenVersion'] = apiAccessTokenVersion;
    map['apiKeyVersion'] = apiKeyVersion;
    map['readAccessTokenVersion'] = readAccessTokenVersion;
    map['webhookSecretVersion'] = webhookSecretVersion;
    return map;
  }

  factory GitLabSecrets.fromMap(Map<String, dynamic> map) {
    return GitLabSecrets(
      apiAccessTokenVersion: map['apiAccessTokenVersion'] as String,
      apiKeyVersion: map['apiKeyVersion'] as String,
      readAccessTokenVersion: map['readAccessTokenVersion'] as String,
      webhookSecretVersion: map['webhookSecretVersion'] as String,
    );
  }
}
