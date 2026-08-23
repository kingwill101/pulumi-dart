// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Arc Sql availability group database replica resource
class SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse {
  /// the database name.
  final pulumi.Input<String>? databaseName;
  /// Description of the database state of the availability replica.
  final pulumi.Input<String> databaseStateDescription;
  /// Whether this replica is transaction committer.
  final pulumi.Input<bool> isCommitParticipant;
  /// Whether the availability database is local.
  final pulumi.Input<bool> isLocal;
  /// Returns 1 if the replica is primary, or 0 if it is a secondary replica.
  final pulumi.Input<bool> isPrimaryReplica;
  /// Whether this data movement is suspended.
  final pulumi.Input<bool> isSuspended;
  /// the database replica name.
  final pulumi.Input<String> replicaName;
  /// Description of the database suspended state reason.
  final pulumi.Input<String> suspendReasonDescription;
  /// Description of the health of database.
  final pulumi.Input<String> synchronizationHealthDescription;
  /// Description of the data-movement state.
  final pulumi.Input<String> synchronizationStateDescription;

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
  const SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse({
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
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseStateDescription: pulumi.Input.fromValue(map['databaseStateDescription'] as String),
      isCommitParticipant: pulumi.Input.fromValue(map['isCommitParticipant'] as bool),
      isLocal: pulumi.Input.fromValue(map['isLocal'] as bool),
      isPrimaryReplica: pulumi.Input.fromValue(map['isPrimaryReplica'] as bool),
      isSuspended: pulumi.Input.fromValue(map['isSuspended'] as bool),
      replicaName: pulumi.Input.fromValue(map['replicaName'] as String),
      suspendReasonDescription: pulumi.Input.fromValue(map['suspendReasonDescription'] as String),
      synchronizationHealthDescription: pulumi.Input.fromValue(map['synchronizationHealthDescription'] as String),
      synchronizationStateDescription: pulumi.Input.fromValue(map['synchronizationStateDescription'] as String),
    );
  }
}
