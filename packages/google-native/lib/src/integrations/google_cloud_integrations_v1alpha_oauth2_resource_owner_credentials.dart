// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_access_token.dart';
import 'google_cloud_integrations_v1alpha_oauth2_resource_owner_credentials_request_type.dart';
import 'google_cloud_integrations_v1alpha_parameter_map.dart';

/// For resource owner credentials grant, the client will ask the user for their authorization credentials (ususally a username and password) and send a POST request to the authorization server. The authorization server will respond with a JSON object containing the access token.
class GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials {
  /// Access token fetched from the authorization server.
  final GoogleCloudIntegrationsV1alphaAccessToken? accessToken;

  /// The client's ID.
  final String? clientId;

  /// The client's secret.
  final String? clientSecret;

  /// The user's password.
  final String? password;

  /// Represent how to pass parameters to fetch access token
  final GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType?
      requestType;

  /// A space-delimited list of requested scope permissions.
  final String? scope;

  /// The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  final String? tokenEndpoint;

  /// Token parameters for the auth request.
  final GoogleCloudIntegrationsV1alphaParameterMap? tokenParams;

  /// The user's username.
  final String? username;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials].
  /// [accessToken] Access token fetched from the authorization server.
  /// [clientId] The client's ID.
  /// [clientSecret] The client's secret.
  /// [password] The user's password.
  /// [requestType] Represent how to pass parameters to fetch access token
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  /// [tokenParams] Token parameters for the auth request.
  /// [username] The user's username.
  GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials({
    this.accessToken,
    this.clientId,
    this.clientSecret,
    this.password,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValue = accessToken;
    if (accessTokenValue != null) {
      map['accessToken'] = accessTokenValue.toMap();
    }
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final requestTypeValue = requestType;
    if (requestTypeValue != null) {
      map['requestType'] = requestTypeValue.value;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final tokenEndpointValue = tokenEndpoint;
    if (tokenEndpointValue != null) {
      map['tokenEndpoint'] = tokenEndpointValue;
    }
    final tokenParamsValue = tokenParams;
    if (tokenParamsValue != null) {
      map['tokenParams'] = tokenParamsValue.toMap();
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials(
      accessToken: map['accessToken'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaAccessToken.fromMap(
              (map['accessToken'] as Map).cast<String, dynamic>()),
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      requestType: map['requestType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType
              .fromValue(map['requestType'] as String),
      scope: map['scope'] == null ? null : map['scope'] as String,
      tokenEndpoint:
          map['tokenEndpoint'] == null ? null : map['tokenEndpoint'] as String,
      tokenParams: map['tokenParams'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaParameterMap.fromMap(
              (map['tokenParams'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
