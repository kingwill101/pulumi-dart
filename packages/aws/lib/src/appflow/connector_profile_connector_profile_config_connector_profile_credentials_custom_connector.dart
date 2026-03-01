// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_api_key.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_basic.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_custom.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_oauth2.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector {
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey? apiKey;
  /// The authentication type that the custom connector uses for authenticating while creating a connector profile. One of: `APIKEY`, `BASIC`, `CUSTOM`, `OAUTH2`.
  final String authenticationType;
  /// Basic credentials that are required for the authentication of the user.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic? basic;
  /// If the connector uses the custom authentication mechanism, this holds the required credentials.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom? custom;
  /// OAuth 2.0 credentials required for the authentication of the user.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2? oauth2;

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
      'apiKey': ?apiKey == null ? null : apiKey!.toMap(),
      'authenticationType': authenticationType,
      'basic': ?basic == null ? null : basic!.toMap(),
      'custom': ?custom == null ? null : custom!.toMap(),
      'oauth2': ?oauth2 == null ? null : oauth2!.toMap(),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnector(
      apiKey: map['apiKey'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorApiKey.fromMap((map['apiKey'] as Map).cast<String, dynamic>()),
      authenticationType: map['authenticationType'] as String,
      basic: map['basic'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic.fromMap((map['basic'] as Map).cast<String, dynamic>()),
      custom: map['custom'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom.fromMap((map['custom'] as Map).cast<String, dynamic>()),
      oauth2: map['oauth2'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2.fromMap((map['oauth2'] as Map).cast<String, dynamic>()),
    );
  }
}

