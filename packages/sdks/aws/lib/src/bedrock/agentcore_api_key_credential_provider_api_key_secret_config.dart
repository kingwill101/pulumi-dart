// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreApiKeyCredentialProviderApiKeySecretConfig {
  /// JSON key used to extract the secret value from the AWS Secrets Manager secret.
  final pulumi.Input<String> jsonKey;
  /// ID of the AWS Secrets Manager secret that stores the secret value.
  final pulumi.Input<String> secretId;

  /// Creates a new [AgentcoreApiKeyCredentialProviderApiKeySecretConfig].
  /// [jsonKey] JSON key used to extract the secret value from the AWS Secrets Manager secret.
  /// [secretId] ID of the AWS Secrets Manager secret that stores the secret value.
  const AgentcoreApiKeyCredentialProviderApiKeySecretConfig({
    required this.jsonKey,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonKey': jsonKey,
      'secretId': secretId,
    };
  }

  factory AgentcoreApiKeyCredentialProviderApiKeySecretConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreApiKeyCredentialProviderApiKeySecretConfig(
      jsonKey: pulumi.Input.fromValue(map['jsonKey'] as String),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
