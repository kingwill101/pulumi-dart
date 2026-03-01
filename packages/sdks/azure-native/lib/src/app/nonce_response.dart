// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the nonce used in the login flow.
class NonceResponse {
  /// The time after the request is made when the nonce should expire.
  final String? nonceExpirationInterval;
  /// <code>false</code> if the nonce should not be validated while completing the login flow; otherwise, <code>true</code>.
  final bool? validateNonce;

  /// Creates a new [NonceResponse].
  /// [nonceExpirationInterval] The time after the request is made when the nonce should expire.
  /// [validateNonce] <code>false</code> if the nonce should not be validated while completing the login flow; otherwise, <code>true</code>.
  NonceResponse({
    this.nonceExpirationInterval,
    this.validateNonce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonceExpirationInterval': ?nonceExpirationInterval,
      'validateNonce': ?validateNonce,
    };
  }

  factory NonceResponse.fromMap(Map<String, dynamic> map) {
    return NonceResponse(
      nonceExpirationInterval: map['nonceExpirationInterval'] == null ? null : map['nonceExpirationInterval'] as String,
      validateNonce: map['validateNonce'] == null ? null : map['validateNonce'] as bool,
    );
  }
}

