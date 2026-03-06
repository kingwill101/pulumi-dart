// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaCertificateValidity {
  /// The certificate is not valid after this date.
  final pulumi.Input<String>? notAfter;
  /// The certificate is not valid before this date.
  final pulumi.Input<String>? notBefore;

  /// Creates a new [CaCertificateValidity].
  /// [notAfter] The certificate is not valid after this date.
  /// [notBefore] The certificate is not valid before this date.
  const CaCertificateValidity({
    this.notAfter,
    this.notBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
    };
  }

  factory CaCertificateValidity.fromMap(Map<String, dynamic> map) {
    return CaCertificateValidity(
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

