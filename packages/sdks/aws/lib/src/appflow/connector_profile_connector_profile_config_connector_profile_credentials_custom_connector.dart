// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_api_key.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_basic.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_custom.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_oauth2.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector {
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey>? apiKey;
  /// The authentication type that the custom connector uses for authenticating while creating a connector profile. One of: `APIKEY`, `BASIC`, `CUSTOM`, `OAUTH2`.
  final pulumi.Input<String> authenticationType;
  /// Basic credentials that are required for the authentication of the user.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic>? basic;
  /// If the connector uses the custom authentication mechanism, this holds the required credentials.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom>? custom;
  /// OAuth 2.0 credentials required for the authentication of the user.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2>? oauth2;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector].
  /// [apiKey] Optional.
  /// [authenticationType] The authentication type that the custom connector uses for authenticating while creating a connector profile. One of: `APIKEY`, `BASIC`, `CUSTOM`, `OAUTH2`.
  /// [basic] Basic credentials that are required for the authentication of the user.
  /// [custom] If the connector uses the custom authentication mechanism, this holds the required credentials.
  /// [oauth2] OAuth 2.0 credentials required for the authentication of the user.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector({
    this.apiKey,
    required this.authenticationType,
    this.basic,
    this.custom,
    this.oauth2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey, Map<String, dynamic>>(apiKey, (value) => value.toMap()),
      'authenticationType': authenticationType,
      'basic': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'custom': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'oauth2': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2, Map<String, dynamic>>(oauth2, (value) => value.toMap()),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      custom: (() { final guardedValue = map['custom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2: (() { final guardedValue = map['oauth2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

