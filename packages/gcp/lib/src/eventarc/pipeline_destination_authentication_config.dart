// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_destination_authentication_config_google_oidc.dart';
import 'pipeline_destination_authentication_config_oauth_token.dart';

class PipelineDestinationAuthenticationConfig {
  /// Represents a config used to authenticate with a Google OIDC token using
  /// a GCP service account. Use this authentication method to invoke your
  /// Cloud Run and Cloud Functions destinations or HTTP endpoints that
  /// support Google OIDC.
  /// Structure is documented below.
  final PipelineDestinationAuthenticationConfigGoogleOidc? googleOidc;

  /// Contains information needed for generating an
  /// [OAuth token](https://developers.google.com/identity/protocols/OAuth2).
  /// This type of authorization should generally only be used when calling
  /// Google APIs hosted on *.googleapis.com.
  /// Structure is documented below.
  final PipelineDestinationAuthenticationConfigOauthToken? oauthToken;

  /// Creates a new [PipelineDestinationAuthenticationConfig].
  /// [googleOidc] Represents a config used to authenticate with a Google OIDC token using
  /// [oauthToken] Contains information needed for generating an
  PipelineDestinationAuthenticationConfig({this.googleOidc, this.oauthToken});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleOidc': ?googleOidc == null ? null : googleOidc!.toMap(),
      'oauthToken': ?oauthToken == null ? null : oauthToken!.toMap(),
    };
  }

  factory PipelineDestinationAuthenticationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipelineDestinationAuthenticationConfig(
      googleOidc: map['googleOidc'] == null
          ? null
          : PipelineDestinationAuthenticationConfigGoogleOidc.fromMap(
              (map['googleOidc'] as Map).cast<String, dynamic>(),
            ),
      oauthToken: map['oauthToken'] == null
          ? null
          : PipelineDestinationAuthenticationConfigOauthToken.fromMap(
              (map['oauthToken'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
