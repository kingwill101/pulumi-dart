// ignore_for_file: unused_element, unnecessary_cast

import 'connection_gitlab_config_authorizer_credential.dart';
import 'connection_gitlab_config_read_authorizer_credential.dart';

class ConnectionGitlabConfig {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGitlabConfigAuthorizerCredential authorizerCredential;

  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGitlabConfigReadAuthorizerCredential readAuthorizerCredential;

  /// Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  /// formatted as `projects/*/secrets/*/versions/*`. This is used to validate
  /// webhooks.
  final String webhookSecretSecretVersion;

  /// Creates a new [ConnectionGitlabConfig].
  /// [authorizerCredential] Represents a personal access token that authorized the Connection,
  /// [readAuthorizerCredential] Represents a personal access token that authorized the Connection,
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  ConnectionGitlabConfig({
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizerCredential'] = authorizerCredential.toMap();
    map['readAuthorizerCredential'] = readAuthorizerCredential.toMap();
    map['webhookSecretSecretVersion'] = webhookSecretSecretVersion;
    return map;
  }

  factory ConnectionGitlabConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabConfig(
      authorizerCredential: ConnectionGitlabConfigAuthorizerCredential.fromMap(
          (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      readAuthorizerCredential:
          ConnectionGitlabConfigReadAuthorizerCredential.fromMap(
              (map['readAuthorizerCredential'] as Map).cast<String, dynamic>()),
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}
