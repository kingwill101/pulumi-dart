// ignore_for_file: unused_element, unnecessary_cast


class InteractiveQueryClusterMonitor {
  /// The Operations Management Suite (OMS) workspace ID.
  final String logAnalyticsWorkspaceId;
  /// The Operations Management Suite (OMS) workspace key.
  final String primaryKey;

  /// Creates a new [InteractiveQueryClusterMonitor].
  /// [logAnalyticsWorkspaceId] The Operations Management Suite (OMS) workspace ID.
  /// [primaryKey] The Operations Management Suite (OMS) workspace key.
  InteractiveQueryClusterMonitor({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory InteractiveQueryClusterMonitor.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterMonitor(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      primaryKey: map['primaryKey'] as String,
    );
  }
}

