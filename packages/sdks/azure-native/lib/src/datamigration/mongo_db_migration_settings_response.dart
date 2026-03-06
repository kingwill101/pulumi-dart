// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_connection_info_response.dart';
import 'mongo_db_database_settings_response.dart';
import 'mongo_db_throttling_settings_response.dart';

/// Describes how a MongoDB data migration should be performed
class MongoDbMigrationSettingsResponse {
  /// The RU limit on a CosmosDB target that collections will be temporarily increased to (if lower) during the initial copy of a migration, from 10,000 to 1,000,000, or 0 to use the default boost (which is generally the maximum), or null to not boost the RUs. This setting has no effect on non-CosmosDB targets.
  final pulumi.Input<int>? boostRUs;
  /// The databases on the source cluster to migrate to the target. The keys are the names of the databases.
  final pulumi.Input<Map<String, MongoDbDatabaseSettingsResponse>> databases;
  /// Describes how changes will be replicated from the source to the target. The default is OneTime.
  final pulumi.Input<String>? replication;
  /// Settings used to connect to the source cluster
  final pulumi.Input<MongoDbConnectionInfoResponse> source;
  /// Settings used to connect to the target cluster
  final pulumi.Input<MongoDbConnectionInfoResponse> target;
  /// Settings used to limit the resource usage of the migration
  final pulumi.Input<MongoDbThrottlingSettingsResponse>? throttling;

  /// Creates a new [MongoDbMigrationSettingsResponse].
  /// [boostRUs] The RU limit on a CosmosDB target that collections will be temporarily increased to (if lower) during the initial copy of a migration, from 10,000 to 1,000,000, or 0 to use the default boost (which is generally the maximum), or null to not boost the RUs. This setting has no effect on non-CosmosDB targets.
  /// [databases] The databases on the source cluster to migrate to the target. The keys are the names of the databases.
  /// [replication] Describes how changes will be replicated from the source to the target. The default is OneTime.
  /// [source] Settings used to connect to the source cluster
  /// [target] Settings used to connect to the target cluster
  /// [throttling] Settings used to limit the resource usage of the migration
  const MongoDbMigrationSettingsResponse({
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
      'databases': pulumi.Input.mapInputValue<Map<String, MongoDbDatabaseSettingsResponse>, Map<String, Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeMapValues<MongoDbDatabaseSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replication': ?replication,
      'source': pulumi.Input.mapInputValue<MongoDbConnectionInfoResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<MongoDbConnectionInfoResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
      'throttling': ?pulumi.Input.mapOptionalInputValue<MongoDbThrottlingSettingsResponse, Map<String, dynamic>>(throttling, (value) => value.toMap()),
    };
  }

  factory MongoDbMigrationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbMigrationSettingsResponse(
      boostRUs: (() { final guardedValue = map['boostRUs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      databases: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<MongoDbDatabaseSettingsResponse>(map['databases']!, (value) => MongoDbDatabaseSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      replication: (() { final guardedValue = map['replication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(MongoDbConnectionInfoResponse.fromMap((map['source']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(MongoDbConnectionInfoResponse.fromMap((map['target']! as Map).cast<String, dynamic>())),
      throttling: (() { final guardedValue = map['throttling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoDbThrottlingSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

