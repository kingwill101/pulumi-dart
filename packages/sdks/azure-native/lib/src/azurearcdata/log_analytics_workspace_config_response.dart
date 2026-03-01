// ignore_for_file: unused_element, unnecessary_cast


/// Log analytics workspace id and primary key
class LogAnalyticsWorkspaceConfigResponse {
  /// Azure Log Analytics workspace ID
  final String? workspaceId;

  /// Creates a new [LogAnalyticsWorkspaceConfigResponse].
  /// [workspaceId] Azure Log Analytics workspace ID
  LogAnalyticsWorkspaceConfigResponse({
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workspaceId': ?workspaceId,
    };
  }

  factory LogAnalyticsWorkspaceConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspaceConfigResponse(
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

