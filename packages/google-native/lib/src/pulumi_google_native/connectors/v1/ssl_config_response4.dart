// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'config_variable_response.dart';
import 'secret_response2.dart';

/// SSL Configuration of a connection
class SslConfigResponse4 {
  /// Additional SSL related field values
  final List<ConfigVariableResponse> additionalVariables;

  /// Type of Client Cert (PEM/JKS/.. etc.)
  final String clientCertType;

  /// Client Certificate
  final SecretResponse2 clientCertificate;

  /// Client Private Key
  final SecretResponse2 clientPrivateKey;

  /// Secret containing the passphrase protecting the Client Private Key
  final SecretResponse2 clientPrivateKeyPass;

  /// Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  final SecretResponse2 privateServerCertificate;

  /// Type of Server Cert (PEM/JKS/.. etc.)
  final String serverCertType;

  /// Trust Model of the SSL connection
  final String trustModel;

  /// Controls the ssl type for the given connector version.
  final String type;

  /// Bool for enabling SSL
  final bool useSsl;

  SslConfigResponse4({
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
        Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(
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

  factory SslConfigResponse4.fromMap(Map<String, dynamic> map) {
    return SslConfigResponse4(
      additionalVariables: Input.decodeList<ConfigVariableResponse>(
          map['additionalVariables'],
          (value) => ConfigVariableResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      clientCertType: map['clientCertType'] as String,
      clientCertificate: SecretResponse2.fromMap(
          (map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientPrivateKey: SecretResponse2.fromMap(
          (map['clientPrivateKey'] as Map).cast<String, dynamic>()),
      clientPrivateKeyPass: SecretResponse2.fromMap(
          (map['clientPrivateKeyPass'] as Map).cast<String, dynamic>()),
      privateServerCertificate: SecretResponse2.fromMap(
          (map['privateServerCertificate'] as Map).cast<String, dynamic>()),
      serverCertType: map['serverCertType'] as String,
      trustModel: map['trustModel'] as String,
      type: map['type'] as String,
      useSsl: map['useSsl'] as bool,
    );
  }
}
