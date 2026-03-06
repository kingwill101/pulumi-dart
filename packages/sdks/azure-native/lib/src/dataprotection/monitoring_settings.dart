// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_alert_settings.dart';

/// Monitoring Settings
class MonitoringSettings {
  /// Settings for Azure Monitor based alerts
  final pulumi.Input<AzureMonitorAlertSettings>? azureMonitorAlertSettings;

  /// Creates a new [MonitoringSettings].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  const MonitoringSettings({
    this.azureMonitorAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?pulumi.Input.mapOptionalInputValue<AzureMonitorAlertSettings, Map<String, dynamic>>(azureMonitorAlertSettings, (value) => value.toMap()),
    };
  }

  factory MonitoringSettings.fromMap(Map<String, dynamic> map) {
    return MonitoringSettings(
      azureMonitorAlertSettings: (() { final guardedValue = map['azureMonitorAlertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorAlertSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

