// ignore_for_file: unused_element, unnecessary_cast


/// Azure Arc Monitoring settings.
class AzureArcMonitoringSettings {
  /// Number of alert rules settings.
  final int alertRulesCount;
  /// Logs volume settings.
  final double logsVolumeInGB;

  /// Creates a new [AzureArcMonitoringSettings].
  /// [alertRulesCount] Number of alert rules settings.
  /// [logsVolumeInGB] Logs volume settings.
  AzureArcMonitoringSettings({
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
      alertRulesCount: map['alertRulesCount'] as int,
      logsVolumeInGB: map['logsVolumeInGB'] as double,
    );
  }
}

