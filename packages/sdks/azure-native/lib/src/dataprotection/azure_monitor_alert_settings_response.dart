// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for Azure Monitor based alerts
class AzureMonitorAlertSettingsResponse {
  final pulumi.Input<String>? alertsForAllJobFailures;

  /// Creates a new [AzureMonitorAlertSettingsResponse].
  /// [alertsForAllJobFailures] Optional.
  AzureMonitorAlertSettingsResponse({this.alertsForAllJobFailures});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllJobFailures': ?alertsForAllJobFailures,
    };
  }

  factory AzureMonitorAlertSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorAlertSettingsResponse(
      alertsForAllJobFailures: (() {
        final guardedValue = map['alertsForAllJobFailures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
