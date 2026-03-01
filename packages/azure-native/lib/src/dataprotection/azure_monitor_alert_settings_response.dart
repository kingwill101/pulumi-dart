// ignore_for_file: unused_element, unnecessary_cast


/// Settings for Azure Monitor based alerts
class AzureMonitorAlertSettingsResponse {
  final String? alertsForAllJobFailures;

  /// Creates a new [AzureMonitorAlertSettingsResponse].
  /// [alertsForAllJobFailures] Optional.
  AzureMonitorAlertSettingsResponse({
    this.alertsForAllJobFailures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllJobFailures': ?alertsForAllJobFailures,
    };
  }

  factory AzureMonitorAlertSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorAlertSettingsResponse(
      alertsForAllJobFailures: map['alertsForAllJobFailures'] == null ? null : map['alertsForAllJobFailures'] as String,
    );
  }
}

