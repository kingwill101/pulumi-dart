// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The description of an X509 CA Certificate.
class CertificateProperties {
  /// base-64 representation of X509 certificate .cer file or just .pem file content.
  final pulumi.Input<String>? certificate;
  /// Determines whether certificate has been verified.
  final pulumi.Input<bool>? isVerified;

  /// Creates a new [CertificateProperties].
  /// [certificate] base-64 representation of X509 certificate .cer file or just .pem file content.
  /// [isVerified] Determines whether certificate has been verified.
  const CertificateProperties({
    this.certificate,
    this.isVerified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'isVerified': ?isVerified,
    };
  }

  factory CertificateProperties.fromMap(Map<String, dynamic> map) {
    return CertificateProperties(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isVerified: (() { final guardedValue = map['isVerified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
