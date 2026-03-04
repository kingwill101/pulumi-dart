// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_static_iplistener_properties_response.dart';

/// The specifications of the availability group state
class AvailabilityGroupInfoResponse {
  /// Preferred location for performing backups on the availability databases in this availability group.
  final pulumi.Input<String> automatedBackupPreferenceDescription;

  /// Specifies whether this is a basic availability group.
  final pulumi.Input<bool>? basicFeatures;

  /// SQL Server availability group cluster type description
  final pulumi.Input<String> clusterTypeDescription;

  /// Specifies whether the availability group supports failover for database health conditions.
  final pulumi.Input<bool>? dbFailover;

  /// Specifies whether DTC support has been enabled for this availability group.
  final pulumi.Input<bool>? dtcSupport;

  /// User-defined failure condition level under which an automatic failover must be triggered.
  final pulumi.Input<int>? failureConditionLevel;

  /// Wait time (in milliseconds) for the sp_server_diagnostics system stored procedure to return server-health information, before the server instance is assumed to be slow or not responding.
  final pulumi.Input<int>? healthCheckTimeout;

  /// SQL Server availability group contained system databases.
  final pulumi.Input<bool>? isContained;

  /// Specifies whether this is a distributed availability group.
  final pulumi.Input<bool>? isDistributed;

  /// The listener for the sql server availability group
  final pulumi.Input<SqlAvailabilityGroupStaticIPListenerPropertiesResponse>?
  listener;

  /// Indicates the recovery health of the primary replica.
  final pulumi.Input<String> primaryRecoveryHealthDescription;

  /// Name of the server instance that is hosting the current primary replica.
  final pulumi.Input<String> primaryReplica;
  final pulumi.Input<String> replicationPartnerType;

  /// The number of secondary replicas that must be in a synchronized state for a commit to complete.
  final pulumi.Input<int>? requiredSynchronizedSecondariesToCommit;

  /// Indicates the recovery health of a secondary replica.
  final pulumi.Input<String> secondaryRecoveryHealthDescription;

  /// Reflects a roll-up of the synchronization health of all availability replicas in the availability group.
  final pulumi.Input<String> synchronizationHealthDescription;

  /// SQL Server availability group current version.
  final pulumi.Input<int> version;

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
      'automatedBackupPreferenceDescription':
          automatedBackupPreferenceDescription,
      'basicFeatures': ?basicFeatures,
      'clusterTypeDescription': clusterTypeDescription,
      'dbFailover': ?dbFailover,
      'dtcSupport': ?dtcSupport,
      'failureConditionLevel': ?failureConditionLevel,
      'healthCheckTimeout': ?healthCheckTimeout,
      'isContained': ?isContained,
      'isDistributed': ?isDistributed,
      'listener':
          ?pulumi.Input.mapOptionalInputValue<
            SqlAvailabilityGroupStaticIPListenerPropertiesResponse,
            Map<String, dynamic>
          >(listener, (value) => value.toMap()),
      'primaryRecoveryHealthDescription': primaryRecoveryHealthDescription,
      'primaryReplica': primaryReplica,
      'replicationPartnerType': replicationPartnerType,
      'requiredSynchronizedSecondariesToCommit':
          ?requiredSynchronizedSecondariesToCommit,
      'secondaryRecoveryHealthDescription': secondaryRecoveryHealthDescription,
      'synchronizationHealthDescription': synchronizationHealthDescription,
      'version': version,
    };
  }

  factory AvailabilityGroupInfoResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupInfoResponse(
      automatedBackupPreferenceDescription: pulumi.Input.fromValue(
        map['automatedBackupPreferenceDescription'] as String,
      ),
      basicFeatures: (() {
        final guardedValue = map['basicFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clusterTypeDescription: pulumi.Input.fromValue(
        map['clusterTypeDescription'] as String,
      ),
      dbFailover: (() {
        final guardedValue = map['dbFailover'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dtcSupport: (() {
        final guardedValue = map['dtcSupport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      failureConditionLevel: (() {
        final guardedValue = map['failureConditionLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthCheckTimeout: (() {
        final guardedValue = map['healthCheckTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      isContained: (() {
        final guardedValue = map['isContained'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isDistributed: (() {
        final guardedValue = map['isDistributed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      listener: (() {
        final guardedValue = map['listener'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SqlAvailabilityGroupStaticIPListenerPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      primaryRecoveryHealthDescription: pulumi.Input.fromValue(
        map['primaryRecoveryHealthDescription'] as String,
      ),
      primaryReplica: pulumi.Input.fromValue(map['primaryReplica'] as String),
      replicationPartnerType: pulumi.Input.fromValue(
        map['replicationPartnerType'] as String,
      ),
      requiredSynchronizedSecondariesToCommit: (() {
        final guardedValue = map['requiredSynchronizedSecondariesToCommit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      secondaryRecoveryHealthDescription: pulumi.Input.fromValue(
        map['secondaryRecoveryHealthDescription'] as String,
      ),
      synchronizationHealthDescription: pulumi.Input.fromValue(
        map['synchronizationHealthDescription'] as String,
      ),
      version: pulumi.Input.fromValue(map['version'] as int),
    );
  }
}
