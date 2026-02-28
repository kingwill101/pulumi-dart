// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreApiKeyCredentialProviderApiKeySecretArn {
  /// ARN of the secret in AWS Secrets Manager.
  final String secretArn;

  /// Creates a new [AgentcoreApiKeyCredentialProviderApiKeySecretArn].
  /// [secretArn] ARN of the secret in AWS Secrets Manager.
  AgentcoreApiKeyCredentialProviderApiKeySecretArn({
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': secretArn,
    };
  }

  factory AgentcoreApiKeyCredentialProviderApiKeySecretArn.fromMap(Map<String, dynamic> map) {
    return AgentcoreApiKeyCredentialProviderApiKeySecretArn(
      secretArn: map['secretArn'] as String,
    );
  }
}

