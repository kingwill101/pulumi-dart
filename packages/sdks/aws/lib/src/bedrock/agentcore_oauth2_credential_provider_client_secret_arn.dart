// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOauth2CredentialProviderClientSecretArn {
  /// ARN of the secret in AWS Secrets Manager.
  final pulumi.Input<String> secretArn;

  /// Creates a new [AgentcoreOauth2CredentialProviderClientSecretArn].
  /// [secretArn] ARN of the secret in AWS Secrets Manager.
  const AgentcoreOauth2CredentialProviderClientSecretArn({
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': secretArn,
    };
  }

  factory AgentcoreOauth2CredentialProviderClientSecretArn.fromMap(Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderClientSecretArn(
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}

