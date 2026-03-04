// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_oauth2_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2 {
  final pulumi.Input<String>? accessToken;
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? clientSecret;
  final pulumi.Input<
    ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest
  >?
  oauthRequest;
  final pulumi.Input<String>? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2].
  /// [accessToken] Optional.
  /// [clientId] Optional.
  /// [clientSecret] Optional.
  /// [oauthRequest] Optional.
  /// [refreshToken] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2({
    this.accessToken,
    this.clientId,
    this.clientSecret,
    this.oauthRequest,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'oauthRequest':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest,
            Map<String, dynamic>
          >(oauthRequest, (value) => value.toMap()),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2(
      accessToken: (() {
        final guardedValue = map['accessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauthRequest: (() {
        final guardedValue = map['oauthRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      refreshToken: (() {
        final guardedValue = map['refreshToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
