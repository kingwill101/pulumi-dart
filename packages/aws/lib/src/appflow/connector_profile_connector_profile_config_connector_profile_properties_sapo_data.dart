// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_properties_sapo_data_oauth_properties.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData {
  /// The location of the SAPOData resource.
  final String applicationHostUrl;
  /// The application path to catalog service.
  final String applicationServicePath;
  /// The client number for the client creating the connection.
  final String clientNumber;
  /// The logon language of SAPOData instance.
  final String? logonLanguage;
  /// The SAPOData OAuth properties required for OAuth type authentication.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties? oauthProperties;
  /// The port number of the SAPOData instance.
  final int portNumber;
  final String? privateLinkServiceName;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData].
  /// [applicationHostUrl] The location of the SAPOData resource.
  /// [applicationServicePath] The application path to catalog service.
  /// [clientNumber] The client number for the client creating the connection.
  /// [logonLanguage] The logon language of SAPOData instance.
  /// [oauthProperties] The SAPOData OAuth properties required for OAuth type authentication.
  /// [portNumber] The port number of the SAPOData instance.
  /// [privateLinkServiceName] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData({
    required this.applicationHostUrl,
    required this.applicationServicePath,
    required this.clientNumber,
    this.logonLanguage,
    this.oauthProperties,
    required this.portNumber,
    this.privateLinkServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationHostUrl': applicationHostUrl,
      'applicationServicePath': applicationServicePath,
      'clientNumber': clientNumber,
      'logonLanguage': ?logonLanguage,
      'oauthProperties': ?oauthProperties == null ? null : oauthProperties!.toMap(),
      'portNumber': portNumber,
      'privateLinkServiceName': ?privateLinkServiceName,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData(
      applicationHostUrl: map['applicationHostUrl'] as String,
      applicationServicePath: map['applicationServicePath'] as String,
      clientNumber: map['clientNumber'] as String,
      logonLanguage: map['logonLanguage'] == null ? null : map['logonLanguage'] as String,
      oauthProperties: map['oauthProperties'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties.fromMap((map['oauthProperties'] as Map).cast<String, dynamic>()),
      portNumber: map['portNumber'] as int,
      privateLinkServiceName: map['privateLinkServiceName'] == null ? null : map['privateLinkServiceName'] as String,
    );
  }
}

