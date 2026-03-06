// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryConfigCertificateBasedAuthProperties {
  /// The ARN of the AWS Certificate Manager Private CA resource.
  final pulumi.Input<String>? certificateAuthorityArn;
  /// The status of the certificate-based authentication properties. Valid values - ["DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"].
  final pulumi.Input<String>? status;

  /// Creates a new [DirectoryConfigCertificateBasedAuthProperties].
  /// [certificateAuthorityArn] The ARN of the AWS Certificate Manager Private CA resource.
  /// [status] The status of the certificate-based authentication properties. Valid values - ["DISABLED", "ENABLED", "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"].
  const DirectoryConfigCertificateBasedAuthProperties({
    this.certificateAuthorityArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'status': ?status,
    };
  }

  factory DirectoryConfigCertificateBasedAuthProperties.fromMap(Map<String, dynamic> map) {
    return DirectoryConfigCertificateBasedAuthProperties(
      certificateAuthorityArn: (() { final guardedValue = map['certificateAuthorityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

