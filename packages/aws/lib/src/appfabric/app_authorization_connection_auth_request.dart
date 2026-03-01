// ignore_for_file: unused_element, unnecessary_cast

class AppAuthorizationConnectionAuthRequest {
  /// The authorization code returned by the application after permission is granted in the application OAuth page (after clicking on the AuthURL)..
  final String code;

  /// The redirect URL that is specified in the AuthURL and the application client.
  final String redirectUri;

  /// Creates a new [AppAuthorizationConnectionAuthRequest].
  /// [code] The authorization code returned by the application after permission is granted in the application OAuth page (after clicking on the AuthURL)..
  /// [redirectUri] The redirect URL that is specified in the AuthURL and the application client.
  AppAuthorizationConnectionAuthRequest({
    required this.code,
    required this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'redirectUri': redirectUri};
  }

  factory AppAuthorizationConnectionAuthRequest.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppAuthorizationConnectionAuthRequest(
      code: map['code'] as String,
      redirectUri: map['redirectUri'] as String,
    );
  }
}
