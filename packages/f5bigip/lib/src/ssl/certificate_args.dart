// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_ssl_certificate_certificate_args_doc}
class CertificateArgs {
  /// Content of certificate on Disk
  final pulumi.Input<String> content;
  /// Full Path Name of ssl certificate
  final pulumi.Input<String>? fullPath;
  /// Specifies the issuer certificate.
  final pulumi.Input<String>? issuerCert;
  /// Specifies the type of monitoring used.
  final pulumi.Input<String>? monitoringType;
  /// Name of the SSL Certificate to be Imported on to BIGIP
  final pulumi.Input<String> name;
  /// Specifies the OCSP responder.
  final pulumi.Input<String>? ocsp;
  /// Partition of ssl certificate
  final pulumi.Input<String>? partition;

  /// Creates a new [CertificateArgs].
  /// [content] Content of certificate on Disk
  /// [fullPath] Full Path Name of ssl certificate
  /// [issuerCert] Specifies the issuer certificate.
  /// [monitoringType] Specifies the type of monitoring used.
  /// [name] Name of the SSL Certificate to be Imported on to BIGIP
  /// [ocsp] Specifies the OCSP responder.
  /// [partition] Partition of ssl certificate
  CertificateArgs({
    required String content,
    String? fullPath,
    String? issuerCert,
    String? monitoringType,
    required String name,
    String? ocsp,
    String? partition,
  }) :
      content = pulumi.Input.asInput<String>(content),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      issuerCert = pulumi.Input.asOptionalInput<String>(issuerCert),
      monitoringType = pulumi.Input.asOptionalInput<String>(monitoringType),
      name = pulumi.Input.asInput<String>(name),
      ocsp = pulumi.Input.asOptionalInput<String>(ocsp),
      partition = pulumi.Input.asOptionalInput<String>(partition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fullPath': ?fullPath,
      'issuerCert': ?issuerCert,
      'monitoringType': ?monitoringType,
      'name': name,
      'ocsp': ?ocsp,
      'partition': ?partition,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      content: map['content'] as String,
      fullPath: map['fullPath'] == null ? null : map['fullPath'] as String,
      issuerCert: map['issuerCert'] == null ? null : map['issuerCert'] as String,
      monitoringType: map['monitoringType'] == null ? null : map['monitoringType'] as String,
      name: map['name'] as String,
      ocsp: map['ocsp'] == null ? null : map['ocsp'] as String,
      partition: map['partition'] == null ? null : map['partition'] as String,
    );
  }
}

