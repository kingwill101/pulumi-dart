// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus {
  /// The Access Key portion of the credentials.
  final pulumi.Input<String> accessKeyId;
  /// Encryption keys used to encrypt data.
  final pulumi.Input<String> datakey;
  /// The secret key used to sign requests.
  final pulumi.Input<String> secretAccessKey;
  /// Identifier for the user.
  final pulumi.Input<String> userId;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus].
  /// [accessKeyId] The Access Key portion of the credentials.
  /// [datakey] Encryption keys used to encrypt data.
  /// [secretAccessKey] The secret key used to sign requests.
  /// [userId] Identifier for the user.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsInforNexus({
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
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      datakey: pulumi.Input.fromValue(map['datakey'] as String),
      secretAccessKey: pulumi.Input.fromValue(map['secretAccessKey'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}

