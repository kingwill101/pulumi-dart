// ignore_for_file: unused_element, unnecessary_cast


class KafkaClusterMonitor {
  /// The Operations Management Suite (OMS) workspace ID.
  final String logAnalyticsWorkspaceId;
  /// The Operations Management Suite (OMS) workspace key.
  final String primaryKey;

  /// Creates a new [KafkaClusterMonitor].
  /// [logAnalyticsWorkspaceId] The Operations Management Suite (OMS) workspace ID.
  /// [primaryKey] The Operations Management Suite (OMS) workspace key.
  KafkaClusterMonitor({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory KafkaClusterMonitor.fromMap(Map<String, dynamic> map) {
    return KafkaClusterMonitor(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      primaryKey: map['primaryKey'] as String,
    );
  }
}

