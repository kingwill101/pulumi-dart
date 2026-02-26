// ignore_for_file: unused_element, unnecessary_cast

class CloudVmClusterPropertiesDiagnosticsDataCollectionOptions {
  /// Indicates whether diagnostic collection is enabled for the VM cluster
  final bool? diagnosticsEventsEnabled;

  /// Indicates whether health monitoring is enabled for the VM cluster
  final bool? healthMonitoringEnabled;

  /// Indicates whether incident logs and trace collection are enabled for the VM
  /// cluster
  final bool? incidentLogsEnabled;

  CloudVmClusterPropertiesDiagnosticsDataCollectionOptions({
    this.diagnosticsEventsEnabled,
    this.healthMonitoringEnabled,
    this.incidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diagnosticsEventsEnabledValue = diagnosticsEventsEnabled;
    if (diagnosticsEventsEnabledValue != null) {
      map['diagnosticsEventsEnabled'] = diagnosticsEventsEnabledValue;
    }
    final healthMonitoringEnabledValue = healthMonitoringEnabled;
    if (healthMonitoringEnabledValue != null) {
      map['healthMonitoringEnabled'] = healthMonitoringEnabledValue;
    }
    final incidentLogsEnabledValue = incidentLogsEnabled;
    if (incidentLogsEnabledValue != null) {
      map['incidentLogsEnabled'] = incidentLogsEnabledValue;
    }
    return map;
  }

  factory CloudVmClusterPropertiesDiagnosticsDataCollectionOptions.fromMap(
      Map<String, dynamic> map) {
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
