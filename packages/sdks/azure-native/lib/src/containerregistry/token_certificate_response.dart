// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a certificate used for authenticating a token.
class TokenCertificateResponse {
  /// Base 64 encoded string of the public certificate1 in PEM format that will be used for authenticating the token.
  final String? encodedPemCertificate;
  /// The expiry datetime of the certificate.
  final String? expiry;
  final String? name;
  /// The thumbprint of the certificate.
  final String? thumbprint;

  /// Creates a new [TokenCertificateResponse].
  /// [encodedPemCertificate] Base 64 encoded string of the public certificate1 in PEM format that will be used for authenticating the token.
  /// [expiry] The expiry datetime of the certificate.
  /// [name] Optional.
  /// [thumbprint] The thumbprint of the certificate.
  TokenCertificateResponse({
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

  factory TokenCertificateResponse.fromMap(Map<String, dynamic> map) {
    return TokenCertificateResponse(
      encodedPemCertificate: map['encodedPemCertificate'] == null ? null : map['encodedPemCertificate'] as String,
      expiry: map['expiry'] == null ? null : map['expiry'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

