// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryCertificateBasedAuthProperties {
  /// The Amazon Resource Name (ARN) of the certificate manager private certificate authority (ACM-PCA) that is used for certificate-based authentication.
  final pulumi.Input<String>? certificateAuthorityArn;
  /// Status of certificate-based authentication. Default `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [DirectoryCertificateBasedAuthProperties].
  /// [certificateAuthorityArn] The Amazon Resource Name (ARN) of the certificate manager private certificate authority (ACM-PCA) that is used for certificate-based authentication.
  /// [status] Status of certificate-based authentication. Default `DISABLED`.
  const DirectoryCertificateBasedAuthProperties({
    this.certificateAuthorityArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'status': ?status,
    };
  }

  factory DirectoryCertificateBasedAuthProperties.fromMap(Map<String, dynamic> map) {
    return DirectoryCertificateBasedAuthProperties(
      certificateAuthorityArn: (() { final guardedValue = map['certificateAuthorityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
