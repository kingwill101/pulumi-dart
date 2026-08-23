// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreBrowserCertificateLocationSecretsManager {
  /// ARN of the AWS Secrets Manager secret containing the certificate.
  final pulumi.Input<String> secretArn;

  /// Creates a new [AgentcoreBrowserCertificateLocationSecretsManager].
  /// [secretArn] ARN of the AWS Secrets Manager secret containing the certificate.
  const AgentcoreBrowserCertificateLocationSecretsManager({
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretArn': secretArn,
    };
  }

  factory AgentcoreBrowserCertificateLocationSecretsManager.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserCertificateLocationSecretsManager(
      secretArn: pulumi.Input.fromValue(map['secretArn'] as String),
    );
  }
}
