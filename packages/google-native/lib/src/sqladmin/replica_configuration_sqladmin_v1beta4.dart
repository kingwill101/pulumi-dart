// ignore_for_file: unused_element, unnecessary_cast

import 'my_sql_replica_configuration_sqladmin_v1beta4.dart';

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfigurationSqladminV1beta4 {
  /// Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  final bool? cascadableReplica;

  /// Specifies if the replica is the failover target. If the field is set to `true` the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
  final bool? failoverTarget;

  /// This is always `sql#replicaConfiguration`.
  final String? kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  final MySqlReplicaConfigurationSqladminV1beta4? mysqlReplicaConfiguration;

  /// Creates a new [ReplicaConfigurationSqladminV1beta4].
  /// [cascadableReplica] Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  /// [failoverTarget] Specifies if the replica is the failover target. If the field is set to `true` the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
  /// [kind] This is always `sql#replicaConfiguration`.
  /// [mysqlReplicaConfiguration] MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  ReplicaConfigurationSqladminV1beta4({
    this.cascadableReplica,
    this.failoverTarget,
    this.kind,
    this.mysqlReplicaConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cascadableReplica': ?cascadableReplica,
      'failoverTarget': ?failoverTarget,
      'kind': ?kind,
      'mysqlReplicaConfiguration': ?mysqlReplicaConfiguration == null
          ? null
          : mysqlReplicaConfiguration!.toMap(),
    };
  }

  factory ReplicaConfigurationSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicaConfigurationSqladminV1beta4(
      cascadableReplica: map['cascadableReplica'] == null
          ? null
          : map['cascadableReplica'] as bool,
      failoverTarget: map['failoverTarget'] == null
          ? null
          : map['failoverTarget'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      mysqlReplicaConfiguration: map['mysqlReplicaConfiguration'] == null
          ? null
          : MySqlReplicaConfigurationSqladminV1beta4.fromMap(
              (map['mysqlReplicaConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
