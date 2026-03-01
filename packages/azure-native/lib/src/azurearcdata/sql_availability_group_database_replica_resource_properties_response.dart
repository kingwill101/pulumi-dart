// ignore_for_file: unused_element, unnecessary_cast


/// The properties of Arc Sql availability group database replica resource
class SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse {
  /// the database name.
  final String? databaseName;
  /// Description of the database state of the availability replica.
  final String databaseStateDescription;
  /// Whether this replica is transaction committer.
  final bool isCommitParticipant;
  /// Whether the availability database is local.
  final bool isLocal;
  /// Returns 1 if the replica is primary, or 0 if it is a secondary replica.
  final bool isPrimaryReplica;
  /// Whether this data movement is suspended.
  final bool isSuspended;
  /// the database replica name.
  final String replicaName;
  /// Description of the database suspended state reason.
  final String suspendReasonDescription;
  /// Description of the health of database.
  final String synchronizationHealthDescription;
  /// Description of the data-movement state.
  final String synchronizationStateDescription;

  /// Creates a new [SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse].
  /// [databaseName] the database name.
  /// [databaseStateDescription] Description of the database state of the availability replica.
  /// [isCommitParticipant] Whether this replica is transaction committer.
  /// [isLocal] Whether the availability database is local.
  /// [isPrimaryReplica] Returns 1 if the replica is primary, or 0 if it is a secondary replica.
  /// [isSuspended] Whether this data movement is suspended.
  /// [replicaName] the database replica name.
  /// [suspendReasonDescription] Description of the database suspended state reason.
  /// [synchronizationHealthDescription] Description of the health of database.
  /// [synchronizationStateDescription] Description of the data-movement state.
  SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse({
    this.databaseName,
    required this.databaseStateDescription,
    required this.isCommitParticipant,
    required this.isLocal,
    required this.isPrimaryReplica,
    required this.isSuspended,
    required this.replicaName,
    required this.suspendReasonDescription,
    required this.synchronizationHealthDescription,
    required this.synchronizationStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'databaseStateDescription': databaseStateDescription,
      'isCommitParticipant': isCommitParticipant,
      'isLocal': isLocal,
      'isPrimaryReplica': isPrimaryReplica,
      'isSuspended': isSuspended,
      'replicaName': replicaName,
      'suspendReasonDescription': suspendReasonDescription,
      'synchronizationHealthDescription': synchronizationHealthDescription,
      'synchronizationStateDescription': synchronizationStateDescription,
    };
  }

  factory SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse(
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      databaseStateDescription: map['databaseStateDescription'] as String,
      isCommitParticipant: map['isCommitParticipant'] as bool,
      isLocal: map['isLocal'] as bool,
      isPrimaryReplica: map['isPrimaryReplica'] as bool,
      isSuspended: map['isSuspended'] as bool,
      replicaName: map['replicaName'] as String,
      suspendReasonDescription: map['suspendReasonDescription'] as String,
      synchronizationHealthDescription: map['synchronizationHealthDescription'] as String,
      synchronizationStateDescription: map['synchronizationStateDescription'] as String,
    );
  }
}

