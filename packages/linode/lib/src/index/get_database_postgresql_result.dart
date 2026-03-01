// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_postgresql_update.dart';

/// Result data returned by getDatabasePostgresql.
class GetDatabasePostgresqlResult {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  final List<String> allowLists;
  /// The base64-encoded SSL CA certificate for the Managed Database instance.
  final String caCert;
  /// The number of Linode Instance nodes deployed to the Managed Database.
  final int clusterSize;
  /// When this Managed Database was created.
  final String created;
  final int? databaseId;
  /// Whether the Managed Databases is encrypted.
  final bool encrypted;
  /// The Managed Database engine. (e.g. `postgresql`)
  final String engine;
  /// The Managed Database engine in engine/version format. (e.g. `postgresql/13.2`)
  final String engineId;
  /// The primary host for the Managed Database.
  final String hostPrimary;
  /// The secondary/private network host for the Managed Database.
  final String hostSecondary;
  final int? id;
  /// A unique, user-defined string referring to the Managed Database.
  final String label;
  final int port;
  /// The region that hosts this Linode Managed Database.
  final String region;
  /// (Optional) The synchronization level of the replicating server. (`on`, `local`, `remote_write`, `remote_apply`, `off`)
  final String replicationCommitType;
  /// The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`)
  final String replicationType;
  /// The randomly-generated root password for the Managed Database instance.
  final String rootPassword;
  /// The root username for the Managed Database instance.
  final String rootUsername;
  /// Whether to require SSL credentials to establish a connection to the Managed Database.
  final bool sslConnection;
  /// The operating status of the Managed Database.
  final String status;
  /// The Linode Instance type used for the nodes of the  Managed Database instance.
  final String type;
  /// When this Managed Database was last updated.
  final String updated;
  final List<GetDatabasePostgresqlUpdate> updates;
  /// The Managed Database engine version. (e.g. `v8.0.26`)
  final String version;

  /// Creates a new [GetDatabasePostgresqlResult].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format.
  /// [caCert] The base64-encoded SSL CA certificate for the Managed Database instance.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database.
  /// [created] When this Managed Database was created.
  /// [databaseId] Optional.
  /// [encrypted] Whether the Managed Databases is encrypted.
  /// [engine] The Managed Database engine. (e.g. `postgresql`)
  /// [engineId] The Managed Database engine in engine/version format. (e.g. `postgresql/13.2`)
  /// [hostPrimary] The primary host for the Managed Database.
  /// [hostSecondary] The secondary/private network host for the Managed Database.
  /// [id] Optional.
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [port] Required.
  /// [region] The region that hosts this Linode Managed Database.
  /// [replicationCommitType] (Optional) The synchronization level of the replicating server. (`on`, `local`, `remote_write`, `remote_apply`, `off`)
  /// [replicationType] The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`)
  /// [rootPassword] The randomly-generated root password for the Managed Database instance.
  /// [rootUsername] The root username for the Managed Database instance.
  /// [sslConnection] Whether to require SSL credentials to establish a connection to the Managed Database.
  /// [status] The operating status of the Managed Database.
  /// [type] The Linode Instance type used for the nodes of the  Managed Database instance.
  /// [updated] When this Managed Database was last updated.
  /// [updates] Required.
  /// [version] The Managed Database engine version. (e.g. `v8.0.26`)
  GetDatabasePostgresqlResult({
    required this.allowLists,
    required this.caCert,
    required this.clusterSize,
    required this.created,
    this.databaseId,
    required this.encrypted,
    required this.engine,
    required this.engineId,
    required this.hostPrimary,
    required this.hostSecondary,
    this.id,
    required this.label,
    required this.port,
    required this.region,
    required this.replicationCommitType,
    required this.replicationType,
    required this.rootPassword,
    required this.rootUsername,
    required this.sslConnection,
    required this.status,
    required this.type,
    required this.updated,
    required this.updates,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': allowLists,
      'caCert': caCert,
      'clusterSize': clusterSize,
      'created': created,
      'databaseId': ?databaseId,
      'encrypted': encrypted,
      'engine': engine,
      'engineId': engineId,
      'hostPrimary': hostPrimary,
      'hostSecondary': hostSecondary,
      'id': ?id,
      'label': label,
      'port': port,
      'region': region,
      'replicationCommitType': replicationCommitType,
      'replicationType': replicationType,
      'rootPassword': rootPassword,
      'rootUsername': rootUsername,
      'sslConnection': sslConnection,
      'status': status,
      'type': type,
      'updated': updated,
      'updates': pulumi.Input.encodeList<GetDatabasePostgresqlUpdate, Map<String, dynamic>>(updates, (value) => value.toMap()),
      'version': version,
    };
  }

  factory GetDatabasePostgresqlResult.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlResult(
      allowLists: (map['allowLists'] as List).cast<String>(),
      caCert: map['caCert'] as String,
      clusterSize: map['clusterSize'] as int,
      created: map['created'] as String,
      databaseId: map['databaseId'] == null ? null : map['databaseId'] as int,
      encrypted: map['encrypted'] as bool,
      engine: map['engine'] as String,
      engineId: map['engineId'] as String,
      hostPrimary: map['hostPrimary'] as String,
      hostSecondary: map['hostSecondary'] as String,
      id: map['id'] == null ? null : map['id'] as int,
      label: map['label'] as String,
      port: map['port'] as int,
      region: map['region'] as String,
      replicationCommitType: map['replicationCommitType'] as String,
      replicationType: map['replicationType'] as String,
      rootPassword: map['rootPassword'] as String,
      rootUsername: map['rootUsername'] as String,
      sslConnection: map['sslConnection'] as bool,
      status: map['status'] as String,
      type: map['type'] as String,
      updated: map['updated'] as String,
      updates: pulumi.Input.decodeList<GetDatabasePostgresqlUpdate>(map['updates'], (value) => GetDatabasePostgresqlUpdate.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}

