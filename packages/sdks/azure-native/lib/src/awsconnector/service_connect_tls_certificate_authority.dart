// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServiceConnectTlsCertificateAuthority
class ServiceConnectTlsCertificateAuthority {
  /// The ARN of the AWS Private Certificate Authority certificate.
  final pulumi.Input<String>? awsPcaAuthorityArn;

  /// Creates a new [ServiceConnectTlsCertificateAuthority].
  /// [awsPcaAuthorityArn] The ARN of the AWS Private Certificate Authority certificate.
  const ServiceConnectTlsCertificateAuthority({
    this.awsPcaAuthorityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsPcaAuthorityArn': ?awsPcaAuthorityArn,
    };
  }

  factory ServiceConnectTlsCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return ServiceConnectTlsCertificateAuthority(
      awsPcaAuthorityArn: (() { final guardedValue = map['awsPcaAuthorityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
