// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudVmClusterDataCollectionOptions {
  final pulumi.Input<bool> isDiagnosticsEventsEnabled;
  final pulumi.Input<bool> isHealthMonitoringEnabled;
  final pulumi.Input<bool> isIncidentLogsEnabled;

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
      isDiagnosticsEventsEnabled: (map['isDiagnosticsEventsEnabled'] as bool).input(),
      isHealthMonitoringEnabled: (map['isHealthMonitoringEnabled'] as bool).input(),
      isIncidentLogsEnabled: (map['isIncidentLogsEnabled'] as bool).input(),
    );
  }
}

