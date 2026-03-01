// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connectors_service_account_token_settings_response.dart';

/// AkriConnectorsServiceAccountAuthentication properties.
class AkriConnectorsServiceAccountAuthenticationResponse {
  /// AkriConnectorsMqttAuthenticationMethod properties.
  /// Expected value is 'ServiceAccountToken'.
  final String method;
  /// The service account token for the MQTT connection.
  final AkriConnectorsServiceAccountTokenSettingsResponse serviceAccountTokenSettings;

  /// Creates a new [AkriConnectorsServiceAccountAuthenticationResponse].
  /// [method] AkriConnectorsMqttAuthenticationMethod properties.
  /// [serviceAccountTokenSettings] The service account token for the MQTT connection.
  AkriConnectorsServiceAccountAuthenticationResponse({
    required this.method,
    required this.serviceAccountTokenSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'serviceAccountTokenSettings': serviceAccountTokenSettings.toMap(),
    };
  }

  factory AkriConnectorsServiceAccountAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsServiceAccountAuthenticationResponse(
      method: map['method'] as String,
      serviceAccountTokenSettings: AkriConnectorsServiceAccountTokenSettingsResponse.fromMap((map['serviceAccountTokenSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

