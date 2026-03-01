// ignore_for_file: unused_element, unnecessary_cast

import 'sql_availability_group_static_iplistener_properties.dart';

/// The specifications of the availability group state
class AvailabilityGroupInfo {
  /// Specifies whether this is a basic availability group.
  final bool? basicFeatures;
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
  final SqlAvailabilityGroupStaticIPListenerProperties? listener;
  /// The number of secondary replicas that must be in a synchronized state for a commit to complete.
  final int? requiredSynchronizedSecondariesToCommit;

  /// Creates a new [AvailabilityGroupInfo].
  /// [basicFeatures] Specifies whether this is a basic availability group.
  /// [dbFailover] Specifies whether the availability group supports failover for database health conditions.
  /// [dtcSupport] Specifies whether DTC support has been enabled for this availability group.
  /// [failureConditionLevel] User-defined failure condition level under which an automatic failover must be triggered.
  /// [healthCheckTimeout] Wait time (in milliseconds) for the sp_server_diagnostics system stored procedure to return server-health information, before the server instance is assumed to be slow or not responding.
  /// [isContained] SQL Server availability group contained system databases.
  /// [isDistributed] Specifies whether this is a distributed availability group.
  /// [listener] The listener for the sql server availability group
  /// [requiredSynchronizedSecondariesToCommit] The number of secondary replicas that must be in a synchronized state for a commit to complete.
  AvailabilityGroupInfo({
    this.basicFeatures,
    this.dbFailover,
    this.dtcSupport,
    this.failureConditionLevel,
    this.healthCheckTimeout,
    this.isContained,
    this.isDistributed,
    this.listener,
    this.requiredSynchronizedSecondariesToCommit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicFeatures': ?basicFeatures,
      'dbFailover': ?dbFailover,
      'dtcSupport': ?dtcSupport,
      'failureConditionLevel': ?failureConditionLevel,
      'healthCheckTimeout': ?healthCheckTimeout,
      'isContained': ?isContained,
      'isDistributed': ?isDistributed,
      'listener': ?listener == null ? null : listener!.toMap(),
      'requiredSynchronizedSecondariesToCommit': ?requiredSynchronizedSecondariesToCommit,
    };
  }

  factory AvailabilityGroupInfo.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupInfo(
      basicFeatures: map['basicFeatures'] == null ? null : map['basicFeatures'] as bool,
      dbFailover: map['dbFailover'] == null ? null : map['dbFailover'] as bool,
      dtcSupport: map['dtcSupport'] == null ? null : map['dtcSupport'] as bool,
      failureConditionLevel: map['failureConditionLevel'] == null ? null : map['failureConditionLevel'] as int,
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : map['healthCheckTimeout'] as int,
      isContained: map['isContained'] == null ? null : map['isContained'] as bool,
      isDistributed: map['isDistributed'] == null ? null : map['isDistributed'] as bool,
      listener: map['listener'] == null ? null : SqlAvailabilityGroupStaticIPListenerProperties.fromMap((map['listener'] as Map).cast<String, dynamic>()),
      requiredSynchronizedSecondariesToCommit: map['requiredSynchronizedSecondariesToCommit'] == null ? null : map['requiredSynchronizedSecondariesToCommit'] as int,
    );
  }
}

