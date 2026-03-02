// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_alert_settings_response.dart';

/// Monitoring Settings
class MonitoringSettingsResponse {
  /// Settings for Azure Monitor based alerts
  final pulumi.Input<AzureMonitorAlertSettingsResponse>? azureMonitorAlertSettings;

  /// Creates a new [MonitoringSettingsResponse].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  MonitoringSettingsResponse({
    this.azureMonitorAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?pulumi.Input.mapOptionalInputValue<AzureMonitorAlertSettingsResponse, Map<String, dynamic>>(azureMonitorAlertSettings, (value) => value.toMap()),
    };
  }

  factory MonitoringSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingsResponse(
      azureMonitorAlertSettings: map['azureMonitorAlertSettings'] == null ? null : (AzureMonitorAlertSettingsResponse.fromMap((map['azureMonitorAlertSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

