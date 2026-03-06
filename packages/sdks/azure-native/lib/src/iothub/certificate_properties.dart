// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The description of an X509 CA Certificate.
class CertificateProperties {
  /// The certificate content
  final pulumi.Input<String>? certificate;
  /// Determines whether certificate has been verified.
  final pulumi.Input<bool>? isVerified;

  /// Creates a new [CertificateProperties].
  /// [certificate] The certificate content
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

