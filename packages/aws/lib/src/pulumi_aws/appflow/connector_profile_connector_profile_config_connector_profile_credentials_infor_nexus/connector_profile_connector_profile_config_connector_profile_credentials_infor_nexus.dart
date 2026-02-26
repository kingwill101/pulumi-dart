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

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus({
    required this.accessKeyId,
    required this.datakey,
    required this.secretAccessKey,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessKeyId'] = accessKeyId;
    map['datakey'] = datakey;
    map['secretAccessKey'] = secretAccessKey;
    map['userId'] = userId;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus(
      accessKeyId: map['accessKeyId'] as String,
      datakey: map['datakey'] as String,
      secretAccessKey: map['secretAccessKey'] as String,
      userId: map['userId'] as String,
    );
  }
}
