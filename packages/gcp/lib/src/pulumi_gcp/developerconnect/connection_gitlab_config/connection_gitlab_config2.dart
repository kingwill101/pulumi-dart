// ignore_for_file: unused_element, unnecessary_cast

import '../connection_gitlab_config_authorizer_credential/connection_gitlab_config_authorizer_credential2.dart';
import '../connection_gitlab_config_read_authorizer_credential/connection_gitlab_config_read_authorizer_credential2.dart';

class ConnectionGitlabConfig2 {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGitlabConfigAuthorizerCredential2 authorizerCredential;

  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionGitlabConfigReadAuthorizerCredential2
      readAuthorizerCredential;

  /// Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  /// formatted as `projects/*/secrets/*/versions/*`. This is used to validate
  /// webhooks.
  final String webhookSecretSecretVersion;

  ConnectionGitlabConfig2({
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

  factory ConnectionGitlabConfig2.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabConfig2(
      authorizerCredential: ConnectionGitlabConfigAuthorizerCredential2.fromMap(
          (map['authorizerCredential'] as Map).cast<String, dynamic>()),
      readAuthorizerCredential:
          ConnectionGitlabConfigReadAuthorizerCredential2.fromMap(
              (map['readAuthorizerCredential'] as Map).cast<String, dynamic>()),
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
    );
  }
}
