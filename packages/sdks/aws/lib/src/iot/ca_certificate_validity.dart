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
  CaCertificateValidity({
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
      notAfter: map['notAfter'] == null ? null : ((map['notAfter'] as String).input()).input(),
      notBefore: map['notBefore'] == null ? null : ((map['notBefore'] as String).input()).input(),
    );
  }
}

