// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreCodeInterpreterCertificateLocationSecretsManager {
  /// ARN of the AWS Secrets Manager secret containing the certificate.
  final pulumi.Input<String> secretArn;

  /// Creates a new [AgentcoreCodeInterpreterCertificateLocationSecretsManager].
  /// [secretArn] ARN of the AWS Secrets Manager secret containing the certificate.
  const AgentcoreCodeInterpreterCertificateLocationSecretsManager({
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': secretArn,
    };
  }

  factory AgentcoreCodeInterpreterCertificateLocationSecretsManager.fromMap(Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterCertificateLocationSecretsManager(
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
