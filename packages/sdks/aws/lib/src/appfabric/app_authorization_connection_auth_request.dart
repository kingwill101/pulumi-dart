// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAuthorizationConnectionAuthRequest {
  /// Authorization code returned by the application after permission is granted in the application OAuth page (after clicking on the AuthURL).
  final pulumi.Input<String> code;
  /// Redirect URL that is specified in the AuthURL and the application client.
  final pulumi.Input<String> redirectUri;

  /// Creates a new [AppAuthorizationConnectionAuthRequest].
  /// [code] Authorization code returned by the application after permission is granted in the application OAuth page (after clicking on the AuthURL).
  /// [redirectUri] Redirect URL that is specified in the AuthURL and the application client.
  const AppAuthorizationConnectionAuthRequest({
    required this.code,
    required this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'redirectUri': redirectUri,
    };
  }

  factory AppAuthorizationConnectionAuthRequest.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationConnectionAuthRequest(
      code: pulumi.Input.fromValue(map['code'] as String),
      redirectUri: pulumi.Input.fromValue(map['redirectUri'] as String),
    );
  }
}
