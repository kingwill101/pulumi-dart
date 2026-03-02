// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_connect_tls_certificate_authority.dart';

/// Definition of ServiceConnectTlsConfiguration
class ServiceConnectTlsConfiguration {
  /// The signer certificate authority. An object that represents the AWS Private Certificate Authority certificate.
  final pulumi.Input<ServiceConnectTlsCertificateAuthority>? issuerCertificateAuthority;
  /// The AWS Key Management Service key.
  final pulumi.Input<String>? kmsKey;
  /// The Amazon Resource Name (ARN) of the IAM role that's associated with the Service Connect TLS.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [ServiceConnectTlsConfiguration].
  /// [issuerCertificateAuthority] The signer certificate authority. An object that represents the AWS Private Certificate Authority certificate.
  /// [kmsKey] The AWS Key Management Service key.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role that's associated with the Service Connect TLS.
  ServiceConnectTlsConfiguration({
    this.issuerCertificateAuthority,
    this.kmsKey,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerCertificateAuthority': ?pulumi.Input.mapOptionalInputValue<ServiceConnectTlsCertificateAuthority, Map<String, dynamic>>(issuerCertificateAuthority, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
      'roleArn': ?roleArn,
    };
  }

  factory ServiceConnectTlsConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceConnectTlsConfiguration(
      issuerCertificateAuthority: map['issuerCertificateAuthority'] == null ? null : (ServiceConnectTlsCertificateAuthority.fromMap((map['issuerCertificateAuthority'] as Map).cast<String, dynamic>())).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
    );
  }
}

