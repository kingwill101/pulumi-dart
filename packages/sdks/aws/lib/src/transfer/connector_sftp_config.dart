// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorSftpConfig {
  /// List of public portion of the host key, or keys, that are used to authenticate the user to the external server to which you are connecting.(https://docs.aws.amazon.com/transfer/latest/userguide/API_SftpConnectorConfig.html)
  final pulumi.Input<List<String>>? trustedHostKeys;
  /// Identifier for the secret (in AWS Secrets Manager) that contains the SFTP user's private key, password, or both. The identifier can be either the Amazon Resource Name (ARN) or the name of the secret.
  final pulumi.Input<String>? userSecretId;

  /// Creates a new [ConnectorSftpConfig].
  /// [trustedHostKeys] List of public portion of the host key, or keys, that are used to authenticate the user to the external server to which you are connecting.(https://docs.aws.amazon.com/transfer/latest/userguide/API_SftpConnectorConfig.html)
  /// [userSecretId] Identifier for the secret (in AWS Secrets Manager) that contains the SFTP user's private key, password, or both. The identifier can be either the Amazon Resource Name (ARN) or the name of the secret.
  const ConnectorSftpConfig({
    this.trustedHostKeys,
    this.userSecretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedHostKeys': ?trustedHostKeys,
      'userSecretId': ?userSecretId,
    };
  }

  factory ConnectorSftpConfig.fromMap(Map<String, dynamic> map) {
    return ConnectorSftpConfig(
      trustedHostKeys: (() { final guardedValue = map['trustedHostKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userSecretId: (() { final guardedValue = map['userSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
