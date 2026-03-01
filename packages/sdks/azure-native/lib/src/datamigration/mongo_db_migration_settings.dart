// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_connection_info.dart';
import 'mongo_db_database_settings.dart';
import 'mongo_db_throttling_settings.dart';

/// Describes how a MongoDB data migration should be performed
class MongoDbMigrationSettings {
  /// The RU limit on a CosmosDB target that collections will be temporarily increased to (if lower) during the initial copy of a migration, from 10,000 to 1,000,000, or 0 to use the default boost (which is generally the maximum), or null to not boost the RUs. This setting has no effect on non-CosmosDB targets.
  final int? boostRUs;
  /// The databases on the source cluster to migrate to the target. The keys are the names of the databases.
  final Map<String, MongoDbDatabaseSettings> databases;
  /// Describes how changes will be replicated from the source to the target. The default is OneTime.
  final String? replication;
  /// Settings used to connect to the source cluster
  final MongoDbConnectionInfo source;
  /// Settings used to connect to the target cluster
  final MongoDbConnectionInfo target;
  /// Settings used to limit the resource usage of the migration
  final MongoDbThrottlingSettings? throttling;

  /// Creates a new [MongoDbMigrationSettings].
  /// [boostRUs] The RU limit on a CosmosDB target that collections will be temporarily increased to (if lower) during the initial copy of a migration, from 10,000 to 1,000,000, or 0 to use the default boost (which is generally the maximum), or null to not boost the RUs. This setting has no effect on non-CosmosDB targets.
  /// [databases] The databases on the source cluster to migrate to the target. The keys are the names of the databases.
  /// [replication] Describes how changes will be replicated from the source to the target. The default is OneTime.
  /// [source] Settings used to connect to the source cluster
  /// [target] Settings used to connect to the target cluster
  /// [throttling] Settings used to limit the resource usage of the migration
  MongoDbMigrationSettings({
    this.boostRUs,
    required this.databases,
    this.replication,
    required this.source,
    required this.target,
    this.throttling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostRUs': ?boostRUs,
      'databases': pulumi.Input.encodeMapValues<MongoDbDatabaseSettings, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'replication': ?replication,
      'source': source.toMap(),
      'target': target.toMap(),
      'throttling': ?throttling == null ? null : throttling!.toMap(),
    };
  }

  factory MongoDbMigrationSettings.fromMap(Map<String, dynamic> map) {
    return MongoDbMigrationSettings(
      boostRUs: map['boostRUs'] == null ? null : map['boostRUs'] as int,
      databases: pulumi.Input.decodeMapValues<MongoDbDatabaseSettings>(map['databases'], (value) => MongoDbDatabaseSettings.fromMap((value as Map).cast<String, dynamic>())),
      replication: map['replication'] == null ? null : map['replication'] as String,
      source: MongoDbConnectionInfo.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: MongoDbConnectionInfo.fromMap((map['target'] as Map).cast<String, dynamic>()),
      throttling: map['throttling'] == null ? null : MongoDbThrottlingSettings.fromMap((map['throttling'] as Map).cast<String, dynamic>()),
    );
  }
}

