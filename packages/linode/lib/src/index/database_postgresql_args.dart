// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_postgresql_updates.dart';

/// {@template pulumi_index_database_postgresql_database_postgresql_args_doc}
/// The set of arguments for DatabasePostgresql.
/// {@endtemplate}
/// {@macro pulumi_index_database_postgresql_database_postgresql_args_doc}
class DatabasePostgresqlArgs {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  final pulumi.Input<List<String>>? allowLists;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  final pulumi.Input<int>? clusterSize;
  /// Whether the Managed Databases is encrypted. (default `false`)
  final pulumi.Input<bool>? encrypted;
  /// The Managed Database engine in engine/version format. (e.g. `postgresql/13.2`)
  final pulumi.Input<String> engineId;
  /// A unique, user-defined string referring to the Managed Database.
  final pulumi.Input<String> label;
  /// The region to use for the Managed Database.
  final pulumi.Input<String> region;
  /// The synchronization level of the replicating server. (`on`, `local`, `remote_write`, `remote_apply`, `off`; default `off`)
  ///
  /// * Must be `local` or `off` for the `asynch` replication type.
  ///
  /// * Must be `on`, `remote_write`, or `remote_apply` for the `semi_synch` replication type.
  final pulumi.Input<String>? replicationCommitType;
  /// The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`; default `none`)
  ///
  /// * Must be `none` for a single node cluster.
  ///
  /// * Must be `asynch` or `semi_synch` for a high availability cluster.
  final pulumi.Input<String>? replicationType;
  /// Whether to require SSL credentials to establish a connection to the Managed Database. (default `false`)
  ///
  /// * `updates` - (Optional) Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<bool>? sslConnection;
  /// The Linode Instance type used for the nodes of the  Managed Database instance.
  ///
  /// - - -
  final pulumi.Input<String> type;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<DatabasePostgresqlUpdates>? updates;

  /// Creates a new [DatabasePostgresqlArgs].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  /// [encrypted] Whether the Managed Databases is encrypted. (default `false`)
  /// [engineId] The Managed Database engine in engine/version format. (e.g. `postgresql/13.2`)
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [region] The region to use for the Managed Database.
  /// [replicationCommitType] The synchronization level of the replicating server. (`on`, `local`, `remote_write`, `remote_apply`, `off`; default `off`)
  /// [replicationType] The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`; default `none`)
  /// [sslConnection] Whether to require SSL credentials to establish a connection to the Managed Database. (default `false`)
  /// [type] The Linode Instance type used for the nodes of the  Managed Database instance.
  /// [updates] Configuration settings for automated patch update maintenance for the Managed Database.
  DatabasePostgresqlArgs({
    List<String>? allowLists,
    int? clusterSize,
    bool? encrypted,
    required String engineId,
    required String label,
    required String region,
    String? replicationCommitType,
    String? replicationType,
    bool? sslConnection,
    required String type,
    DatabasePostgresqlUpdates? updates,
  }) :
      allowLists = pulumi.Input.asOptionalInput<List<String>>(allowLists),
      clusterSize = pulumi.Input.asOptionalInput<int>(clusterSize),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      engineId = pulumi.Input.asInput<String>(engineId),
      label = pulumi.Input.asInput<String>(label),
      region = pulumi.Input.asInput<String>(region),
      replicationCommitType = pulumi.Input.asOptionalInput<String>(replicationCommitType),
      replicationType = pulumi.Input.asOptionalInput<String>(replicationType),
      sslConnection = pulumi.Input.asOptionalInput<bool>(sslConnection),
      type = pulumi.Input.asInput<String>(type),
      updates = pulumi.Input.asOptionalInput<DatabasePostgresqlUpdates>(updates);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': ?allowLists,
      'clusterSize': ?clusterSize,
      'encrypted': ?encrypted,
      'engineId': engineId,
      'label': label,
      'region': region,
      'replicationCommitType': ?replicationCommitType,
      'replicationType': ?replicationType,
      'sslConnection': ?sslConnection,
      'type': type,
      'updates': ?pulumi.Input.mapOptionalInputValue<DatabasePostgresqlUpdates, Map<String, dynamic>>(updates, (value) => value.toMap()),
    };
  }

  factory DatabasePostgresqlArgs.fromMap(Map<String, dynamic> map) {
    return DatabasePostgresqlArgs(
      allowLists: map['allowLists'] == null ? null : (map['allowLists'] as List).cast<String>(),
      clusterSize: map['clusterSize'] == null ? null : map['clusterSize'] as int,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      engineId: map['engineId'] as String,
      label: map['label'] as String,
      region: map['region'] as String,
      replicationCommitType: map['replicationCommitType'] == null ? null : map['replicationCommitType'] as String,
      replicationType: map['replicationType'] == null ? null : map['replicationType'] as String,
      sslConnection: map['sslConnection'] == null ? null : map['sslConnection'] as bool,
      type: map['type'] as String,
      updates: map['updates'] == null ? null : DatabasePostgresqlUpdates.fromMap((map['updates'] as Map).cast<String, dynamic>()),
    );
  }
}

