// ignore_for_file: unused_element, unnecessary_cast


/// Log Analytics destination.
class LogAnalyticsDestinationResponse {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;
  /// The Customer ID of the Log Analytics workspace.
  final String workspaceId;
  /// The resource ID of the Log Analytics workspace.
  final String? workspaceResourceId;

  /// Creates a new [LogAnalyticsDestinationResponse].
  /// [name] A friendly name for the destination.
  /// [workspaceId] The Customer ID of the Log Analytics workspace.
  /// [workspaceResourceId] The resource ID of the Log Analytics workspace.
  LogAnalyticsDestinationResponse({
    this.name,
    required this.workspaceId,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'workspaceId': workspaceId,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory LogAnalyticsDestinationResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsDestinationResponse(
      name: map['name'] == null ? null : map['name'] as String,
      workspaceId: map['workspaceId'] as String,
      workspaceResourceId: map['workspaceResourceId'] == null ? null : map['workspaceResourceId'] as String,
    );
  }
}

