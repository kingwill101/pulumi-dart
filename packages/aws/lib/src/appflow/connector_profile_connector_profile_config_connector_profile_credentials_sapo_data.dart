// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_sapo_data_basic_auth_credentials.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_sapo_data_oauth_credentials.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData {
  /// The SAPOData basic authentication credentials.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials? basicAuthCredentials;
  /// The SAPOData OAuth type authentication credentials.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials? oauthCredentials;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData].
  /// [basicAuthCredentials] The SAPOData basic authentication credentials.
  /// [oauthCredentials] The SAPOData OAuth type authentication credentials.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData({
    this.basicAuthCredentials,
    this.oauthCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuthCredentials': ?basicAuthCredentials == null ? null : basicAuthCredentials!.toMap(),
      'oauthCredentials': ?oauthCredentials == null ? null : oauthCredentials!.toMap(),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData(
      basicAuthCredentials: map['basicAuthCredentials'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials.fromMap((map['basicAuthCredentials'] as Map).cast<String, dynamic>()),
      oauthCredentials: map['oauthCredentials'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials.fromMap((map['oauthCredentials'] as Map).cast<String, dynamic>()),
    );
  }
}

