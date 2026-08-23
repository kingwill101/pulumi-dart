// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudVmClusterDataCollectionOptions {
  /// Whether to enable diagnostic events for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool> isDiagnosticsEventsEnabled;
  /// Whether to enable health monitoring for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool> isHealthMonitoringEnabled;
  /// Whether to enable incident logs for the VM cluster. Changing this will create a new resource.
  final pulumi.Input<bool> isIncidentLogsEnabled;

  /// Creates a new [CloudVmClusterDataCollectionOptions].
  /// [isDiagnosticsEventsEnabled] Whether to enable diagnostic events for the VM cluster. Changing this will create a new resource.
  /// [isHealthMonitoringEnabled] Whether to enable health monitoring for the VM cluster. Changing this will create a new resource.
  /// [isIncidentLogsEnabled] Whether to enable incident logs for the VM cluster. Changing this will create a new resource.
  const CloudVmClusterDataCollectionOptions({
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
      isDiagnosticsEventsEnabled: pulumi.Input.fromValue(map['isDiagnosticsEventsEnabled'] as bool),
      isHealthMonitoringEnabled: pulumi.Input.fromValue(map['isHealthMonitoringEnabled'] as bool),
      isIncidentLogsEnabled: pulumi.Input.fromValue(map['isIncidentLogsEnabled'] as bool),
    );
  }
}
