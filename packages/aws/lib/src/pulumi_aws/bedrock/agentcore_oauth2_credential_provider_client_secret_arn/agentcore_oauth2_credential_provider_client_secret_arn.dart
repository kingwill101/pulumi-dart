// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreOauth2CredentialProviderClientSecretArn {
  /// ARN of the secret in AWS Secrets Manager.
  final String secretArn;

  AgentcoreOauth2CredentialProviderClientSecretArn({
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretArn'] = secretArn;
    return map;
  }

  factory AgentcoreOauth2CredentialProviderClientSecretArn.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderClientSecretArn(
      secretArn: map['secretArn'] as String,
    );
  }
}
