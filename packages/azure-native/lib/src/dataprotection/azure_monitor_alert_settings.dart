// ignore_for_file: unused_element, unnecessary_cast


/// Settings for Azure Monitor based alerts
class AzureMonitorAlertSettings {
  final String? alertsForAllJobFailures;

  /// Creates a new [AzureMonitorAlertSettings].
  /// [alertsForAllJobFailures] Optional.
  AzureMonitorAlertSettings({
    this.alertsForAllJobFailures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllJobFailures': ?alertsForAllJobFailures,
    };
  }

  factory AzureMonitorAlertSettings.fromMap(Map<String, dynamic> map) {
    return AzureMonitorAlertSettings(
      alertsForAllJobFailures: map['alertsForAllJobFailures'] == null ? null : map['alertsForAllJobFailures'] as String,
    );
  }
}

