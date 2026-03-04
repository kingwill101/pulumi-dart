// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for Azure Monitor based alerts
class AzureMonitorAlertSettings {
  final pulumi.Input<String>? alertsForAllJobFailures;

  /// Creates a new [AzureMonitorAlertSettings].
  /// [alertsForAllJobFailures] Optional.
  AzureMonitorAlertSettings({this.alertsForAllJobFailures});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllJobFailures': ?alertsForAllJobFailures,
    };
  }

  factory AzureMonitorAlertSettings.fromMap(Map<String, dynamic> map) {
    return AzureMonitorAlertSettings(
      alertsForAllJobFailures: (() {
        final guardedValue = map['alertsForAllJobFailures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
