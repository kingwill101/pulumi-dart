// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_access_token.dart';
import 'google_cloud_integrations_v1alpha_oauth2_client_credentials_request_type.dart';
import 'google_cloud_integrations_v1alpha_parameter_map.dart';

/// For client credentials grant, the client sends a POST request with grant_type as 'client_credentials' to the authorization server. The authorization server will respond with a JSON object containing the access token.
class GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials {
  /// Access token fetched from the authorization server.
  final GoogleCloudIntegrationsV1alphaAccessToken? accessToken;

  /// The client's ID.
  final String? clientId;

  /// The client's secret.
  final String? clientSecret;

  /// Represent how to pass parameters to fetch access token
  final GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsRequestType?
  requestType;

  /// A space-delimited list of requested scope permissions.
  final String? scope;

  /// The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  final String? tokenEndpoint;

  /// Token parameters for the auth request.
  final GoogleCloudIntegrationsV1alphaParameterMap? tokenParams;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials].
  /// [accessToken] Access token fetched from the authorization server.
  /// [clientId] The client's ID.
  /// [clientSecret] The client's secret.
  /// [requestType] Represent how to pass parameters to fetch access token
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  /// [tokenParams] Token parameters for the auth request.
  GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials({
    this.accessToken,
    this.clientId,
    this.clientSecret,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken == null ? null : accessToken!.toMap(),
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'requestType': ?requestType == null ? null : requestType!.value,
      'scope': ?scope,
      'tokenEndpoint': ?tokenEndpoint,
      'tokenParams': ?tokenParams == null ? null : tokenParams!.toMap(),
    };
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials(
      accessToken: map['accessToken'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaAccessToken.fromMap(
              (map['accessToken'] as Map).cast<String, dynamic>(),
            ),
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null
          ? null
          : map['clientSecret'] as String,
      requestType: map['requestType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsRequestType.fromValue(
              map['requestType'] as String,
            ),
      scope: map['scope'] == null ? null : map['scope'] as String,
      tokenEndpoint: map['tokenEndpoint'] == null
          ? null
          : map['tokenEndpoint'] as String,
      tokenParams: map['tokenParams'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaParameterMap.fromMap(
              (map['tokenParams'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
