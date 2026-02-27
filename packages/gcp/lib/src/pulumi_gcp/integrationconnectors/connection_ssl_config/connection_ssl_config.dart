// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_ssl_config_additional_variable/connection_ssl_config_additional_variable.dart';
import '../connection_ssl_config_client_certificate/connection_ssl_config_client_certificate.dart';
import '../connection_ssl_config_client_private_key/connection_ssl_config_client_private_key.dart';
import '../connection_ssl_config_client_private_key_pass/connection_ssl_config_client_private_key_pass.dart';
import '../connection_ssl_config_private_server_certificate/connection_ssl_config_private_server_certificate.dart';

class ConnectionSslConfig {
  /// Additional SSL related field values.
  /// Structure is documented below.
  final List<ConnectionSslConfigAdditionalVariable>? additionalVariables;

  /// Type of Client Cert (PEM/JKS/.. etc.)
  /// Possible values are: `PEM`.
  final String? clientCertType;

  /// Client Certificate
  /// Structure is documented below.
  final ConnectionSslConfigClientCertificate? clientCertificate;

  /// Client Private Key
  /// Structure is documented below.
  final ConnectionSslConfigClientPrivateKey? clientPrivateKey;

  /// Secret containing the passphrase protecting the Client Private Key
  /// Structure is documented below.
  final ConnectionSslConfigClientPrivateKeyPass? clientPrivateKeyPass;

  /// Private Server Certificate. Needs to be specified if trust model is PRIVATE.
  /// Structure is documented below.
  final ConnectionSslConfigPrivateServerCertificate? privateServerCertificate;

  /// Type of Server Cert (PEM/JKS/.. etc.)
  /// Possible values are: `PEM`.
  final String? serverCertType;

  /// Enum for Trust Model
  /// Possible values are: `PUBLIC`, `PRIVATE`, `INSECURE`.
  final String? trustModel;

  /// Enum for controlling the SSL Type (TLS/MTLS)
  /// Possible values are: `TLS`, `MTLS`.
  final String type;

  /// Bool for enabling SSL
  final bool? useSsl;

  ConnectionSslConfig({
    this.additionalVariables,
    this.clientCertType,
    this.clientCertificate,
    this.clientPrivateKey,
    this.clientPrivateKeyPass,
    this.privateServerCertificate,
    this.serverCertType,
    this.trustModel,
    required this.type,
    this.useSsl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalVariablesValue = additionalVariables;
    if (additionalVariablesValue != null) {
      map['additionalVariables'] = pulumi.Input.encodeList<
              ConnectionSslConfigAdditionalVariable, Map<String, dynamic>>(
          additionalVariablesValue, (value) => value.toMap());
    }
    final clientCertTypeValue = clientCertType;
    if (clientCertTypeValue != null) {
      map['clientCertType'] = clientCertTypeValue;
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
      map['serverCertType'] = serverCertTypeValue;
    }
    final trustModelValue = trustModel;
    if (trustModelValue != null) {
      map['trustModel'] = trustModelValue;
    }
    map['type'] = type;
    final useSslValue = useSsl;
    if (useSslValue != null) {
      map['useSsl'] = useSslValue;
    }
    return map;
  }

  factory ConnectionSslConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfig(
      additionalVariables: map['additionalVariables'] == null
          ? null
          : pulumi.Input.decodeList<ConnectionSslConfigAdditionalVariable>(
              map['additionalVariables'],
              (value) => ConnectionSslConfigAdditionalVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      clientCertType: map['clientCertType'] == null
          ? null
          : map['clientCertType'] as String,
      clientCertificate: map['clientCertificate'] == null
          ? null
          : ConnectionSslConfigClientCertificate.fromMap(
              (map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientPrivateKey: map['clientPrivateKey'] == null
          ? null
          : ConnectionSslConfigClientPrivateKey.fromMap(
              (map['clientPrivateKey'] as Map).cast<String, dynamic>()),
      clientPrivateKeyPass: map['clientPrivateKeyPass'] == null
          ? null
          : ConnectionSslConfigClientPrivateKeyPass.fromMap(
              (map['clientPrivateKeyPass'] as Map).cast<String, dynamic>()),
      privateServerCertificate: map['privateServerCertificate'] == null
          ? null
          : ConnectionSslConfigPrivateServerCertificate.fromMap(
              (map['privateServerCertificate'] as Map).cast<String, dynamic>()),
      serverCertType: map['serverCertType'] == null
          ? null
          : map['serverCertType'] as String,
      trustModel:
          map['trustModel'] == null ? null : map['trustModel'] as String,
      type: map['type'] as String,
      useSsl: map['useSsl'] == null ? null : map['useSsl'] as bool,
    );
  }
}
