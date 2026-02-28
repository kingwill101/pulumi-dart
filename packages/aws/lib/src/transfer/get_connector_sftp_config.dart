// ignore_for_file: unused_element, unnecessary_cast

class GetConnectorSftpConfig {
  /// List of the public portions of the host keys that are used to identify the servers the connector is connected to.
  final List<String> trustedHostKeys;

  /// Identifier for the secret in AWS Secrets Manager that contains the SFTP user's private key, and/or password.
  final String userSecretId;

  /// Creates a new [GetConnectorSftpConfig].
  /// [trustedHostKeys] List of the public portions of the host keys that are used to identify the servers the connector is connected to.
  /// [userSecretId] Identifier for the secret in AWS Secrets Manager that contains the SFTP user's private key, and/or password.
  GetConnectorSftpConfig({
    required this.trustedHostKeys,
    required this.userSecretId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['trustedHostKeys'] = trustedHostKeys;
    map['userSecretId'] = userSecretId;
    return map;
  }

  factory GetConnectorSftpConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectorSftpConfig(
      trustedHostKeys: (map['trustedHostKeys'] as List).cast<String>(),
      userSecretId: map['userSecretId'] as String,
    );
  }
}
