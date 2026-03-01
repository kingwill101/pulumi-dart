// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceReplicationCluster {
  /// Read-only field that indicates whether the replica is a DR replica.
  final bool drReplica;

  /// If the instance is a primary instance, then this field identifies the disaster recovery (DR) replica. The standard format of this field is "your-project:your-instance". You can also set this field to "your-instance", but cloud SQL backend will convert it to the aforementioned standard format.
  final String failoverDrReplicaName;

  /// If set, this field indicates this instance has a private service access (PSA) DNS endpoint that is pointing to the primary instance of the cluster. If this instance is the primary, then the DNS endpoint points to this instance. After a switchover or replica failover operation, this DNS endpoint points to the promoted instance. This is a read-only field, returned to the user as information. This field can exist even if a standalone instance doesn't have a DR replica yet or the DR replica is deleted.
  final String psaWriteEndpoint;

  /// Creates a new [GetDatabaseInstanceReplicationCluster].
  /// [drReplica] Read-only field that indicates whether the replica is a DR replica.
  /// [failoverDrReplicaName] If the instance is a primary instance, then this field identifies the disaster recovery (DR) replica. The standard format of this field is "your-project:your-instance". You can also set this field to "your-instance", but cloud SQL backend will convert it to the aforementioned standard format.
  /// [psaWriteEndpoint] If set, this field indicates this instance has a private service access (PSA) DNS endpoint that is pointing to the primary instance of the cluster. If this instance is the primary, then the DNS endpoint points to this instance. After a switchover or replica failover operation, this DNS endpoint points to the promoted instance. This is a read-only field, returned to the user as information. This field can exist even if a standalone instance doesn't have a DR replica yet or the DR replica is deleted.
  GetDatabaseInstanceReplicationCluster({
    required this.drReplica,
    required this.failoverDrReplicaName,
    required this.psaWriteEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drReplica': drReplica,
      'failoverDrReplicaName': failoverDrReplicaName,
      'psaWriteEndpoint': psaWriteEndpoint,
    };
  }

  factory GetDatabaseInstanceReplicationCluster.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceReplicationCluster(
      drReplica: map['drReplica'] as bool,
      failoverDrReplicaName: map['failoverDrReplicaName'] as String,
      psaWriteEndpoint: map['psaWriteEndpoint'] as String,
    );
  }
}
