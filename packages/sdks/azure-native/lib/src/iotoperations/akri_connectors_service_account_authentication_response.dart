// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_service_account_token_settings_response.dart';

/// AkriConnectorsServiceAccountAuthentication properties.
class AkriConnectorsServiceAccountAuthenticationResponse {
  /// AkriConnectorsMqttAuthenticationMethod properties.
  /// Expected value is 'ServiceAccountToken'.
  final pulumi.Input<String> method;
  /// The service account token for the MQTT connection.
  final pulumi.Input<AkriConnectorsServiceAccountTokenSettingsResponse> serviceAccountTokenSettings;

  /// Creates a new [AkriConnectorsServiceAccountAuthenticationResponse].
  /// [method] AkriConnectorsMqttAuthenticationMethod properties.
  /// [serviceAccountTokenSettings] The service account token for the MQTT connection.
  const AkriConnectorsServiceAccountAuthenticationResponse({
    required this.method,
    required this.serviceAccountTokenSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'serviceAccountTokenSettings': pulumi.Input.mapInputValue<AkriConnectorsServiceAccountTokenSettingsResponse, Map<String, dynamic>>(serviceAccountTokenSettings, (value) => value.toMap()),
    };
  }

  factory AkriConnectorsServiceAccountAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsServiceAccountAuthenticationResponse(
      method: pulumi.Input.fromValue(map['method'] as String),
      serviceAccountTokenSettings: pulumi.Input.fromValue(AkriConnectorsServiceAccountTokenSettingsResponse.fromMap((map['serviceAccountTokenSettings']! as Map).cast<String, dynamic>())),
    );
  }
}
