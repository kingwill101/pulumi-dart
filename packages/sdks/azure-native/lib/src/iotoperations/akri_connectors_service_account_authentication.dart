// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connectors_service_account_token_settings.dart';

/// AkriConnectorsServiceAccountAuthentication properties.
class AkriConnectorsServiceAccountAuthentication {
  /// AkriConnectorsMqttAuthenticationMethod properties.
  /// Expected value is 'ServiceAccountToken'.
  final String method;
  /// The service account token for the MQTT connection.
  final AkriConnectorsServiceAccountTokenSettings serviceAccountTokenSettings;

  /// Creates a new [AkriConnectorsServiceAccountAuthentication].
  /// [method] AkriConnectorsMqttAuthenticationMethod properties.
  /// [serviceAccountTokenSettings] The service account token for the MQTT connection.
  AkriConnectorsServiceAccountAuthentication({
    required this.method,
    required this.serviceAccountTokenSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'serviceAccountTokenSettings': serviceAccountTokenSettings.toMap(),
    };
  }

  factory AkriConnectorsServiceAccountAuthentication.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsServiceAccountAuthentication(
      method: map['method'] as String,
      serviceAccountTokenSettings: AkriConnectorsServiceAccountTokenSettings.fromMap((map['serviceAccountTokenSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

