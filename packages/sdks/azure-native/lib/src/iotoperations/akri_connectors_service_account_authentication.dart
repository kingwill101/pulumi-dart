// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connectors_service_account_token_settings.dart';

/// AkriConnectorsServiceAccountAuthentication properties.
class AkriConnectorsServiceAccountAuthentication {
  /// AkriConnectorsMqttAuthenticationMethod properties.
  /// Expected value is 'ServiceAccountToken'.
  final pulumi.Input<String> method;
  /// The service account token for the MQTT connection.
  final pulumi.Input<AkriConnectorsServiceAccountTokenSettings> serviceAccountTokenSettings;

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
      'serviceAccountTokenSettings': pulumi.Input.mapInputValue<AkriConnectorsServiceAccountTokenSettings, Map<String, dynamic>>(serviceAccountTokenSettings, (value) => value.toMap()),
    };
  }

  factory AkriConnectorsServiceAccountAuthentication.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsServiceAccountAuthentication(
      method: pulumi.Input.fromValue(map['method'] as String),
      serviceAccountTokenSettings: pulumi.Input.fromValue(AkriConnectorsServiceAccountTokenSettings.fromMap((map['serviceAccountTokenSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

