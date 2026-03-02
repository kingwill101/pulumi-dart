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
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoData({
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
      basicAuthCredentials: map['basicAuthCredentials'] == null ? null : ((ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials.fromMap((map['basicAuthCredentials']! as Map).cast<String, dynamic>())).input()).input(),
      oauthCredentials: map['oauthCredentials'] == null ? null : ((ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials.fromMap((map['oauthCredentials']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

