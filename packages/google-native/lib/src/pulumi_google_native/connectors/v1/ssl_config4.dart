// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'config_variable.dart';
import 'secret2.dart';
import 'ssl_config_client_cert_type.dart';
import 'ssl_config_server_cert_type.dart';
import 'ssl_config_trust_model.dart';
import 'ssl_config_type.dart';

/// SSL Configuration of a connection
class SslConfig4 {
  /// Additional SSL related field values
  final List<ConfigVariable>? additionalVariables;

  /// Type of Client Cert (PEM/JKS/.. etc.)
  final SslConfigClientCertType? clientCertType;

  /// Client Certificate
  final Secret2? clientCertificate;

  /// Client Private Key
  final Secret2? clientPrivateKey;

  /// Secret containing the passphrase protecting the Client Private Key
  final Secret2? clientPrivateKeyPass;

  /// Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  final Secret2? privateServerCertificate;

  /// Type of Server Cert (PEM/JKS/.. etc.)
  final SslConfigServerCertType? serverCertType;

  /// Trust Model of the SSL connection
  final SslConfigTrustModel? trustModel;

  /// Controls the ssl type for the given connector version.
  final SslConfigType? type;

  /// Bool for enabling SSL
  final bool? useSsl;

  SslConfig4({
    this.additionalVariables,
    this.clientCertType,
    this.clientCertificate,
    this.clientPrivateKey,
    this.clientPrivateKeyPass,
    this.privateServerCertificate,
    this.serverCertType,
    this.trustModel,
    this.type,
    this.useSsl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalVariablesValue = additionalVariables;
    if (additionalVariablesValue != null) {
      map['additionalVariables'] =
          Input.encodeList<ConfigVariable, Map<String, dynamic>>(
              additionalVariablesValue, (value) => value.toMap());
    }
    final clientCertTypeValue = clientCertType;
    if (clientCertTypeValue != null) {
      map['clientCertType'] = clientCertTypeValue.value;
    }
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = clientCertificateValue.toMap();
    }
    final clientPrivateKeyValue = clientPrivateKey;
    if (clientPrivateKeyValue != null) {
      map['clientPrivateKey'] = clientPrivateKeyValue.toMap();
    }
    final clientPrivateKeyPassValue = clientPrivateKeyPass;
    if (clientPrivateKeyPassValue != null) {
      map['clientPrivateKeyPass'] = clientPrivateKeyPassValue.toMap();
    }
    final privateServerCertificateValue = privateServerCertificate;
    if (privateServerCertificateValue != null) {
      map['privateServerCertificate'] = privateServerCertificateValue.toMap();
    }
    final serverCertTypeValue = serverCertType;
    if (serverCertTypeValue != null) {
      map['serverCertType'] = serverCertTypeValue.value;
    }
    final trustModelValue = trustModel;
    if (trustModelValue != null) {
      map['trustModel'] = trustModelValue.value;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    final useSslValue = useSsl;
    if (useSslValue != null) {
      map['useSsl'] = useSslValue;
    }
    return map;
  }

  factory SslConfig4.fromMap(Map<String, dynamic> map) {
    return SslConfig4(
      additionalVariables: map['additionalVariables'] == null
          ? null
          : Input.decodeList<ConfigVariable>(
              map['additionalVariables'],
              (value) => ConfigVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientCertType: map['clientCertType'] == null
          ? null
          : SslConfigClientCertType.fromValue(map['clientCertType'] as String),
      clientCertificate: map['clientCertificate'] == null
          ? null
          : Secret2.fromMap(
              (map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientPrivateKey: map['clientPrivateKey'] == null
          ? null
          : Secret2.fromMap(
              (map['clientPrivateKey'] as Map).cast<String, dynamic>()),
      clientPrivateKeyPass: map['clientPrivateKeyPass'] == null
          ? null
          : Secret2.fromMap(
              (map['clientPrivateKeyPass'] as Map).cast<String, dynamic>()),
      privateServerCertificate: map['privateServerCertificate'] == null
          ? null
          : Secret2.fromMap(
              (map['privateServerCertificate'] as Map).cast<String, dynamic>()),
      serverCertType: map['serverCertType'] == null
          ? null
          : SslConfigServerCertType.fromValue(map['serverCertType'] as String),
      trustModel: map['trustModel'] == null
          ? null
          : SslConfigTrustModel.fromValue(map['trustModel'] as String),
      type: map['type'] == null
          ? null
          : SslConfigType.fromValue(map['type'] as String),
      useSsl: map['useSsl'] == null ? null : map['useSsl'] as bool,
    );
  }
}
