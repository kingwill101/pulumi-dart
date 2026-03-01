// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_access_token_response.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_response.dart';

/// For client credentials grant, the client sends a POST request with grant_type as 'client_credentials' to the authorization server. The authorization server will respond with a JSON object containing the access token.
class GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse {
  /// Access token fetched from the authorization server.
  final GoogleCloudIntegrationsV1alphaAccessTokenResponse accessToken;

  /// The client's ID.
  final String clientId;

  /// The client's secret.
  final String clientSecret;

  /// Represent how to pass parameters to fetch access token
  final String requestType;

  /// A space-delimited list of requested scope permissions.
  final String scope;

  /// The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  final String tokenEndpoint;

  /// Token parameters for the auth request.
  final GoogleCloudIntegrationsV1alphaParameterMapResponse tokenParams;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse].
  /// [accessToken] Access token fetched from the authorization server.
  /// [clientId] The client's ID.
  /// [clientSecret] The client's secret.
  /// [requestType] Represent how to pass parameters to fetch access token
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  /// [tokenParams] Token parameters for the auth request.
  GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse({
    required this.accessToken,
    required this.clientId,
    required this.clientSecret,
    required this.requestType,
    required this.scope,
    required this.tokenEndpoint,
    required this.tokenParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken.toMap(),
      'clientId': clientId,
      'clientSecret': clientSecret,
      'requestType': requestType,
      'scope': scope,
      'tokenEndpoint': tokenEndpoint,
      'tokenParams': tokenParams.toMap(),
    };
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse(
      accessToken: GoogleCloudIntegrationsV1alphaAccessTokenResponse.fromMap(
        (map['accessToken'] as Map).cast<String, dynamic>(),
      ),
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      requestType: map['requestType'] as String,
      scope: map['scope'] as String,
      tokenEndpoint: map['tokenEndpoint'] as String,
      tokenParams: GoogleCloudIntegrationsV1alphaParameterMapResponse.fromMap(
        (map['tokenParams'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
