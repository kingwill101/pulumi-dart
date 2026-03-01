// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus {
  /// The Access Key portion of the credentials.
  final String accessKeyId;
  /// Encryption keys used to encrypt data.
  final String datakey;
  /// The secret key used to sign requests.
  final String secretAccessKey;
  /// Identifier for the user.
  final String userId;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus].
  /// [accessKeyId] The Access Key portion of the credentials.
  /// [datakey] Encryption keys used to encrypt data.
  /// [secretAccessKey] The secret key used to sign requests.
  /// [userId] Identifier for the user.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus({
    required this.accessKeyId,
    required this.datakey,
    required this.secretAccessKey,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'datakey': datakey,
      'secretAccessKey': secretAccessKey,
      'userId': userId,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus(
      accessKeyId: map['accessKeyId'] as String,
      datakey: map['datakey'] as String,
      secretAccessKey: map['secretAccessKey'] as String,
      userId: map['userId'] as String,
    );
  }
}

