// ignore_for_file: unused_element, unnecessary_cast

class GetCloudVmClusterPropertyDiagnosticsDataCollectionOption {
  /// Indicates whether diagnostic collection is enabled for the VM cluster
  final bool diagnosticsEventsEnabled;

  /// Indicates whether health monitoring is enabled for the VM cluster
  final bool healthMonitoringEnabled;

  /// Indicates whether incident logs and trace collection are enabled for the VM
  /// cluster
  final bool incidentLogsEnabled;

  GetCloudVmClusterPropertyDiagnosticsDataCollectionOption({
    required this.diagnosticsEventsEnabled,
    required this.healthMonitoringEnabled,
    required this.incidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diagnosticsEventsEnabled'] = diagnosticsEventsEnabled;
    map['healthMonitoringEnabled'] = healthMonitoringEnabled;
    map['incidentLogsEnabled'] = incidentLogsEnabled;
    return map;
  }

  factory GetCloudVmClusterPropertyDiagnosticsDataCollectionOption.fromMap(
      Map<String, dynamic> map) {
    return GetCloudVmClusterPropertyDiagnosticsDataCollectionOption(
      diagnosticsEventsEnabled: map['diagnosticsEventsEnabled'] as bool,
      healthMonitoringEnabled: map['healthMonitoringEnabled'] as bool,
      incidentLogsEnabled: map['incidentLogsEnabled'] as bool,
    );
  }
}
