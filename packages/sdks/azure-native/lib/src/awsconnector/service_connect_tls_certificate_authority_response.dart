// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServiceConnectTlsCertificateAuthority
class ServiceConnectTlsCertificateAuthorityResponse {
  /// The ARN of the AWS Private Certificate Authority certificate.
  final pulumi.Input<String?>? awsPcaAuthorityArn;

  /// Creates a new [ServiceConnectTlsCertificateAuthorityResponse].
  /// [awsPcaAuthorityArn] The ARN of the AWS Private Certificate Authority certificate.
  const ServiceConnectTlsCertificateAuthorityResponse({
    this.awsPcaAuthorityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsPcaAuthorityArn': ?awsPcaAuthorityArn,
    };
  }

  factory ServiceConnectTlsCertificateAuthorityResponse.fromMap(Map<String, dynamic> map) {
    return ServiceConnectTlsCertificateAuthorityResponse(
      awsPcaAuthorityArn: (() { final guardedValue = map['awsPcaAuthorityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
