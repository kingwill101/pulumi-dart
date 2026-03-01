// ignore_for_file: unused_element, unnecessary_cast


class CloudVmClusterDataCollectionOptions {
  final bool isDiagnosticsEventsEnabled;
  final bool isHealthMonitoringEnabled;
  final bool isIncidentLogsEnabled;

  /// Creates a new [CloudVmClusterDataCollectionOptions].
  /// [isDiagnosticsEventsEnabled] Required.
  /// [isHealthMonitoringEnabled] Required.
  /// [isIncidentLogsEnabled] Required.
  CloudVmClusterDataCollectionOptions({
    required this.isDiagnosticsEventsEnabled,
    required this.isHealthMonitoringEnabled,
    required this.isIncidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDiagnosticsEventsEnabled': isDiagnosticsEventsEnabled,
      'isHealthMonitoringEnabled': isHealthMonitoringEnabled,
      'isIncidentLogsEnabled': isIncidentLogsEnabled,
    };
  }

  factory CloudVmClusterDataCollectionOptions.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterDataCollectionOptions(
      isDiagnosticsEventsEnabled: map['isDiagnosticsEventsEnabled'] as bool,
      isHealthMonitoringEnabled: map['isHealthMonitoringEnabled'] as bool,
      isIncidentLogsEnabled: map['isIncidentLogsEnabled'] as bool,
    );
  }
}

