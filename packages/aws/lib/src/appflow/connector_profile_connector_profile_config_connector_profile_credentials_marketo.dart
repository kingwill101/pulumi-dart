// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_marketo_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo {
  final String? accessToken;
  final String clientId;
  final String clientSecret;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest?
      oauthRequest;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo].
  /// [accessToken] Optional.
  /// [clientId] Required.
  /// [clientSecret] Required.
  /// [oauthRequest] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValue = accessToken;
    if (accessTokenValue != null) {
      map['accessToken'] = accessTokenValue;
    }
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    final oauthRequestValue = oauthRequest;
    if (oauthRequestValue != null) {
      map['oauthRequest'] = oauthRequestValue.toMap();
    }
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo(
      accessToken:
          map['accessToken'] == null ? null : map['accessToken'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      oauthRequest: map['oauthRequest'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest
              .fromMap((map['oauthRequest'] as Map).cast<String, dynamic>()),
    );
  }
}
