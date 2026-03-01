// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_alert_settings_response.dart';
import 'classic_alert_settings_response.dart';

/// Monitoring Settings of the vault
class MonitoringSettingsResponse {
  /// Settings for Azure Monitor based alerts
  final AzureMonitorAlertSettingsResponse? azureMonitorAlertSettings;
  /// Settings for classic alerts
  final ClassicAlertSettingsResponse? classicAlertSettings;

  /// Creates a new [MonitoringSettingsResponse].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  /// [classicAlertSettings] Settings for classic alerts
  MonitoringSettingsResponse({
    this.azureMonitorAlertSettings,
    this.classicAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?azureMonitorAlertSettings == null ? null : azureMonitorAlertSettings!.toMap(),
      'classicAlertSettings': ?classicAlertSettings == null ? null : classicAlertSettings!.toMap(),
    };
  }

  factory MonitoringSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingsResponse(
      azureMonitorAlertSettings: map['azureMonitorAlertSettings'] == null ? null : AzureMonitorAlertSettingsResponse.fromMap((map['azureMonitorAlertSettings'] as Map).cast<String, dynamic>()),
      classicAlertSettings: map['classicAlertSettings'] == null ? null : ClassicAlertSettingsResponse.fromMap((map['classicAlertSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

