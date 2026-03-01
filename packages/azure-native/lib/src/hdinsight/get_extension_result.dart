// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExtension.
class GetExtensionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The status of the monitor on the HDInsight cluster.
  final bool? clusterMonitoringEnabled;
  /// The workspace ID of the monitor on the HDInsight cluster.
  final String? workspaceId;

  /// Creates a new [GetExtensionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterMonitoringEnabled] The status of the monitor on the HDInsight cluster.
  /// [workspaceId] The workspace ID of the monitor on the HDInsight cluster.
  GetExtensionResult({
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

  factory GetExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clusterMonitoringEnabled: map['clusterMonitoringEnabled'] == null ? null : map['clusterMonitoringEnabled'] as bool,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

