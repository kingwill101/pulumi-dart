// ignore_for_file: unused_element, unnecessary_cast

import '../service_service_connect_configuration_service_tls_issuer_cert_authority/service_service_connect_configuration_service_tls_issuer_cert_authority.dart';

class ServiceServiceConnectConfigurationServiceTls {
  /// Details of the certificate authority which will issue the certificate.
  final ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority
      issuerCertAuthority;

  /// KMS key used to encrypt the private key in Secrets Manager.
  final String? kmsKey;

  /// ARN of the IAM Role that's associated with the Service Connect TLS.
  final String? roleArn;

  ServiceServiceConnectConfigurationServiceTls({
    required this.issuerCertAuthority,
    this.kmsKey,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issuerCertAuthority'] = issuerCertAuthority.toMap();
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    return map;
  }

  factory ServiceServiceConnectConfigurationServiceTls.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceTls(
      issuerCertAuthority:
          ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority
              .fromMap(
                  (map['issuerCertAuthority'] as Map).cast<String, dynamic>()),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
    );
  }
}
