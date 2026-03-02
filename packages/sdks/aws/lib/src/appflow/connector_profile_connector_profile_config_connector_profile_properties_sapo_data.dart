// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_properties_sapo_data_oauth_properties.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData {
  /// The location of the SAPOData resource.
  final pulumi.Input<String> applicationHostUrl;
  /// The application path to catalog service.
  final pulumi.Input<String> applicationServicePath;
  /// The client number for the client creating the connection.
  final pulumi.Input<String> clientNumber;
  /// The logon language of SAPOData instance.
  final pulumi.Input<String>? logonLanguage;
  /// The SAPOData OAuth properties required for OAuth type authentication.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties>? oauthProperties;
  /// The port number of the SAPOData instance.
  final pulumi.Input<int> portNumber;
  final pulumi.Input<String>? privateLinkServiceName;

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
      'oauthProperties': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties, Map<String, dynamic>>(oauthProperties, (value) => value.toMap()),
      'portNumber': portNumber,
      'privateLinkServiceName': ?privateLinkServiceName,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData(
      applicationHostUrl: (map['applicationHostUrl'] as String).input(),
      applicationServicePath: (map['applicationServicePath'] as String).input(),
      clientNumber: (map['clientNumber'] as String).input(),
      logonLanguage: map['logonLanguage'] == null ? null : (map['logonLanguage'] as String).input(),
      oauthProperties: map['oauthProperties'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties.fromMap((map['oauthProperties'] as Map).cast<String, dynamic>())).input(),
      portNumber: (map['portNumber'] as int).input(),
      privateLinkServiceName: map['privateLinkServiceName'] == null ? null : (map['privateLinkServiceName'] as String).input(),
    );
  }
}

