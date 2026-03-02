// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectorSftpConfig {
  /// List of the public portions of the host keys that are used to identify the servers the connector is connected to.
  final pulumi.Input<List<String>> trustedHostKeys;
  /// Identifier for the secret in AWS Secrets Manager that contains the SFTP user's private key, and/or password.
  final pulumi.Input<String> userSecretId;

  /// Creates a new [GetConnectorSftpConfig].
  /// [trustedHostKeys] List of the public portions of the host keys that are used to identify the servers the connector is connected to.
  /// [userSecretId] Identifier for the secret in AWS Secrets Manager that contains the SFTP user's private key, and/or password.
  GetConnectorSftpConfig({
    required this.trustedHostKeys,
    required this.userSecretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedHostKeys': trustedHostKeys,
      'userSecretId': userSecretId,
    };
  }

  factory GetConnectorSftpConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectorSftpConfig(
      trustedHostKeys: ((map['trustedHostKeys'] as List).cast<String>()).input(),
      userSecretId: (map['userSecretId'] as String).input(),
    );
  }
}

