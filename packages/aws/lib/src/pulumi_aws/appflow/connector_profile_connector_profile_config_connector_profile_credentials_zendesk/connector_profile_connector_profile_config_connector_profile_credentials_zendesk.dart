// ignore_for_file: unused_element, unnecessary_cast

import '../connector_profile_connector_profile_config_connector_profile_credentials_zendesk_oauth_request/connector_profile_connector_profile_config_connector_profile_credentials_zendesk_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk {
  final String? accessToken;
  final String clientId;
  final String clientSecret;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest?
      oauthRequest;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk({
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

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk(
      accessToken:
          map['accessToken'] == null ? null : map['accessToken'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      oauthRequest: map['oauthRequest'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest
              .fromMap((map['oauthRequest'] as Map).cast<String, dynamic>()),
    );
  }
}
