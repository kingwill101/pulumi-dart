// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_monitoring_settings_response.dart';

/// Azure Arc Management settings.
class AzureArcManagementSettingsResponse {
  /// Gets the azure arc monitoring settings.
  final pulumi.Input<AzureArcMonitoringSettingsResponse> monitoringSettings;

  /// Creates a new [AzureArcManagementSettingsResponse].
  /// [monitoringSettings] Gets the azure arc monitoring settings.
  AzureArcManagementSettingsResponse({
    required this.monitoringSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoringSettings': pulumi.Input.mapInputValue<AzureArcMonitoringSettingsResponse, Map<String, dynamic>>(monitoringSettings, (value) => value.toMap()),
    };
  }

  factory AzureArcManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcManagementSettingsResponse(
      monitoringSettings: (AzureArcMonitoringSettingsResponse.fromMap((map['monitoringSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

