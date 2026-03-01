// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the session cookie's expiration.
class CookieExpirationResponse {
  /// The convention used when determining the session cookie's expiration.
  final String? convention;
  /// The time after the request is made when the session cookie should expire.
  final String? timeToExpiration;

  /// Creates a new [CookieExpirationResponse].
  /// [convention] The convention used when determining the session cookie's expiration.
  /// [timeToExpiration] The time after the request is made when the session cookie should expire.
  CookieExpirationResponse({
    this.convention,
    this.timeToExpiration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convention': ?convention,
      'timeToExpiration': ?timeToExpiration,
    };
  }

  factory CookieExpirationResponse.fromMap(Map<String, dynamic> map) {
    return CookieExpirationResponse(
      convention: map['convention'] == null ? null : map['convention'] as String,
      timeToExpiration: map['timeToExpiration'] == null ? null : map['timeToExpiration'] as String,
    );
  }
}

