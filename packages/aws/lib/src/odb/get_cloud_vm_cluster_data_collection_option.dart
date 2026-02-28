// ignore_for_file: unused_element, unnecessary_cast

class GetCloudVmClusterDataCollectionOption {
  final bool isDiagnosticsEventsEnabled;
  final bool isHealthMonitoringEnabled;
  final bool isIncidentLogsEnabled;

  /// Creates a new [GetCloudVmClusterDataCollectionOption].
  /// [isDiagnosticsEventsEnabled] Required.
  /// [isHealthMonitoringEnabled] Required.
  /// [isIncidentLogsEnabled] Required.
  GetCloudVmClusterDataCollectionOption({
    required this.isDiagnosticsEventsEnabled,
    required this.isHealthMonitoringEnabled,
    required this.isIncidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isDiagnosticsEventsEnabled'] = isDiagnosticsEventsEnabled;
    map['isHealthMonitoringEnabled'] = isHealthMonitoringEnabled;
    map['isIncidentLogsEnabled'] = isIncidentLogsEnabled;
    return map;
  }

  factory GetCloudVmClusterDataCollectionOption.fromMap(
      Map<String, dynamic> map) {
    return GetCloudVmClusterDataCollectionOption(
      isDiagnosticsEventsEnabled: map['isDiagnosticsEventsEnabled'] as bool,
      isHealthMonitoringEnabled: map['isHealthMonitoringEnabled'] as bool,
      isIncidentLogsEnabled: map['isIncidentLogsEnabled'] as bool,
    );
  }
}
