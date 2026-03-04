// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_health_server_response.dart';
import 'application_gateway_backend_http_settings_response.dart';

/// Application gateway BackendHealthHttp settings.
class ApplicationGatewayBackendHealthHttpSettingsResponse {
  /// Reference to an ApplicationGatewayBackendHttpSettings resource.
  final pulumi.Input<ApplicationGatewayBackendHttpSettingsResponse>?
  backendHttpSettings;

  /// List of ApplicationGatewayBackendHealthServer resources.
  final pulumi.Input<List<ApplicationGatewayBackendHealthServerResponse>>?
  servers;

  /// Creates a new [ApplicationGatewayBackendHealthHttpSettingsResponse].
  /// [backendHttpSettings] Reference to an ApplicationGatewayBackendHttpSettings resource.
  /// [servers] List of ApplicationGatewayBackendHealthServer resources.
  ApplicationGatewayBackendHealthHttpSettingsResponse({
    this.backendHttpSettings,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendHttpSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationGatewayBackendHttpSettingsResponse,
            Map<String, dynamic>
          >(backendHttpSettings, (value) => value.toMap()),
      'servers':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationGatewayBackendHealthServerResponse>,
            List<Map<String, dynamic>>
          >(
            servers,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayBackendHealthServerResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationGatewayBackendHealthHttpSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayBackendHealthHttpSettingsResponse(
      backendHttpSettings: (() {
        final guardedValue = map['backendHttpSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationGatewayBackendHttpSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      servers: (() {
        final guardedValue = map['servers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<ApplicationGatewayBackendHealthServerResponse>(
            guardedValue,
            (value) => ApplicationGatewayBackendHealthServerResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
