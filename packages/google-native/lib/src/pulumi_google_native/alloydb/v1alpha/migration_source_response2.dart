// ignore_for_file: unused_element, unnecessary_cast

/// Subset of the source instance configuration that is available when reading the cluster resource.
class MigrationSourceResponse2 {
  /// The host and port of the on-premises instance in host:port format
  final String hostPort;

  /// Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  final String referenceId;

  /// Type of migration source.
  final String sourceType;

  MigrationSourceResponse2({
    required this.hostPort,
    required this.referenceId,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostPort'] = hostPort;
    map['referenceId'] = referenceId;
    map['sourceType'] = sourceType;
    return map;
  }

  factory MigrationSourceResponse2.fromMap(Map<String, dynamic> map) {
    return MigrationSourceResponse2(
      hostPort: map['hostPort'] as String,
      referenceId: map['referenceId'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}
