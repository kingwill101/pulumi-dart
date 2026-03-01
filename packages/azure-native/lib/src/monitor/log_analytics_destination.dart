// ignore_for_file: unused_element, unnecessary_cast


/// Log Analytics destination.
class LogAnalyticsDestination {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;
  /// The resource ID of the Log Analytics workspace.
  final String? workspaceResourceId;

  /// Creates a new [LogAnalyticsDestination].
  /// [name] A friendly name for the destination.
  /// [workspaceResourceId] The resource ID of the Log Analytics workspace.
  LogAnalyticsDestination({
    this.name,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory LogAnalyticsDestination.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsDestination(
      name: map['name'] == null ? null : map['name'] as String,
      workspaceResourceId: map['workspaceResourceId'] == null ? null : map['workspaceResourceId'] as String,
    );
  }
}

