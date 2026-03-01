// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_cluster_backup_restore.dart';
import 'database_cluster_maintenance_window.dart';

/// {@template pulumi_index_database_cluster_database_cluster_args_doc}
/// The set of arguments for DatabaseCluster.
/// {@endtemplate}
/// {@macro pulumi_index_database_cluster_database_cluster_args_doc}
class DatabaseClusterArgs {
  final pulumi.Input<DatabaseClusterBackupRestore>? backupRestore;
  /// Database engine used by the cluster (ex. `pg` for PostgreSQL, `mysql` for MySQL, `valkey` for Valkey, `mongodb` for MongoDB, or `kafka` for Kafka).
  final pulumi.Input<String> engine;
  /// A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeys_lru`, `allkeys_random`, `volatile_lru`, `volatile_random`, or `volatile_ttl`.
  final pulumi.Input<String>? evictionPolicy;
  /// Defines when the automatic maintenance should be performed for the database cluster.
  final pulumi.Input<List<DatabaseClusterMaintenanceWindow>>? maintenanceWindows;
  /// The name of the database cluster.
  final pulumi.Input<String>? name;
  /// Number of nodes that will be included in the cluster. For `kafka` clusters, this must be 3.
  final pulumi.Input<int> nodeCount;
  /// The ID of the VPC where the database cluster will be located.
  final pulumi.Input<String>? privateNetworkUuid;
  /// The ID of the project that the database cluster is assigned to. If excluded when creating a new database cluster, it will be assigned to your default project.
  final pulumi.Input<String>? projectId;
  /// DigitalOcean region where the cluster will reside.
  final pulumi.Input<String> region;
  /// Database Droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`). See the DigitalOcean API for a [list of valid size slugs](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_list_options).
  final pulumi.Input<String> size;
  /// A comma separated string specifying the  SQL modes for a MySQL cluster.
  final pulumi.Input<String>? sqlMode;
  /// Defines the disk size, in MiB, allocated to the cluster. This can be adjusted on MySQL and PostgreSQL clusters based on predefined ranges for each slug/droplet size.
  final pulumi.Input<String>? storageSizeMib;
  /// A list of tag names to be applied to the database cluster.
  final pulumi.Input<List<String>>? tags;
  /// Engine version used by the cluster (ex. `14` for PostgreSQL 14).
  /// When this value is changed, a call to the [Upgrade major Version for a Database](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_update_major_version) API operation is made with the new version.
  final pulumi.Input<String>? version;

  /// Creates a new [DatabaseClusterArgs].
  /// [backupRestore] Optional.
  /// [engine] Database engine used by the cluster (ex. `pg` for PostgreSQL, `mysql` for MySQL, `valkey` for Valkey, `mongodb` for MongoDB, or `kafka` for Kafka).
  /// [evictionPolicy] A string specifying the eviction policy for a Valkey cluster. Valid values are: `noeviction`, `allkeys_lru`, `allkeys_random`, `volatile_lru`, `volatile_random`, or `volatile_ttl`.
  /// [maintenanceWindows] Defines when the automatic maintenance should be performed for the database cluster.
  /// [name] The name of the database cluster.
  /// [nodeCount] Number of nodes that will be included in the cluster. For `kafka` clusters, this must be 3.
  /// [privateNetworkUuid] The ID of the VPC where the database cluster will be located.
  /// [projectId] The ID of the project that the database cluster is assigned to. If excluded when creating a new database cluster, it will be assigned to your default project.
  /// [region] DigitalOcean region where the cluster will reside.
  /// [size] Database Droplet size associated with the cluster (ex. `db-s-1vcpu-1gb`). See the DigitalOcean API for a [list of valid size slugs](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Databases/operation/databases_list_options).
  /// [sqlMode] A comma separated string specifying the  SQL modes for a MySQL cluster.
  /// [storageSizeMib] Defines the disk size, in MiB, allocated to the cluster. This can be adjusted on MySQL and PostgreSQL clusters based on predefined ranges for each slug/droplet size.
  /// [tags] A list of tag names to be applied to the database cluster.
  /// [version] Engine version used by the cluster (ex. `14` for PostgreSQL 14).
  DatabaseClusterArgs({
    DatabaseClusterBackupRestore? backupRestore,
    required String engine,
    String? evictionPolicy,
    List<DatabaseClusterMaintenanceWindow>? maintenanceWindows,
    String? name,
    required int nodeCount,
    String? privateNetworkUuid,
    String? projectId,
    required String region,
    required String size,
    String? sqlMode,
    String? storageSizeMib,
    List<String>? tags,
    String? version,
  }) :
      backupRestore = pulumi.Input.asOptionalInput<DatabaseClusterBackupRestore>(backupRestore),
      engine = pulumi.Input.asInput<String>(engine),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      maintenanceWindows = pulumi.Input.asOptionalInput<List<DatabaseClusterMaintenanceWindow>>(maintenanceWindows),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asInput<int>(nodeCount),
      privateNetworkUuid = pulumi.Input.asOptionalInput<String>(privateNetworkUuid),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asInput<String>(region),
      size = pulumi.Input.asInput<String>(size),
      sqlMode = pulumi.Input.asOptionalInput<String>(sqlMode),
      storageSizeMib = pulumi.Input.asOptionalInput<String>(storageSizeMib),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRestore': ?pulumi.Input.mapOptionalInputValue<DatabaseClusterBackupRestore, Map<String, dynamic>>(backupRestore, (value) => value.toMap()),
      'engine': engine,
      'evictionPolicy': ?evictionPolicy,
      'maintenanceWindows': ?pulumi.Input.mapOptionalInputValue<List<DatabaseClusterMaintenanceWindow>, List<Map<String, dynamic>>>(maintenanceWindows, (value) => pulumi.Input.encodeList<DatabaseClusterMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nodeCount': nodeCount,
      'privateNetworkUuid': ?privateNetworkUuid,
      'projectId': ?projectId,
      'region': region,
      'size': size,
      'sqlMode': ?sqlMode,
      'storageSizeMib': ?storageSizeMib,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory DatabaseClusterArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseClusterArgs(
      backupRestore: map['backupRestore'] == null ? null : DatabaseClusterBackupRestore.fromMap((map['backupRestore'] as Map).cast<String, dynamic>()),
      engine: map['engine'] as String,
      evictionPolicy: map['evictionPolicy'] == null ? null : map['evictionPolicy'] as String,
      maintenanceWindows: map['maintenanceWindows'] == null ? null : pulumi.Input.decodeList<DatabaseClusterMaintenanceWindow>(map['maintenanceWindows'], (value) => DatabaseClusterMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      privateNetworkUuid: map['privateNetworkUuid'] == null ? null : map['privateNetworkUuid'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] as String,
      size: map['size'] as String,
      sqlMode: map['sqlMode'] == null ? null : map['sqlMode'] as String,
      storageSizeMib: map['storageSizeMib'] == null ? null : map['storageSizeMib'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

