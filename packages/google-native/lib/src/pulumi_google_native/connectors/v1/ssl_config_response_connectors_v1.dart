// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_variable_response.dart';
import 'secret_response_connectors_v1.dart';

/// SSL Configuration of a connection
class SslConfigResponseConnectorsV1 {
  /// Additional SSL related field values
  final List<ConfigVariableResponse> additionalVariables;

  /// Type of Client Cert (PEM/JKS/.. etc.)
  final String clientCertType;

  /// Client Certificate
  final SecretResponseConnectorsV1 clientCertificate;

  /// Client Private Key
  final SecretResponseConnectorsV1 clientPrivateKey;

  /// Secret containing the passphrase protecting the Client Private Key
  final SecretResponseConnectorsV1 clientPrivateKeyPass;

  /// Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  final SecretResponseConnectorsV1 privateServerCertificate;

  /// Type of Server Cert (PEM/JKS/.. etc.)
  final String serverCertType;

  /// Trust Model of the SSL connection
  final String trustModel;

  /// Controls the ssl type for the given connector version.
  final String type;

  /// Bool for enabling SSL
  final bool useSsl;

  SslConfigResponseConnectorsV1({
    required this.additionalVariables,
    required this.clientCertType,
    required this.clientCertificate,
    required this.clientPrivateKey,
    required this.clientPrivateKeyPass,
    required this.privateServerCertificate,
    required this.serverCertType,
    required this.trustModel,
    required this.type,
    required this.useSsl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalVariables'] =
        pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(
            additionalVariables, (value) => value.toMap());
    map['clientCertType'] = clientCertType;
    map['clientCertificate'] = clientCertificate.toMap();
    map['clientPrivateKey'] = clientPrivateKey.toMap();
    map['clientPrivateKeyPass'] = clientPrivateKeyPass.toMap();
    map['privateServerCertificate'] = privateServerCertificate.toMap();
    map['serverCertType'] = serverCertType;
    map['trustModel'] = trustModel;
    map['type'] = type;
    map['useSsl'] = useSsl;
    return map;
  }

  factory SslConfigResponseConnectorsV1.fromMap(Map<String, dynamic> map) {
    return SslConfigResponseConnectorsV1(
      additionalVariables: pulumi.Input.decodeList<ConfigVariableResponse>(
          map['additionalVariables'],
          (value) => ConfigVariableResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      clientCertType: map['clientCertType'] as String,
      clientCertificate: SecretResponseConnectorsV1.fromMap(
          (map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientPrivateKey: SecretResponseConnectorsV1.fromMap(
          (map['clientPrivateKey'] as Map).cast<String, dynamic>()),
      clientPrivateKeyPass: SecretResponseConnectorsV1.fromMap(
          (map['clientPrivateKeyPass'] as Map).cast<String, dynamic>()),
      privateServerCertificate: SecretResponseConnectorsV1.fromMap(
          (map['privateServerCertificate'] as Map).cast<String, dynamic>()),
      serverCertType: map['serverCertType'] as String,
      trustModel: map['trustModel'] as String,
      type: map['type'] as String,
      useSsl: map['useSsl'] as bool,
    );
  }
}
