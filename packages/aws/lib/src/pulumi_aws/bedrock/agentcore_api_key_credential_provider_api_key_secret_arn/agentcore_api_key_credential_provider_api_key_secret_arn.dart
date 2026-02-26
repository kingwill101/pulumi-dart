// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreApiKeyCredentialProviderApiKeySecretArn {
  /// ARN of the secret in AWS Secrets Manager.
  final String secretArn;

  AgentcoreApiKeyCredentialProviderApiKeySecretArn({
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretArn'] = secretArn;
    return map;
  }

  factory AgentcoreApiKeyCredentialProviderApiKeySecretArn.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreApiKeyCredentialProviderApiKeySecretArn(
      secretArn: map['secretArn'] as String,
    );
  }
}
