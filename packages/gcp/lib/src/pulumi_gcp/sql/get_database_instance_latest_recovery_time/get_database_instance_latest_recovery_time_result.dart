// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDatabaseInstanceLatestRecoveryTime.
class GetDatabaseInstanceLatestRecoveryTimeResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The name of the instance.
  final String instance;

  /// Timestamp, identifies the latest recovery time of the source instance.
  final String latestRecoveryTime;

  /// The ID of the project in which the resource belongs.
  final String project;
  final String? sourceInstanceDeletionTime;

  GetDatabaseInstanceLatestRecoveryTimeResult({
    required this.id,
    required this.instance,
    required this.latestRecoveryTime,
    required this.project,
    this.sourceInstanceDeletionTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['instance'] = instance;
    map['latestRecoveryTime'] = latestRecoveryTime;
    map['project'] = project;
    final sourceInstanceDeletionTimeValue = sourceInstanceDeletionTime;
    if (sourceInstanceDeletionTimeValue != null) {
      map['sourceInstanceDeletionTime'] = sourceInstanceDeletionTimeValue;
    }
    return map;
  }

  factory GetDatabaseInstanceLatestRecoveryTimeResult.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceLatestRecoveryTimeResult(
      id: map['id'] as String,
      instance: map['instance'] as String,
      latestRecoveryTime: map['latestRecoveryTime'] as String,
      project: map['project'] as String,
      sourceInstanceDeletionTime: map['sourceInstanceDeletionTime'] == null
          ? null
          : map['sourceInstanceDeletionTime'] as String,
    );
  }
}
