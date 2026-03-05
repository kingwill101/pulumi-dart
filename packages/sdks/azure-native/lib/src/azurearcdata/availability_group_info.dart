// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_static_iplistener_properties.dart';

/// The specifications of the availability group state
class AvailabilityGroupInfo {
  /// Specifies whether this is a basic availability group.
  final pulumi.Input<bool>? basicFeatures;
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
  final pulumi.Input<SqlAvailabilityGroupStaticIPListenerProperties>? listener;
  /// The number of secondary replicas that must be in a synchronized state for a commit to complete.
  final pulumi.Input<int>? requiredSynchronizedSecondariesToCommit;

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
      'listener': ?pulumi.Input.mapOptionalInputValue<SqlAvailabilityGroupStaticIPListenerProperties, Map<String, dynamic>>(listener, (value) => value.toMap()),
      'requiredSynchronizedSecondariesToCommit': ?requiredSynchronizedSecondariesToCommit,
    };
  }

  factory AvailabilityGroupInfo.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupInfo(
      basicFeatures: (() { final guardedValue = map['basicFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dbFailover: (() { final guardedValue = map['dbFailover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dtcSupport: (() { final guardedValue = map['dtcSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureConditionLevel: (() { final guardedValue = map['failureConditionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheckTimeout: (() { final guardedValue = map['healthCheckTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isContained: (() { final guardedValue = map['isContained']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDistributed: (() { final guardedValue = map['isDistributed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      listener: (() { final guardedValue = map['listener']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlAvailabilityGroupStaticIPListenerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requiredSynchronizedSecondariesToCommit: (() { final guardedValue = map['requiredSynchronizedSecondariesToCommit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

