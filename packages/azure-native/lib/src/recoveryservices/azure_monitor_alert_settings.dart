// ignore_for_file: unused_element, unnecessary_cast


/// Settings for Azure Monitor based alerts
class AzureMonitorAlertSettings {
  final String? alertsForAllFailoverIssues;
  final String? alertsForAllJobFailures;
  final String? alertsForAllReplicationIssues;

  /// Creates a new [AzureMonitorAlertSettings].
  /// [alertsForAllFailoverIssues] Optional.
  /// [alertsForAllJobFailures] Optional.
  /// [alertsForAllReplicationIssues] Optional.
  AzureMonitorAlertSettings({
    this.alertsForAllFailoverIssues,
    this.alertsForAllJobFailures,
    this.alertsForAllReplicationIssues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllFailoverIssues': ?alertsForAllFailoverIssues,
      'alertsForAllJobFailures': ?alertsForAllJobFailures,
      'alertsForAllReplicationIssues': ?alertsForAllReplicationIssues,
    };
  }

  factory AzureMonitorAlertSettings.fromMap(Map<String, dynamic> map) {
    return AzureMonitorAlertSettings(
      alertsForAllFailoverIssues: map['alertsForAllFailoverIssues'] == null ? null : map['alertsForAllFailoverIssues'] as String,
      alertsForAllJobFailures: map['alertsForAllJobFailures'] == null ? null : map['alertsForAllJobFailures'] as String,
      alertsForAllReplicationIssues: map['alertsForAllReplicationIssues'] == null ? null : map['alertsForAllReplicationIssues'] as String,
    );
  }
}

