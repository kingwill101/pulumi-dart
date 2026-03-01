// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_alert_settings.dart';

/// Monitoring Settings
class MonitoringSettings {
  /// Settings for Azure Monitor based alerts
  final AzureMonitorAlertSettings? azureMonitorAlertSettings;

  /// Creates a new [MonitoringSettings].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  MonitoringSettings({
    this.azureMonitorAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?azureMonitorAlertSettings == null ? null : azureMonitorAlertSettings!.toMap(),
    };
  }

  factory MonitoringSettings.fromMap(Map<String, dynamic> map) {
    return MonitoringSettings(
      azureMonitorAlertSettings: map['azureMonitorAlertSettings'] == null ? null : AzureMonitorAlertSettings.fromMap((map['azureMonitorAlertSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

