// ignore_for_file: unused_element, unnecessary_cast


class HadoopClusterExtension {
  /// The workspace ID of the log analytics extension.
  final String logAnalyticsWorkspaceId;
  /// The workspace key of the log analytics extension.
  final String primaryKey;

  /// Creates a new [HadoopClusterExtension].
  /// [logAnalyticsWorkspaceId] The workspace ID of the log analytics extension.
  /// [primaryKey] The workspace key of the log analytics extension.
  HadoopClusterExtension({
    required this.logAnalyticsWorkspaceId,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'primaryKey': primaryKey,
    };
  }

  factory HadoopClusterExtension.fromMap(Map<String, dynamic> map) {
    return HadoopClusterExtension(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      primaryKey: map['primaryKey'] as String,
    );
  }
}

