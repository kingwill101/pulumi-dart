// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_alert_settings_response.dart';

/// Monitoring Settings
class MonitoringSettingsResponse {
  /// Settings for Azure Monitor based alerts
  final AzureMonitorAlertSettingsResponse? azureMonitorAlertSettings;

  /// Creates a new [MonitoringSettingsResponse].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  MonitoringSettingsResponse({
    this.azureMonitorAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?azureMonitorAlertSettings == null ? null : azureMonitorAlertSettings!.toMap(),
    };
  }

  factory MonitoringSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingsResponse(
      azureMonitorAlertSettings: map['azureMonitorAlertSettings'] == null ? null : AzureMonitorAlertSettingsResponse.fromMap((map['azureMonitorAlertSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

