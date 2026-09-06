// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_alert_settings_response.dart';

/// Monitoring Settings
class MonitoringSettingsResponse {
  /// Settings for Azure Monitor based alerts
  final pulumi.Input<AzureMonitorAlertSettingsResponse?>? azureMonitorAlertSettings;

  /// Creates a new [MonitoringSettingsResponse].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  const MonitoringSettingsResponse({
    this.azureMonitorAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?pulumi.Input.mapOptionalInputValue<AzureMonitorAlertSettingsResponse, Map<String, dynamic>>(azureMonitorAlertSettings, (value) => value.toMap()),
    };
  }

  factory MonitoringSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingsResponse(
      azureMonitorAlertSettings: (() { final guardedValue = map['azureMonitorAlertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorAlertSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
