// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_alert_settings.dart';
import 'classic_alert_settings.dart';

/// Monitoring Settings of the vault
class MonitoringSettings {
  /// Settings for Azure Monitor based alerts
  final AzureMonitorAlertSettings? azureMonitorAlertSettings;
  /// Settings for classic alerts
  final ClassicAlertSettings? classicAlertSettings;

  /// Creates a new [MonitoringSettings].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  /// [classicAlertSettings] Settings for classic alerts
  MonitoringSettings({
    this.azureMonitorAlertSettings,
    this.classicAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?azureMonitorAlertSettings == null ? null : azureMonitorAlertSettings!.toMap(),
      'classicAlertSettings': ?classicAlertSettings == null ? null : classicAlertSettings!.toMap(),
    };
  }

  factory MonitoringSettings.fromMap(Map<String, dynamic> map) {
    return MonitoringSettings(
      azureMonitorAlertSettings: map['azureMonitorAlertSettings'] == null ? null : AzureMonitorAlertSettings.fromMap((map['azureMonitorAlertSettings'] as Map).cast<String, dynamic>()),
      classicAlertSettings: map['classicAlertSettings'] == null ? null : ClassicAlertSettings.fromMap((map['classicAlertSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

