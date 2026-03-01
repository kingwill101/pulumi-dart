// ignore_for_file: unused_element, unnecessary_cast


/// Container group log analytics information.
class LogAnalyticsResponse {
  /// The log type to be used.
  final String? logType;
  /// Metadata for log analytics.
  final Map<String, String>? metadata;
  /// The workspace id for log analytics
  final String workspaceId;
  /// The workspace key for log analytics
  final String workspaceKey;
  /// The workspace resource id for log analytics
  final String? workspaceResourceId;

  /// Creates a new [LogAnalyticsResponse].
  /// [logType] The log type to be used.
  /// [metadata] Metadata for log analytics.
  /// [workspaceId] The workspace id for log analytics
  /// [workspaceKey] The workspace key for log analytics
  /// [workspaceResourceId] The workspace resource id for log analytics
  LogAnalyticsResponse({
    this.logType,
    this.metadata,
    required this.workspaceId,
    required this.workspaceKey,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logType': ?logType,
      'metadata': ?metadata,
      'workspaceId': workspaceId,
      'workspaceKey': workspaceKey,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory LogAnalyticsResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsResponse(
      logType: map['logType'] == null ? null : map['logType'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
      workspaceKey: map['workspaceKey'] as String,
      workspaceResourceId: map['workspaceResourceId'] == null ? null : map['workspaceResourceId'] as String,
    );
  }
}

