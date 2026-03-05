// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a certificate used for authenticating a token.
class TokenCertificate {
  /// Base 64 encoded string of the public certificate1 in PEM format that will be used for authenticating the token.
  final pulumi.Input<String>? encodedPemCertificate;
  /// The expiry datetime of the certificate.
  final pulumi.Input<String>? expiry;
  final pulumi.Input<String>? name;
  /// The thumbprint of the certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [TokenCertificate].
  /// [encodedPemCertificate] Base 64 encoded string of the public certificate1 in PEM format that will be used for authenticating the token.
  /// [expiry] The expiry datetime of the certificate.
  /// [name] Optional.
  /// [thumbprint] The thumbprint of the certificate.
  TokenCertificate({
    this.encodedPemCertificate,
    this.expiry,
    this.name,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encodedPemCertificate': ?encodedPemCertificate,
      'expiry': ?expiry,
      'name': ?name,
      'thumbprint': ?thumbprint,
    };
  }

  factory TokenCertificate.fromMap(Map<String, dynamic> map) {
    return TokenCertificate(
      encodedPemCertificate: (() { final guardedValue = map['encodedPemCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

