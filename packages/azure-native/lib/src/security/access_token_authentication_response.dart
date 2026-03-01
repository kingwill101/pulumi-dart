// ignore_for_file: unused_element, unnecessary_cast


/// The environment authentication details
class AccessTokenAuthenticationResponse {
  /// The access token that will be used while authenticating with the onboarded environment
  final String? accessToken;
  /// The authentication type
  /// Expected value is 'AccessToken'.
  final String authenticationType;
  /// The user name that will be used while authenticating with the onboarded environment
  final String? username;

  /// Creates a new [AccessTokenAuthenticationResponse].
  /// [accessToken] The access token that will be used while authenticating with the onboarded environment
  /// [authenticationType] The authentication type
  /// [username] The user name that will be used while authenticating with the onboarded environment
  AccessTokenAuthenticationResponse({
    this.accessToken,
    required this.authenticationType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'authenticationType': authenticationType,
      'username': ?username,
    };
  }

  factory AccessTokenAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AccessTokenAuthenticationResponse(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      authenticationType: map['authenticationType'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

