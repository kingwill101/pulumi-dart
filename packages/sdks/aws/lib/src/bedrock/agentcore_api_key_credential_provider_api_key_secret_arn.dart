// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreApiKeyCredentialProviderApiKeySecretArn {
  /// ARN of the secret in AWS Secrets Manager.
  final pulumi.Input<String> secretArn;

  /// Creates a new [AgentcoreApiKeyCredentialProviderApiKeySecretArn].
  /// [secretArn] ARN of the secret in AWS Secrets Manager.
  AgentcoreApiKeyCredentialProviderApiKeySecretArn({required this.secretArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretArn': secretArn};
  }

  factory AgentcoreApiKeyCredentialProviderApiKeySecretArn.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreApiKeyCredentialProviderApiKeySecretArn(
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
