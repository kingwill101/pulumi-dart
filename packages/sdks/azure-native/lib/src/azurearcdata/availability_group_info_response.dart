// ignore_for_file: unused_element, unnecessary_cast

import 'sql_availability_group_static_iplistener_properties_response.dart';

/// The specifications of the availability group state
class AvailabilityGroupInfoResponse {
  /// Preferred location for performing backups on the availability databases in this availability group.
  final String automatedBackupPreferenceDescription;
  /// Specifies whether this is a basic availability group.
  final bool? basicFeatures;
  /// SQL Server availability group cluster type description
  final String clusterTypeDescription;
  /// Specifies whether the availability group supports failover for database health conditions.
  final bool? dbFailover;
  /// Specifies whether DTC support has been enabled for this availability group.
  final bool? dtcSupport;
  /// User-defined failure condition level under which an automatic failover must be triggered.
  final int? failureConditionLevel;
  /// Wait time (in milliseconds) for the sp_server_diagnostics system stored procedure to return server-health information, before the server instance is assumed to be slow or not responding.
  final int? healthCheckTimeout;
  /// SQL Server availability group contained system databases.
  final bool? isContained;
  /// Specifies whether this is a distributed availability group.
  final bool? isDistributed;
  /// The listener for the sql server availability group
  final SqlAvailabilityGroupStaticIPListenerPropertiesResponse? listener;
  /// Indicates the recovery health of the primary replica.
  final String primaryRecoveryHealthDescription;
  /// Name of the server instance that is hosting the current primary replica.
  final String primaryReplica;
  final String replicationPartnerType;
  /// The number of secondary replicas that must be in a synchronized state for a commit to complete.
  final int? requiredSynchronizedSecondariesToCommit;
  /// Indicates the recovery health of a secondary replica.
  final String secondaryRecoveryHealthDescription;
  /// Reflects a roll-up of the synchronization health of all availability replicas in the availability group.
  final String synchronizationHealthDescription;
  /// SQL Server availability group current version.
  final int version;

  /// Creates a new [AvailabilityGroupInfoResponse].
  /// [automatedBackupPreferenceDescription] Preferred location for performing backups on the availability databases in this availability group.
  /// [basicFeatures] Specifies whether this is a basic availability group.
  /// [clusterTypeDescription] SQL Server availability group cluster type description
  /// [dbFailover] Specifies whether the availability group supports failover for database health conditions.
  /// [dtcSupport] Specifies whether DTC support has been enabled for this availability group.
  /// [failureConditionLevel] User-defined failure condition level under which an automatic failover must be triggered.
  /// [healthCheckTimeout] Wait time (in milliseconds) for the sp_server_diagnostics system stored procedure to return server-health information, before the server instance is assumed to be slow or not responding.
  /// [isContained] SQL Server availability group contained system databases.
  /// [isDistributed] Specifies whether this is a distributed availability group.
  /// [listener] The listener for the sql server availability group
  /// [primaryRecoveryHealthDescription] Indicates the recovery health of the primary replica.
  /// [primaryReplica] Name of the server instance that is hosting the current primary replica.
  /// [replicationPartnerType] Required.
  /// [requiredSynchronizedSecondariesToCommit] The number of secondary replicas that must be in a synchronized state for a commit to complete.
  /// [secondaryRecoveryHealthDescription] Indicates the recovery health of a secondary replica.
  /// [synchronizationHealthDescription] Reflects a roll-up of the synchronization health of all availability replicas in the availability group.
  /// [version] SQL Server availability group current version.
  AvailabilityGroupInfoResponse({
    required this.automatedBackupPreferenceDescription,
    this.basicFeatures,
    required this.clusterTypeDescription,
    this.dbFailover,
    this.dtcSupport,
    this.failureConditionLevel,
    this.healthCheckTimeout,
    this.isContained,
    this.isDistributed,
    this.listener,
    required this.primaryRecoveryHealthDescription,
    required this.primaryReplica,
    required this.replicationPartnerType,
    this.requiredSynchronizedSecondariesToCommit,
    required this.secondaryRecoveryHealthDescription,
    required this.synchronizationHealthDescription,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedBackupPreferenceDescription': automatedBackupPreferenceDescription,
      'basicFeatures': ?basicFeatures,
      'clusterTypeDescription': clusterTypeDescription,
      'dbFailover': ?dbFailover,
      'dtcSupport': ?dtcSupport,
      'failureConditionLevel': ?failureConditionLevel,
      'healthCheckTimeout': ?healthCheckTimeout,
      'isContained': ?isContained,
      'isDistributed': ?isDistributed,
      'listener': ?listener == null ? null : listener!.toMap(),
      'primaryRecoveryHealthDescription': primaryRecoveryHealthDescription,
      'primaryReplica': primaryReplica,
      'replicationPartnerType': replicationPartnerType,
      'requiredSynchronizedSecondariesToCommit': ?requiredSynchronizedSecondariesToCommit,
      'secondaryRecoveryHealthDescription': secondaryRecoveryHealthDescription,
      'synchronizationHealthDescription': synchronizationHealthDescription,
      'version': version,
    };
  }

  factory AvailabilityGroupInfoResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupInfoResponse(
      automatedBackupPreferenceDescription: map['automatedBackupPreferenceDescription'] as String,
      basicFeatures: map['basicFeatures'] == null ? null : map['basicFeatures'] as bool,
      clusterTypeDescription: map['clusterTypeDescription'] as String,
      dbFailover: map['dbFailover'] == null ? null : map['dbFailover'] as bool,
      dtcSupport: map['dtcSupport'] == null ? null : map['dtcSupport'] as bool,
      failureConditionLevel: map['failureConditionLevel'] == null ? null : map['failureConditionLevel'] as int,
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : map['healthCheckTimeout'] as int,
      isContained: map['isContained'] == null ? null : map['isContained'] as bool,
      isDistributed: map['isDistributed'] == null ? null : map['isDistributed'] as bool,
      listener: map['listener'] == null ? null : SqlAvailabilityGroupStaticIPListenerPropertiesResponse.fromMap((map['listener'] as Map).cast<String, dynamic>()),
      primaryRecoveryHealthDescription: map['primaryRecoveryHealthDescription'] as String,
      primaryReplica: map['primaryReplica'] as String,
      replicationPartnerType: map['replicationPartnerType'] as String,
      requiredSynchronizedSecondariesToCommit: map['requiredSynchronizedSecondariesToCommit'] == null ? null : map['requiredSynchronizedSecondariesToCommit'] as int,
      secondaryRecoveryHealthDescription: map['secondaryRecoveryHealthDescription'] as String,
      synchronizationHealthDescription: map['synchronizationHealthDescription'] as String,
      version: map['version'] as int,
    );
  }
}

