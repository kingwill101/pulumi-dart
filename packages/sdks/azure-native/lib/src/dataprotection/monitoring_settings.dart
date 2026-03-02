// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_alert_settings.dart';

/// Monitoring Settings
class MonitoringSettings {
  /// Settings for Azure Monitor based alerts
  final pulumi.Input<AzureMonitorAlertSettings>? azureMonitorAlertSettings;

  /// Creates a new [MonitoringSettings].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  MonitoringSettings({
    this.azureMonitorAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?pulumi.Input.mapOptionalInputValue<AzureMonitorAlertSettings, Map<String, dynamic>>(azureMonitorAlertSettings, (value) => value.toMap()),
    };
  }

  factory MonitoringSettings.fromMap(Map<String, dynamic> map) {
    return MonitoringSettings(
      azureMonitorAlertSettings: map['azureMonitorAlertSettings'] == null ? null : (AzureMonitorAlertSettings.fromMap((map['azureMonitorAlertSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

