// ignore_for_file: unused_element, unnecessary_cast

class ConnectorSftpConfig {
  /// A list of public portion of the host key, or keys, that are used to authenticate the user to the external server to which you are connecting.(https://docs.aws.amazon.com/transfer/latest/userguide/API_SftpConnectorConfig.html)
  final List<String>? trustedHostKeys;

  /// The identifier for the secret (in AWS Secrets Manager) that contains the SFTP user's private key, password, or both. The identifier can be either the Amazon Resource Name (ARN) or the name of the secret.
  final String? userSecretId;

  /// Creates a new [ConnectorSftpConfig].
  /// [trustedHostKeys] A list of public portion of the host key, or keys, that are used to authenticate the user to the external server to which you are connecting.(https://docs.aws.amazon.com/transfer/latest/userguide/API_SftpConnectorConfig.html)
  /// [userSecretId] The identifier for the secret (in AWS Secrets Manager) that contains the SFTP user's private key, password, or both. The identifier can be either the Amazon Resource Name (ARN) or the name of the secret.
  ConnectorSftpConfig({this.trustedHostKeys, this.userSecretId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustedHostKeys': ?trustedHostKeys,
      'userSecretId': ?userSecretId,
    };
  }

  factory ConnectorSftpConfig.fromMap(Map<String, dynamic> map) {
    return ConnectorSftpConfig(
      trustedHostKeys: map['trustedHostKeys'] == null
          ? null
          : (map['trustedHostKeys'] as List).cast<String>(),
      userSecretId: map['userSecretId'] == null
          ? null
          : map['userSecretId'] as String,
    );
  }
}
