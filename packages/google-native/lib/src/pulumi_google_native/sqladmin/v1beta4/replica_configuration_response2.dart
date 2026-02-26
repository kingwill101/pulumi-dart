// ignore_for_file: unused_element, unnecessary_cast

import 'my_sql_replica_configuration_response2.dart';

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfigurationResponse2 {
  /// Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  final bool cascadableReplica;

  /// Specifies if the replica is the failover target. If the field is set to `true` the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
  final bool failoverTarget;

  /// This is always `sql#replicaConfiguration`.
  final String kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  final MySqlReplicaConfigurationResponse2 mysqlReplicaConfiguration;

  ReplicaConfigurationResponse2({
    required this.cascadableReplica,
    required this.failoverTarget,
    required this.kind,
    required this.mysqlReplicaConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cascadableReplica'] = cascadableReplica;
    map['failoverTarget'] = failoverTarget;
    map['kind'] = kind;
    map['mysqlReplicaConfiguration'] = mysqlReplicaConfiguration.toMap();
    return map;
  }

  factory ReplicaConfigurationResponse2.fromMap(Map<String, dynamic> map) {
    return ReplicaConfigurationResponse2(
      cascadableReplica: map['cascadableReplica'] as bool,
      failoverTarget: map['failoverTarget'] as bool,
      kind: map['kind'] as String,
      mysqlReplicaConfiguration: MySqlReplicaConfigurationResponse2.fromMap(
          (map['mysqlReplicaConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
