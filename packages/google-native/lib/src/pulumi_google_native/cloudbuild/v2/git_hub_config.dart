// ignore_for_file: unused_element, unnecessary_cast

import 'oauth_credential.dart';

/// Configuration for connections to github.com.
class GitHubConfig {
  /// GitHub App installation id.
  final String? appInstallationId;

  /// OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  final OAuthCredential? authorizerCredential;

  GitHubConfig({
    this.appInstallationId,
    this.authorizerCredential,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appInstallationIdValue = appInstallationId;
    if (appInstallationIdValue != null) {
      map['appInstallationId'] = appInstallationIdValue;
    }
    final authorizerCredentialValue = authorizerCredential;
    if (authorizerCredentialValue != null) {
      map['authorizerCredential'] = authorizerCredentialValue.toMap();
    }
    return map;
  }

  factory GitHubConfig.fromMap(Map<String, dynamic> map) {
    return GitHubConfig(
      appInstallationId: map['appInstallationId'] == null
          ? null
          : map['appInstallationId'] as String,
      authorizerCredential: map['authorizerCredential'] == null
          ? null
          : OAuthCredential.fromMap(
              (map['authorizerCredential'] as Map).cast<String, dynamic>()),
    );
  }
}
