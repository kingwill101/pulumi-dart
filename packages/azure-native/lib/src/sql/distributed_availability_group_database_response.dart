// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_info_response.dart';

/// Database specific information
class DistributedAvailabilityGroupDatabaseResponse {
  /// Link connected state
  final String connectedState;
  /// The name of the database in link
  final String? databaseName;
  /// Redo lag when Managed Instance link side is primary
  final int instanceRedoReplicationLagSeconds;
  /// Managed instance replica id
  final String instanceReplicaId;
  /// Replication lag when Managed Instance link side is primary
  final int instanceSendReplicationLagSeconds;
  /// Last backup LSN
  final String lastBackupLsn;
  /// Last backup LSN time
  final String lastBackupTime;
  /// Last commit LSN
  final String lastCommitLsn;
  /// Last commit LSN time
  final String lastCommitTime;
  /// Last hardened LSN
  final String lastHardenedLsn;
  /// Last hardened LSN time
  final String lastHardenedTime;
  /// Last received LSN
  final String lastReceivedLsn;
  /// Last received LSN time
  final String lastReceivedTime;
  /// Last sent LSN
  final String lastSentLsn;
  /// Last sent LSN time
  final String lastSentTime;
  /// The most recent link connection error description
  final String mostRecentLinkError;
  /// SQL server certificate validity
  final CertificateInfoResponse partnerAuthCertValidity;
  /// SQL server replica id
  final String partnerReplicaId;
  /// Current link state
  final String replicaState;
  /// Seeding progress
  final String seedingProgress;
  /// Link health state
  final String synchronizationHealth;

  /// Creates a new [DistributedAvailabilityGroupDatabaseResponse].
  /// [connectedState] Link connected state
  /// [databaseName] The name of the database in link
  /// [instanceRedoReplicationLagSeconds] Redo lag when Managed Instance link side is primary
  /// [instanceReplicaId] Managed instance replica id
  /// [instanceSendReplicationLagSeconds] Replication lag when Managed Instance link side is primary
  /// [lastBackupLsn] Last backup LSN
  /// [lastBackupTime] Last backup LSN time
  /// [lastCommitLsn] Last commit LSN
  /// [lastCommitTime] Last commit LSN time
  /// [lastHardenedLsn] Last hardened LSN
  /// [lastHardenedTime] Last hardened LSN time
  /// [lastReceivedLsn] Last received LSN
  /// [lastReceivedTime] Last received LSN time
  /// [lastSentLsn] Last sent LSN
  /// [lastSentTime] Last sent LSN time
  /// [mostRecentLinkError] The most recent link connection error description
  /// [partnerAuthCertValidity] SQL server certificate validity
  /// [partnerReplicaId] SQL server replica id
  /// [replicaState] Current link state
  /// [seedingProgress] Seeding progress
  /// [synchronizationHealth] Link health state
  DistributedAvailabilityGroupDatabaseResponse({
    required this.connectedState,
    this.databaseName,
    required this.instanceRedoReplicationLagSeconds,
    required this.instanceReplicaId,
    required this.instanceSendReplicationLagSeconds,
    required this.lastBackupLsn,
    required this.lastBackupTime,
    required this.lastCommitLsn,
    required this.lastCommitTime,
    required this.lastHardenedLsn,
    required this.lastHardenedTime,
    required this.lastReceivedLsn,
    required this.lastReceivedTime,
    required this.lastSentLsn,
    required this.lastSentTime,
    required this.mostRecentLinkError,
    required this.partnerAuthCertValidity,
    required this.partnerReplicaId,
    required this.replicaState,
    required this.seedingProgress,
    required this.synchronizationHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedState': connectedState,
      'databaseName': ?databaseName,
      'instanceRedoReplicationLagSeconds': instanceRedoReplicationLagSeconds,
      'instanceReplicaId': instanceReplicaId,
      'instanceSendReplicationLagSeconds': instanceSendReplicationLagSeconds,
      'lastBackupLsn': lastBackupLsn,
      'lastBackupTime': lastBackupTime,
      'lastCommitLsn': lastCommitLsn,
      'lastCommitTime': lastCommitTime,
      'lastHardenedLsn': lastHardenedLsn,
      'lastHardenedTime': lastHardenedTime,
      'lastReceivedLsn': lastReceivedLsn,
      'lastReceivedTime': lastReceivedTime,
      'lastSentLsn': lastSentLsn,
      'lastSentTime': lastSentTime,
      'mostRecentLinkError': mostRecentLinkError,
      'partnerAuthCertValidity': partnerAuthCertValidity.toMap(),
      'partnerReplicaId': partnerReplicaId,
      'replicaState': replicaState,
      'seedingProgress': seedingProgress,
      'synchronizationHealth': synchronizationHealth,
    };
  }

  factory DistributedAvailabilityGroupDatabaseResponse.fromMap(Map<String, dynamic> map) {
    return DistributedAvailabilityGroupDatabaseResponse(
      connectedState: map['connectedState'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      instanceRedoReplicationLagSeconds: map['instanceRedoReplicationLagSeconds'] as int,
      instanceReplicaId: map['instanceReplicaId'] as String,
      instanceSendReplicationLagSeconds: map['instanceSendReplicationLagSeconds'] as int,
      lastBackupLsn: map['lastBackupLsn'] as String,
      lastBackupTime: map['lastBackupTime'] as String,
      lastCommitLsn: map['lastCommitLsn'] as String,
      lastCommitTime: map['lastCommitTime'] as String,
      lastHardenedLsn: map['lastHardenedLsn'] as String,
      lastHardenedTime: map['lastHardenedTime'] as String,
      lastReceivedLsn: map['lastReceivedLsn'] as String,
      lastReceivedTime: map['lastReceivedTime'] as String,
      lastSentLsn: map['lastSentLsn'] as String,
      lastSentTime: map['lastSentTime'] as String,
      mostRecentLinkError: map['mostRecentLinkError'] as String,
      partnerAuthCertValidity: CertificateInfoResponse.fromMap((map['partnerAuthCertValidity'] as Map).cast<String, dynamic>()),
      partnerReplicaId: map['partnerReplicaId'] as String,
      replicaState: map['replicaState'] as String,
      seedingProgress: map['seedingProgress'] as String,
      synchronizationHealth: map['synchronizationHealth'] as String,
    );
  }
}

