// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Arc Monitoring settings.
class AzureArcMonitoringSettings {
  /// Number of alert rules settings.
  final pulumi.Input<int> alertRulesCount;
  /// Logs volume settings.
  final pulumi.Input<double> logsVolumeInGB;

  /// Creates a new [AzureArcMonitoringSettings].
  /// [alertRulesCount] Number of alert rules settings.
  /// [logsVolumeInGB] Logs volume settings.
  const AzureArcMonitoringSettings({
    required this.alertRulesCount,
    required this.logsVolumeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRulesCount': alertRulesCount,
      'logsVolumeInGB': logsVolumeInGB,
    };
  }

  factory AzureArcMonitoringSettings.fromMap(Map<String, dynamic> map) {
    return AzureArcMonitoringSettings(
      alertRulesCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['alertRulesCount'])),
      logsVolumeInGB: pulumi.Input.fromValue((map['logsVolumeInGB'] as num).toDouble()),
    );
  }
}
