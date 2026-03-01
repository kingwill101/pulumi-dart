// ignore_for_file: unused_element, unnecessary_cast

import 'azure_arc_monitoring_settings.dart';

/// Azure Arc Management settings.
class AzureArcManagementSettings {
  /// Gets the azure arc monitoring settings.
  final AzureArcMonitoringSettings monitoringSettings;

  /// Creates a new [AzureArcManagementSettings].
  /// [monitoringSettings] Gets the azure arc monitoring settings.
  AzureArcManagementSettings({
    required this.monitoringSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoringSettings': monitoringSettings.toMap(),
    };
  }

  factory AzureArcManagementSettings.fromMap(Map<String, dynamic> map) {
    return AzureArcManagementSettings(
      monitoringSettings: AzureArcMonitoringSettings.fromMap((map['monitoringSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

