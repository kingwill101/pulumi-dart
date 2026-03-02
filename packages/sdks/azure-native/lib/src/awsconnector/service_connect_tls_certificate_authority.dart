// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServiceConnectTlsCertificateAuthority
class ServiceConnectTlsCertificateAuthority {
  /// The ARN of the AWS Private Certificate Authority certificate.
  final pulumi.Input<String>? awsPcaAuthorityArn;

  /// Creates a new [ServiceConnectTlsCertificateAuthority].
  /// [awsPcaAuthorityArn] The ARN of the AWS Private Certificate Authority certificate.
  ServiceConnectTlsCertificateAuthority({
    this.awsPcaAuthorityArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsPcaAuthorityArn': ?awsPcaAuthorityArn,
    };
  }

  factory ServiceConnectTlsCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return ServiceConnectTlsCertificateAuthority(
      awsPcaAuthorityArn: map['awsPcaAuthorityArn'] == null ? null : (map['awsPcaAuthorityArn']! as String).input(),
    );
  }
}

