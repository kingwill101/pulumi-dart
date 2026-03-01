// ignore_for_file: unused_element, unnecessary_cast

class ClusterMigrationSource {
  /// The host and port of the on-premises instance in host:port format
  final String? hostPort;

  /// Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  final String? referenceId;

  /// Type of migration source.
  final String? sourceType;

  /// Creates a new [ClusterMigrationSource].
  /// [hostPort] The host and port of the on-premises instance in host:port format
  /// [referenceId] Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  /// [sourceType] Type of migration source.
  ClusterMigrationSource({this.hostPort, this.referenceId, this.sourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPort': ?hostPort,
      'referenceId': ?referenceId,
      'sourceType': ?sourceType,
    };
  }

  factory ClusterMigrationSource.fromMap(Map<String, dynamic> map) {
    return ClusterMigrationSource(
      hostPort: map['hostPort'] == null ? null : map['hostPort'] as String,
      referenceId: map['referenceId'] == null
          ? null
          : map['referenceId'] as String,
      sourceType: map['sourceType'] == null
          ? null
          : map['sourceType'] as String,
    );
  }
}
