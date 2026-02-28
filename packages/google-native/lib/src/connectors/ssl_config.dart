// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_variable.dart';
import 'secret.dart';
import 'ssl_config_client_cert_type.dart';
import 'ssl_config_server_cert_type.dart';
import 'ssl_config_trust_model.dart';
import 'ssl_config_type.dart';

/// SSL Configuration of a connection
class SslConfig {
  /// Additional SSL related field values
  final List<ConfigVariable>? additionalVariables;
  /// Type of Client Cert (PEM/JKS/.. etc.)
  final SslConfigClientCertType? clientCertType;
  /// Client Certificate
  final Secret? clientCertificate;
  /// Client Private Key
  final Secret? clientPrivateKey;
  /// Secret containing the passphrase protecting the Client Private Key
  final Secret? clientPrivateKeyPass;
  /// Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  final Secret? privateServerCertificate;
  /// Type of Server Cert (PEM/JKS/.. etc.)
  final SslConfigServerCertType? serverCertType;
  /// Trust Model of the SSL connection
  final SslConfigTrustModel? trustModel;
  /// Controls the ssl type for the given connector version.
  final SslConfigType? type;
  /// Bool for enabling SSL
  final bool? useSsl;

  /// Creates a new [SslConfig].
  /// [additionalVariables] Additional SSL related field values
  /// [clientCertType] Type of Client Cert (PEM/JKS/.. etc.)
  /// [clientCertificate] Client Certificate
  /// [clientPrivateKey] Client Private Key
  /// [clientPrivateKeyPass] Secret containing the passphrase protecting the Client Private Key
  /// [privateServerCertificate] Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  /// [serverCertType] Type of Server Cert (PEM/JKS/.. etc.)
  /// [trustModel] Trust Model of the SSL connection
  /// [type] Controls the ssl type for the given connector version.
  /// [useSsl] Bool for enabling SSL
  SslConfig({
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
    return <String, dynamic>{
      'additionalVariables': ?additionalVariables == null ? null : pulumi.Input.encodeList<ConfigVariable, Map<String, dynamic>>(additionalVariables!, (value) => value.toMap()),
      'clientCertType': ?clientCertType == null ? null : clientCertType!.value,
      'clientCertificate': ?clientCertificate == null ? null : clientCertificate!.toMap(),
      'clientPrivateKey': ?clientPrivateKey == null ? null : clientPrivateKey!.toMap(),
      'clientPrivateKeyPass': ?clientPrivateKeyPass == null ? null : clientPrivateKeyPass!.toMap(),
      'privateServerCertificate': ?privateServerCertificate == null ? null : privateServerCertificate!.toMap(),
      'serverCertType': ?serverCertType == null ? null : serverCertType!.value,
      'trustModel': ?trustModel == null ? null : trustModel!.value,
      'type': ?type == null ? null : type!.value,
      'useSsl': ?useSsl,
    };
  }

  factory SslConfig.fromMap(Map<String, dynamic> map) {
    return SslConfig(
      additionalVariables: map['additionalVariables'] == null ? null : pulumi.Input.decodeList<ConfigVariable>(map['additionalVariables'], (value) => ConfigVariable.fromMap((value as Map).cast<String, dynamic>())),
      clientCertType: map['clientCertType'] == null ? null : SslConfigClientCertType.fromValue(map['clientCertType'] as String),
      clientCertificate: map['clientCertificate'] == null ? null : Secret.fromMap((map['clientCertificate'] as Map).cast<String, dynamic>()),
      clientPrivateKey: map['clientPrivateKey'] == null ? null : Secret.fromMap((map['clientPrivateKey'] as Map).cast<String, dynamic>()),
      clientPrivateKeyPass: map['clientPrivateKeyPass'] == null ? null : Secret.fromMap((map['clientPrivateKeyPass'] as Map).cast<String, dynamic>()),
      privateServerCertificate: map['privateServerCertificate'] == null ? null : Secret.fromMap((map['privateServerCertificate'] as Map).cast<String, dynamic>()),
      serverCertType: map['serverCertType'] == null ? null : SslConfigServerCertType.fromValue(map['serverCertType'] as String),
      trustModel: map['trustModel'] == null ? null : SslConfigTrustModel.fromValue(map['trustModel'] as String),
      type: map['type'] == null ? null : SslConfigType.fromValue(map['type'] as String),
      useSsl: map['useSsl'] == null ? null : map['useSsl'] as bool,
    );
  }
}

