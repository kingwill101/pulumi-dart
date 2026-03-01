// ignore_for_file: unused_element, unnecessary_cast

class CloudVmClusterPropertiesDiagnosticsDataCollectionOptions {
  /// Indicates whether diagnostic collection is enabled for the VM cluster
  final bool? diagnosticsEventsEnabled;

  /// Indicates whether health monitoring is enabled for the VM cluster
  final bool? healthMonitoringEnabled;

  /// Indicates whether incident logs and trace collection are enabled for the VM
  /// cluster
  final bool? incidentLogsEnabled;

  /// Creates a new [CloudVmClusterPropertiesDiagnosticsDataCollectionOptions].
  /// [diagnosticsEventsEnabled] Indicates whether diagnostic collection is enabled for the VM cluster
  /// [healthMonitoringEnabled] Indicates whether health monitoring is enabled for the VM cluster
  /// [incidentLogsEnabled] Indicates whether incident logs and trace collection are enabled for the VM
  CloudVmClusterPropertiesDiagnosticsDataCollectionOptions({
    this.diagnosticsEventsEnabled,
    this.healthMonitoringEnabled,
    this.incidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticsEventsEnabled': ?diagnosticsEventsEnabled,
      'healthMonitoringEnabled': ?healthMonitoringEnabled,
      'incidentLogsEnabled': ?incidentLogsEnabled,
    };
  }

  factory CloudVmClusterPropertiesDiagnosticsDataCollectionOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudVmClusterPropertiesDiagnosticsDataCollectionOptions(
      diagnosticsEventsEnabled: map['diagnosticsEventsEnabled'] == null
          ? null
          : map['diagnosticsEventsEnabled'] as bool,
      healthMonitoringEnabled: map['healthMonitoringEnabled'] == null
          ? null
          : map['healthMonitoringEnabled'] as bool,
      incidentLogsEnabled: map['incidentLogsEnabled'] == null
          ? null
          : map['incidentLogsEnabled'] as bool,
    );
  }
}
