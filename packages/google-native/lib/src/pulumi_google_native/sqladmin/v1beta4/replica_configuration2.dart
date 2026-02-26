// ignore_for_file: unused_element, unnecessary_cast

import 'my_sql_replica_configuration2.dart';

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfiguration2 {
  /// Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  final bool? cascadableReplica;

  /// Specifies if the replica is the failover target. If the field is set to `true` the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
  final bool? failoverTarget;

  /// This is always `sql#replicaConfiguration`.
  final String? kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  final MySqlReplicaConfiguration2? mysqlReplicaConfiguration;

  ReplicaConfiguration2({
    this.cascadableReplica,
    this.failoverTarget,
    this.kind,
    this.mysqlReplicaConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cascadableReplicaValue = cascadableReplica;
    if (cascadableReplicaValue != null) {
      map['cascadableReplica'] = cascadableReplicaValue;
    }
    final failoverTargetValue = failoverTarget;
    if (failoverTargetValue != null) {
      map['failoverTarget'] = failoverTargetValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final mysqlReplicaConfigurationValue = mysqlReplicaConfiguration;
    if (mysqlReplicaConfigurationValue != null) {
      map['mysqlReplicaConfiguration'] = mysqlReplicaConfigurationValue.toMap();
    }
    return map;
  }

  factory ReplicaConfiguration2.fromMap(Map<String, dynamic> map) {
    return ReplicaConfiguration2(
      cascadableReplica: map['cascadableReplica'] == null
          ? null
          : map['cascadableReplica'] as bool,
      failoverTarget:
          map['failoverTarget'] == null ? null : map['failoverTarget'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      mysqlReplicaConfiguration: map['mysqlReplicaConfiguration'] == null
          ? null
          : MySqlReplicaConfiguration2.fromMap(
              (map['mysqlReplicaConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
