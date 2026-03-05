// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_monitoring_settings.dart';

/// Azure Arc Management settings.
class AzureArcManagementSettings {
  /// Gets the azure arc monitoring settings.
  final pulumi.Input<AzureArcMonitoringSettings> monitoringSettings;

  /// Creates a new [AzureArcManagementSettings].
  /// [monitoringSettings] Gets the azure arc monitoring settings.
  AzureArcManagementSettings({
    required this.monitoringSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monitoringSettings': pulumi.Input.mapInputValue<AzureArcMonitoringSettings, Map<String, dynamic>>(monitoringSettings, (value) => value.toMap()),
    };
  }

  factory AzureArcManagementSettings.fromMap(Map<String, dynamic> map) {
    return AzureArcManagementSettings(
      monitoringSettings: pulumi.Input.fromValue(AzureArcMonitoringSettings.fromMap((map['monitoringSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

