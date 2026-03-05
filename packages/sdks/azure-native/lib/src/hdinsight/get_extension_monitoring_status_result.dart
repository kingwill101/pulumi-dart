// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExtensionMonitoringStatus.
class GetExtensionMonitoringStatusResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The status of the monitor on the HDInsight cluster.
  final bool? clusterMonitoringEnabled;
  /// The workspace ID of the monitor on the HDInsight cluster.
  final String? workspaceId;

  /// Creates a new [GetExtensionMonitoringStatusResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterMonitoringEnabled] The status of the monitor on the HDInsight cluster.
  /// [workspaceId] The workspace ID of the monitor on the HDInsight cluster.
  GetExtensionMonitoringStatusResult({
    required this.azureApiVersion,
    this.clusterMonitoringEnabled,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clusterMonitoringEnabled': ?clusterMonitoringEnabled,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetExtensionMonitoringStatusResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionMonitoringStatusResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clusterMonitoringEnabled: (() { final guardedValue = map['clusterMonitoringEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

