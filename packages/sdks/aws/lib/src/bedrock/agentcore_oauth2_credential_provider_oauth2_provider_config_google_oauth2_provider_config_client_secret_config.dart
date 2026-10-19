// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig {
  /// JSON key used to extract the client secret value from the Secrets Manager secret.
  final pulumi.Input<String> jsonKey;
  /// ID of the AWS Secrets Manager secret that stores the client secret value.
  final pulumi.Input<String> secretId;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig].
  /// [jsonKey] JSON key used to extract the client secret value from the Secrets Manager secret.
  /// [secretId] ID of the AWS Secrets Manager secret that stores the client secret value.
  const AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig({
    required this.jsonKey,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonKey': jsonKey,
      'secretId': secretId,
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig(
      jsonKey: pulumi.Input.fromValue(map['jsonKey'] as String),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
