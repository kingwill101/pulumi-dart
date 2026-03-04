// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_service_tls_issuer_cert_authority.dart';

class ServiceServiceConnectConfigurationServiceTls {
  /// Details of the certificate authority which will issue the certificate.
  final pulumi.Input<
    ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority
  >
  issuerCertAuthority;

  /// KMS key used to encrypt the private key in Secrets Manager.
  final pulumi.Input<String>? kmsKey;

  /// ARN of the IAM Role that's associated with the Service Connect TLS.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [ServiceServiceConnectConfigurationServiceTls].
  /// [issuerCertAuthority] Details of the certificate authority which will issue the certificate.
  /// [kmsKey] KMS key used to encrypt the private key in Secrets Manager.
  /// [roleArn] ARN of the IAM Role that's associated with the Service Connect TLS.
  ServiceServiceConnectConfigurationServiceTls({
    required this.issuerCertAuthority,
    this.kmsKey,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerCertAuthority':
          pulumi.Input.mapInputValue<
            ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority,
            Map<String, dynamic>
          >(issuerCertAuthority, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
      'roleArn': ?roleArn,
    };
  }

  factory ServiceServiceConnectConfigurationServiceTls.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceServiceConnectConfigurationServiceTls(
      issuerCertAuthority: pulumi.Input.fromValue(
        ServiceServiceConnectConfigurationServiceTlsIssuerCertAuthority.fromMap(
          (map['issuerCertAuthority']! as Map).cast<String, dynamic>(),
        ),
      ),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
