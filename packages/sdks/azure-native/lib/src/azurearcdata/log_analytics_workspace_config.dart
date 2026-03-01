// ignore_for_file: unused_element, unnecessary_cast


/// Log analytics workspace id and primary key
class LogAnalyticsWorkspaceConfig {
  /// Primary key of the workspace
  final String? primaryKey;
  /// Azure Log Analytics workspace ID
  final String? workspaceId;

  /// Creates a new [LogAnalyticsWorkspaceConfig].
  /// [primaryKey] Primary key of the workspace
  /// [workspaceId] Azure Log Analytics workspace ID
  LogAnalyticsWorkspaceConfig({
    this.primaryKey,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'workspaceId': ?workspaceId,
    };
  }

  factory LogAnalyticsWorkspaceConfig.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsWorkspaceConfig(
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

