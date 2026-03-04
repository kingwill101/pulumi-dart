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
  final pulumi.Input<
    ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties
  >?
  oauthProperties;

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
      'oauthProperties':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties,
            Map<String, dynamic>
          >(oauthProperties, (value) => value.toMap()),
      'portNumber': portNumber,
      'privateLinkServiceName': ?privateLinkServiceName,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoData(
      applicationHostUrl: pulumi.Input.fromValue(
        map['applicationHostUrl'] as String,
      ),
      applicationServicePath: pulumi.Input.fromValue(
        map['applicationServicePath'] as String,
      ),
      clientNumber: pulumi.Input.fromValue(map['clientNumber'] as String),
      logonLanguage: (() {
        final guardedValue = map['logonLanguage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauthProperties: (() {
        final guardedValue = map['oauthProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      portNumber: pulumi.Input.fromValue(map['portNumber'] as int),
      privateLinkServiceName: (() {
        final guardedValue = map['privateLinkServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
