// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the nonce used in the login flow.
class Nonce {
  /// The time after the request is made when the nonce should expire.
  final String? nonceExpirationInterval;
  /// <code>false</code> if the nonce should not be validated while completing the login flow; otherwise, <code>true</code>.
  final bool? validateNonce;

  /// Creates a new [Nonce].
  /// [nonceExpirationInterval] The time after the request is made when the nonce should expire.
  /// [validateNonce] <code>false</code> if the nonce should not be validated while completing the login flow; otherwise, <code>true</code>.
  Nonce({
    this.nonceExpirationInterval,
    this.validateNonce,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonceExpirationInterval': ?nonceExpirationInterval,
      'validateNonce': ?validateNonce,
    };
  }

  factory Nonce.fromMap(Map<String, dynamic> map) {
    return Nonce(
      nonceExpirationInterval: map['nonceExpirationInterval'] == null ? null : map['nonceExpirationInterval'] as String,
      validateNonce: map['validateNonce'] == null ? null : map['validateNonce'] as bool,
    );
  }
}

