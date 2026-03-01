// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ssl_key_cert_ssl_key_cert_args_doc}
/// The set of arguments for SslKeyCert.
/// {@endtemplate}
/// {@macro pulumi_index_ssl_key_cert_ssl_key_cert_args_doc}
class SslKeyCertArgs {
  /// The content of the cert.
  final pulumi.Input<String> certContent;
  /// full path of the SSL certificate on the BIGIP.
  final pulumi.Input<String>? certFullPath;
  /// Specifies the type of monitoring used.
  final pulumi.Input<String>? certMonitoringType;
  /// Name of the SSL certificate to be Imported on to BIGIP.
  final pulumi.Input<String> certName;
  /// Specifies the OCSP responder.
  final pulumi.Input<String>? certOcsp;
  /// Specifies the issuer certificate.
  final pulumi.Input<String>? issuerCert;
  /// The content of the key.
  final pulumi.Input<String> keyContent;
  /// full path of the SSL key on the BIGIP.
  final pulumi.Input<String>? keyFullPath;
  /// Name of the SSL key to be Imported on to BIGIP.
  final pulumi.Input<String> keyName;
  /// Partition on to SSL certificate and key to be imported.
  final pulumi.Input<String>? partition;
  /// Passphrase on the SSL key.
  final pulumi.Input<String>? passphrase;

  /// Creates a new [SslKeyCertArgs].
  /// [certContent] The content of the cert.
  /// [certFullPath] full path of the SSL certificate on the BIGIP.
  /// [certMonitoringType] Specifies the type of monitoring used.
  /// [certName] Name of the SSL certificate to be Imported on to BIGIP.
  /// [certOcsp] Specifies the OCSP responder.
  /// [issuerCert] Specifies the issuer certificate.
  /// [keyContent] The content of the key.
  /// [keyFullPath] full path of the SSL key on the BIGIP.
  /// [keyName] Name of the SSL key to be Imported on to BIGIP.
  /// [partition] Partition on to SSL certificate and key to be imported.
  /// [passphrase] Passphrase on the SSL key.
  SslKeyCertArgs({
    required String certContent,
    String? certFullPath,
    String? certMonitoringType,
    required String certName,
    String? certOcsp,
    String? issuerCert,
    required String keyContent,
    String? keyFullPath,
    required String keyName,
    String? partition,
    String? passphrase,
  }) :
      certContent = pulumi.Input.asInput<String>(certContent),
      certFullPath = pulumi.Input.asOptionalInput<String>(certFullPath),
      certMonitoringType = pulumi.Input.asOptionalInput<String>(certMonitoringType),
      certName = pulumi.Input.asInput<String>(certName),
      certOcsp = pulumi.Input.asOptionalInput<String>(certOcsp),
      issuerCert = pulumi.Input.asOptionalInput<String>(issuerCert),
      keyContent = pulumi.Input.asInput<String>(keyContent),
      keyFullPath = pulumi.Input.asOptionalInput<String>(keyFullPath),
      keyName = pulumi.Input.asInput<String>(keyName),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      passphrase = pulumi.Input.asOptionalInput<String>(passphrase);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certContent': certContent,
      'certFullPath': ?certFullPath,
      'certMonitoringType': ?certMonitoringType,
      'certName': certName,
      'certOcsp': ?certOcsp,
      'issuerCert': ?issuerCert,
      'keyContent': keyContent,
      'keyFullPath': ?keyFullPath,
      'keyName': keyName,
      'partition': ?partition,
      'passphrase': ?passphrase,
    };
  }

  factory SslKeyCertArgs.fromMap(Map<String, dynamic> map) {
    return SslKeyCertArgs(
      certContent: map['certContent'] as String,
      certFullPath: map['certFullPath'] == null ? null : map['certFullPath'] as String,
      certMonitoringType: map['certMonitoringType'] == null ? null : map['certMonitoringType'] as String,
      certName: map['certName'] as String,
      certOcsp: map['certOcsp'] == null ? null : map['certOcsp'] as String,
      issuerCert: map['issuerCert'] == null ? null : map['issuerCert'] as String,
      keyContent: map['keyContent'] as String,
      keyFullPath: map['keyFullPath'] == null ? null : map['keyFullPath'] as String,
      keyName: map['keyName'] as String,
      partition: map['partition'] == null ? null : map['partition'] as String,
      passphrase: map['passphrase'] == null ? null : map['passphrase'] as String,
    );
  }
}

