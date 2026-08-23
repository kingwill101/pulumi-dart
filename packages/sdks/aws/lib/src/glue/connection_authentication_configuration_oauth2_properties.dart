// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_authentication_configuration_oauth2_properties_authorization_code_properties.dart';
import 'connection_authentication_configuration_oauth2_properties_oauth2_client_application.dart';
import 'connection_authentication_configuration_oauth2_properties_oauth2_credentials.dart';

class ConnectionAuthenticationConfigurationOauth2Properties {
  /// Authorization code properties. See `authorizationCodeProperties` below.
  final pulumi.Input<ConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties>? authorizationCodeProperties;
  /// OAuth2 client application details. See `oauth2ClientApplication` below.
  final pulumi.Input<ConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication>? oauth2ClientApplication;
  /// OAuth2 credentials. See `oauth2Credentials` below.
  final pulumi.Input<ConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials>? oauth2Credentials;
  /// OAuth2 grant type. Valid values: `AUTHORIZATION_CODE`, `CLIENT_CREDENTIALS`, `JWT_BEARER`.
  final pulumi.Input<String>? oauth2GrantType;
  /// Token URL for OAuth2 authentication.
  final pulumi.Input<String>? tokenUrl;
  /// Map of additional parameters for the token URL.
  final pulumi.Input<Map<String, String>>? tokenUrlParametersMap;

  /// Creates a new [ConnectionAuthenticationConfigurationOauth2Properties].
  /// [authorizationCodeProperties] Authorization code properties. See `authorizationCodeProperties` below.
  /// [oauth2ClientApplication] OAuth2 client application details. See `oauth2ClientApplication` below.
  /// [oauth2Credentials] OAuth2 credentials. See `oauth2Credentials` below.
  /// [oauth2GrantType] OAuth2 grant type. Valid values: `AUTHORIZATION_CODE`, `CLIENT_CREDENTIALS`, `JWT_BEARER`.
  /// [tokenUrl] Token URL for OAuth2 authentication.
  /// [tokenUrlParametersMap] Map of additional parameters for the token URL.
  const ConnectionAuthenticationConfigurationOauth2Properties({
    this.authorizationCodeProperties,
    this.oauth2ClientApplication,
    this.oauth2Credentials,
    this.oauth2GrantType,
    this.tokenUrl,
    this.tokenUrlParametersMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationCodeProperties': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties, Map<String, dynamic>>(authorizationCodeProperties, (value) => value.toMap()),
      'oauth2ClientApplication': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication, Map<String, dynamic>>(oauth2ClientApplication, (value) => value.toMap()),
      'oauth2Credentials': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials, Map<String, dynamic>>(oauth2Credentials, (value) => value.toMap()),
      'oauth2GrantType': ?oauth2GrantType,
      'tokenUrl': ?tokenUrl,
      'tokenUrlParametersMap': ?tokenUrlParametersMap,
    };
  }

  factory ConnectionAuthenticationConfigurationOauth2Properties.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthenticationConfigurationOauth2Properties(
      authorizationCodeProperties: (() { final guardedValue = map['authorizationCodeProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2ClientApplication: (() { final guardedValue = map['oauth2ClientApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2Credentials: (() { final guardedValue = map['oauth2Credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2GrantType: (() { final guardedValue = map['oauth2GrantType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUrl: (() { final guardedValue = map['tokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUrlParametersMap: (() { final guardedValue = map['tokenUrlParametersMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
