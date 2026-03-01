// ignore_for_file: unused_element, unnecessary_cast


class GroupDiagnosticsLogAnalytics {
  /// The log type which should be used. Possible values are `ContainerInsights` and `ContainerInstanceLogs`. Changing this forces a new resource to be created.
  final String? logType;
  /// Any metadata required for Log Analytics. Changing this forces a new resource to be created.
  final Map<String, String>? metadata;
  /// The Workspace ID of the Log Analytics Workspace. Changing this forces a new resource to be created.
  final String workspaceId;
  /// The Workspace Key of the Log Analytics Workspace. Changing this forces a new resource to be created.
  final String workspaceKey;

  /// Creates a new [GroupDiagnosticsLogAnalytics].
  /// [logType] The log type which should be used. Possible values are `ContainerInsights` and `ContainerInstanceLogs`. Changing this forces a new resource to be created.
  /// [metadata] Any metadata required for Log Analytics. Changing this forces a new resource to be created.
  /// [workspaceId] The Workspace ID of the Log Analytics Workspace. Changing this forces a new resource to be created.
  /// [workspaceKey] The Workspace Key of the Log Analytics Workspace. Changing this forces a new resource to be created.
  GroupDiagnosticsLogAnalytics({
    this.logType,
    this.metadata,
    required this.workspaceId,
    required this.workspaceKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logType': ?logType,
      'metadata': ?metadata,
      'workspaceId': workspaceId,
      'workspaceKey': workspaceKey,
    };
  }

  factory GroupDiagnosticsLogAnalytics.fromMap(Map<String, dynamic> map) {
    return GroupDiagnosticsLogAnalytics(
      logType: map['logType'] == null ? null : map['logType'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
      workspaceKey: map['workspaceKey'] as String,
    );
  }
}

