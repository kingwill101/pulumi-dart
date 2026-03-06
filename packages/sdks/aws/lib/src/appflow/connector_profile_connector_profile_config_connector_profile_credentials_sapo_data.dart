// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_sapo_data_basic_auth_credentials.dart';
import 'connector_profile_connector_profile_config_connector_profile_credentials_sapo_data_oauth_credentials.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData {
  /// The SAPOData basic authentication credentials.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials>? basicAuthCredentials;
  /// The SAPOData OAuth type authentication credentials.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials>? oauthCredentials;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData].
  /// [basicAuthCredentials] The SAPOData basic authentication credentials.
  /// [oauthCredentials] The SAPOData OAuth type authentication credentials.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData({
    this.basicAuthCredentials,
    this.oauthCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuthCredentials': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials, Map<String, dynamic>>(basicAuthCredentials, (value) => value.toMap()),
      'oauthCredentials': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials, Map<String, dynamic>>(oauthCredentials, (value) => value.toMap()),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData(
      basicAuthCredentials: (() { final guardedValue = map['basicAuthCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauthCredentials: (() { final guardedValue = map['oauthCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

