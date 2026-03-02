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
  DirectoryCertificateBasedAuthProperties({
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
      certificateAuthorityArn: map['certificateAuthorityArn'] == null ? null : (map['certificateAuthorityArn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

