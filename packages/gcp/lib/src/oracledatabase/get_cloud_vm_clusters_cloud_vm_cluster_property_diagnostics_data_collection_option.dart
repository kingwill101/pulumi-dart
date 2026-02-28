// ignore_for_file: unused_element, unnecessary_cast


class GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption {
  /// Indicates whether diagnostic collection is enabled for the VM cluster
  final bool diagnosticsEventsEnabled;
  /// Indicates whether health monitoring is enabled for the VM cluster
  final bool healthMonitoringEnabled;
  /// Indicates whether incident logs and trace collection are enabled for the VM
  /// cluster
  final bool incidentLogsEnabled;

  /// Creates a new [GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption].
  /// [diagnosticsEventsEnabled] Indicates whether diagnostic collection is enabled for the VM cluster
  /// [healthMonitoringEnabled] Indicates whether health monitoring is enabled for the VM cluster
  /// [incidentLogsEnabled] Indicates whether incident logs and trace collection are enabled for the VM
  GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption({
    required this.diagnosticsEventsEnabled,
    required this.healthMonitoringEnabled,
    required this.incidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticsEventsEnabled': diagnosticsEventsEnabled,
      'healthMonitoringEnabled': healthMonitoringEnabled,
      'incidentLogsEnabled': incidentLogsEnabled,
    };
  }

  factory GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption(
      diagnosticsEventsEnabled: map['diagnosticsEventsEnabled'] as bool,
      healthMonitoringEnabled: map['healthMonitoringEnabled'] as bool,
      incidentLogsEnabled: map['incidentLogsEnabled'] as bool,
    );
  }
}

