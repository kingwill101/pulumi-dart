// ignore_for_file: unused_element, unnecessary_cast


/// The properties that define a Log Analytics Workspace.
class LogAnalyticsWorkspacePropertiesResponse {
  /// The list of connected agents.
  final List<String> connectedAgents;
  /// The Workspace Key.
  final String key;
  /// The Workspace ID.
  final String workspaceID;

  /// Creates a new [LogAnalyticsWorkspacePropertiesResponse].
  /// [connectedAgents] The list of connected agents.
  /// [key] The Workspace Key.
  /// [workspaceID] The Workspace ID.
  LogAnalyticsWorkspacePropertiesResponse({
    required this.connectedAgents,
    required this.key,
    required this.workspaceID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedAgents': connectedAgents,
      'key': key,
      'workspaceID': workspaceID,
    };
  }

  factory LogAnalyticsWorkspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspacePropertiesResponse(
      connectedAgents: (map['connectedAgents'] as List).cast<String>(),
      key: map['key'] as String,
      workspaceID: map['workspaceID'] as String,
    );
  }
}

