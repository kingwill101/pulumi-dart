// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_connection_info_response.dart';
import 'mongo_db_database_settings_response.dart';
import 'mongo_db_throttling_settings_response.dart';

/// Describes how a MongoDB data migration should be performed
class MongoDbMigrationSettingsResponse {
  /// The RU limit on a CosmosDB target that collections will be temporarily increased to (if lower) during the initial copy of a migration, from 10,000 to 1,000,000, or 0 to use the default boost (which is generally the maximum), or null to not boost the RUs. This setting has no effect on non-CosmosDB targets.
  final int? boostRUs;
  /// The databases on the source cluster to migrate to the target. The keys are the names of the databases.
  final Map<String, MongoDbDatabaseSettingsResponse> databases;
  /// Describes how changes will be replicated from the source to the target. The default is OneTime.
  final String? replication;
  /// Settings used to connect to the source cluster
  final MongoDbConnectionInfoResponse source;
  /// Settings used to connect to the target cluster
  final MongoDbConnectionInfoResponse target;
  /// Settings used to limit the resource usage of the migration
  final MongoDbThrottlingSettingsResponse? throttling;

  /// Creates a new [MongoDbMigrationSettingsResponse].
  /// [boostRUs] The RU limit on a CosmosDB target that collections will be temporarily increased to (if lower) during the initial copy of a migration, from 10,000 to 1,000,000, or 0 to use the default boost (which is generally the maximum), or null to not boost the RUs. This setting has no effect on non-CosmosDB targets.
  /// [databases] The databases on the source cluster to migrate to the target. The keys are the names of the databases.
  /// [replication] Describes how changes will be replicated from the source to the target. The default is OneTime.
  /// [source] Settings used to connect to the source cluster
  /// [target] Settings used to connect to the target cluster
  /// [throttling] Settings used to limit the resource usage of the migration
  MongoDbMigrationSettingsResponse({
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
      'databases': pulumi.Input.encodeMapValues<MongoDbDatabaseSettingsResponse, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'replication': ?replication,
      'source': source.toMap(),
      'target': target.toMap(),
      'throttling': ?throttling == null ? null : throttling!.toMap(),
    };
  }

  factory MongoDbMigrationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbMigrationSettingsResponse(
      boostRUs: map['boostRUs'] == null ? null : map['boostRUs'] as int,
      databases: pulumi.Input.decodeMapValues<MongoDbDatabaseSettingsResponse>(map['databases'], (value) => MongoDbDatabaseSettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      replication: map['replication'] == null ? null : map['replication'] as String,
      source: MongoDbConnectionInfoResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: MongoDbConnectionInfoResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
      throttling: map['throttling'] == null ? null : MongoDbThrottlingSettingsResponse.fromMap((map['throttling'] as Map).cast<String, dynamic>()),
    );
  }
}

