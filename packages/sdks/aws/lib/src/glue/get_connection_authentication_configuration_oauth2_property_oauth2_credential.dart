// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential {
  /// Access token used for OAuth2 authentication.
  final pulumi.Input<String> accessToken;
  /// JWT token used for OAuth2 authentication.
  final pulumi.Input<String> jwtToken;
  /// Refresh token used for OAuth2 authentication.
  final pulumi.Input<String> refreshToken;
  /// Client secret of the user-managed client application.
  final pulumi.Input<String> userManagedClientApplicationClientSecret;

  /// Creates a new [GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential].
  /// [accessToken] Access token used for OAuth2 authentication.
  /// [jwtToken] JWT token used for OAuth2 authentication.
  /// [refreshToken] Refresh token used for OAuth2 authentication.
  /// [userManagedClientApplicationClientSecret] Client secret of the user-managed client application.
  const GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential({
    required this.accessToken,
    required this.jwtToken,
    required this.refreshToken,
    required this.userManagedClientApplicationClientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'jwtToken': jwtToken,
      'refreshToken': refreshToken,
      'userManagedClientApplicationClientSecret': userManagedClientApplicationClientSecret,
    };
  }

  factory GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential.fromMap(Map<String, dynamic> map) {
    return GetConnectionAuthenticationConfigurationOauth2PropertyOauth2Credential(
      accessToken: pulumi.Input.fromValue(map['accessToken'] as String),
      jwtToken: pulumi.Input.fromValue(map['jwtToken'] as String),
      refreshToken: pulumi.Input.fromValue(map['refreshToken'] as String),
      userManagedClientApplicationClientSecret: pulumi.Input.fromValue(map['userManagedClientApplicationClientSecret'] as String),
    );
  }
}
