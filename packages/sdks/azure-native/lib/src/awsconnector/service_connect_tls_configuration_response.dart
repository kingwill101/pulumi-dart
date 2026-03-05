// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_connect_tls_certificate_authority_response.dart';

/// Definition of ServiceConnectTlsConfiguration
class ServiceConnectTlsConfigurationResponse {
  /// The signer certificate authority. An object that represents the AWS Private Certificate Authority certificate.
  final pulumi.Input<ServiceConnectTlsCertificateAuthorityResponse>? issuerCertificateAuthority;
  /// The AWS Key Management Service key.
  final pulumi.Input<String>? kmsKey;
  /// The Amazon Resource Name (ARN) of the IAM role that's associated with the Service Connect TLS.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [ServiceConnectTlsConfigurationResponse].
  /// [issuerCertificateAuthority] The signer certificate authority. An object that represents the AWS Private Certificate Authority certificate.
  /// [kmsKey] The AWS Key Management Service key.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role that's associated with the Service Connect TLS.
  ServiceConnectTlsConfigurationResponse({
    this.issuerCertificateAuthority,
    this.kmsKey,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerCertificateAuthority': ?pulumi.Input.mapOptionalInputValue<ServiceConnectTlsCertificateAuthorityResponse, Map<String, dynamic>>(issuerCertificateAuthority, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
      'roleArn': ?roleArn,
    };
  }

  factory ServiceConnectTlsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceConnectTlsConfigurationResponse(
      issuerCertificateAuthority: (() { final guardedValue = map['issuerCertificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceConnectTlsCertificateAuthorityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

