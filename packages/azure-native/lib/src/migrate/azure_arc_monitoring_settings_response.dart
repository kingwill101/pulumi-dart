// ignore_for_file: unused_element, unnecessary_cast


/// Azure Arc Monitoring settings.
class AzureArcMonitoringSettingsResponse {
  /// Number of alert rules settings.
  final int alertRulesCount;
  /// Logs volume settings.
  final double logsVolumeInGB;

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
      alertRulesCount: map['alertRulesCount'] as int,
      logsVolumeInGB: map['logsVolumeInGB'] as double,
    );
  }
}

