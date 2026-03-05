// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Arc Monitoring settings.
class AzureArcMonitoringSettingsResponse {
  /// Number of alert rules settings.
  final pulumi.Input<int> alertRulesCount;
  /// Logs volume settings.
  final pulumi.Input<double> logsVolumeInGB;

  /// Creates a new [AzureArcMonitoringSettingsResponse].
  /// [alertRulesCount] Number of alert rules settings.
  /// [logsVolumeInGB] Logs volume settings.
  AzureArcMonitoringSettingsResponse({
    required this.alertRulesCount,
    required this.logsVolumeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRulesCount': alertRulesCount,
      'logsVolumeInGB': logsVolumeInGB,
    };
  }

  factory AzureArcMonitoringSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcMonitoringSettingsResponse(
      alertRulesCount: pulumi.Input.fromValue(map['alertRulesCount'] as int),
      logsVolumeInGB: pulumi.Input.fromValue(map['logsVolumeInGB'] as double),
    );
  }
}

