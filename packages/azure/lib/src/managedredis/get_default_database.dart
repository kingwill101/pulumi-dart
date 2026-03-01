// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_database_module.dart';

class GetDefaultDatabase {
  /// Whether access key authentication is enabled for the database.
  final bool accessKeysAuthenticationEnabled;
  /// The client protocol used by the database (either `Encrypted` or `Plaintext`).
  final String clientProtocol;
  /// The clustering policy used by the database.
  final String clusteringPolicy;
  /// The Redis eviction policy used by the database.
  final String evictionPolicy;
  /// The name of the geo-replication group.
  final String geoReplicationGroupName;
  /// A list of linked database IDs for geo-replication.
  final List<String> geoReplicationLinkedDatabaseIds;
  /// The ID of the Managed Redis Database Instance.
  final String id;
  /// A list of `module` blocks as defined below.
  final List<GetDefaultDatabaseModule> modules;
  /// The frequency of Append Only File (AOF) backups.
  final String persistenceAppendOnlyFileBackupFrequency;
  /// The frequency of Redis Database (RDB) backups.
  final String persistenceRedisDatabaseBackupFrequency;
  /// The TCP port of the database endpoint.
  final int port;
  /// The Primary Access Key for the Managed Redis Database instance.
  final String primaryAccessKey;
  /// The Secondary Access Key for the Managed Redis Database instance.
  final String secondaryAccessKey;

  /// Creates a new [GetDefaultDatabase].
  /// [accessKeysAuthenticationEnabled] Whether access key authentication is enabled for the database.
  /// [clientProtocol] The client protocol used by the database (either `Encrypted` or `Plaintext`).
  /// [clusteringPolicy] The clustering policy used by the database.
  /// [evictionPolicy] The Redis eviction policy used by the database.
  /// [geoReplicationGroupName] The name of the geo-replication group.
  /// [geoReplicationLinkedDatabaseIds] A list of linked database IDs for geo-replication.
  /// [id] The ID of the Managed Redis Database Instance.
  /// [modules] A list of `module` blocks as defined below.
  /// [persistenceAppendOnlyFileBackupFrequency] The frequency of Append Only File (AOF) backups.
  /// [persistenceRedisDatabaseBackupFrequency] The frequency of Redis Database (RDB) backups.
  /// [port] The TCP port of the database endpoint.
  /// [primaryAccessKey] The Primary Access Key for the Managed Redis Database instance.
  /// [secondaryAccessKey] The Secondary Access Key for the Managed Redis Database instance.
  GetDefaultDatabase({
    required this.accessKeysAuthenticationEnabled,
    required this.clientProtocol,
    required this.clusteringPolicy,
    required this.evictionPolicy,
    required this.geoReplicationGroupName,
    required this.geoReplicationLinkedDatabaseIds,
    required this.id,
    required this.modules,
    required this.persistenceAppendOnlyFileBackupFrequency,
    required this.persistenceRedisDatabaseBackupFrequency,
    required this.port,
    required this.primaryAccessKey,
    required this.secondaryAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeysAuthenticationEnabled': accessKeysAuthenticationEnabled,
      'clientProtocol': clientProtocol,
      'clusteringPolicy': clusteringPolicy,
      'evictionPolicy': evictionPolicy,
      'geoReplicationGroupName': geoReplicationGroupName,
      'geoReplicationLinkedDatabaseIds': geoReplicationLinkedDatabaseIds,
      'id': id,
      'modules': pulumi.Input.encodeList<GetDefaultDatabaseModule, Map<String, dynamic>>(modules, (value) => value.toMap()),
      'persistenceAppendOnlyFileBackupFrequency': persistenceAppendOnlyFileBackupFrequency,
      'persistenceRedisDatabaseBackupFrequency': persistenceRedisDatabaseBackupFrequency,
      'port': port,
      'primaryAccessKey': primaryAccessKey,
      'secondaryAccessKey': secondaryAccessKey,
    };
  }

  factory GetDefaultDatabase.fromMap(Map<String, dynamic> map) {
    return GetDefaultDatabase(
      accessKeysAuthenticationEnabled: map['accessKeysAuthenticationEnabled'] as bool,
      clientProtocol: map['clientProtocol'] as String,
      clusteringPolicy: map['clusteringPolicy'] as String,
      evictionPolicy: map['evictionPolicy'] as String,
      geoReplicationGroupName: map['geoReplicationGroupName'] as String,
      geoReplicationLinkedDatabaseIds: (map['geoReplicationLinkedDatabaseIds'] as List).cast<String>(),
      id: map['id'] as String,
      modules: pulumi.Input.decodeList<GetDefaultDatabaseModule>(map['modules'], (value) => GetDefaultDatabaseModule.fromMap((value as Map).cast<String, dynamic>())),
      persistenceAppendOnlyFileBackupFrequency: map['persistenceAppendOnlyFileBackupFrequency'] as String,
      persistenceRedisDatabaseBackupFrequency: map['persistenceRedisDatabaseBackupFrequency'] as String,
      port: map['port'] as int,
      primaryAccessKey: map['primaryAccessKey'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
    );
  }
}

