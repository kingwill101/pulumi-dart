// ignore_for_file: unused_element, unnecessary_cast

/// The public key component of the wrapping key. For details of the type of key this public key corresponds to, see the ImportMethod.
class WrappingPublicKeyResponse {
  /// The public key, encoded in PEM format. For more information, see the [RFC 7468](https://tools.ietf.org/html/rfc7468) sections for [General Considerations](https://tools.ietf.org/html/rfc7468#section-2) and [Textual Encoding of Subject Public Key Info] (https://tools.ietf.org/html/rfc7468#section-13).
  final String pem;

  /// Creates a new [WrappingPublicKeyResponse].
  /// [pem] The public key, encoded in PEM format. For more information, see the [RFC 7468](https://tools.ietf.org/html/rfc7468) sections for [General Considerations](https://tools.ietf.org/html/rfc7468#section-2) and [Textual Encoding of Subject Public Key Info] (https://tools.ietf.org/html/rfc7468#section-13).
  WrappingPublicKeyResponse({
    required this.pem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pem'] = pem;
    return map;
  }

  factory WrappingPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return WrappingPublicKeyResponse(
      pem: map['pem'] as String,
    );
  }
}
