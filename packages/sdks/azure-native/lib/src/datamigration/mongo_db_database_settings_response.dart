// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_collection_settings_response.dart';

/// Describes how an individual MongoDB database should be migrated
class MongoDbDatabaseSettingsResponse {
  /// The collections on the source database to migrate to the target. The keys are the unqualified names of the collections.
  final pulumi.Input<Map<String, MongoDbCollectionSettingsResponse>> collections;
  /// The RUs that should be configured on a CosmosDB target, or null to use the default, or 0 if throughput should not be provisioned for the database. This has no effect on non-CosmosDB targets.
  final pulumi.Input<int>? targetRUs;

  /// Creates a new [MongoDbDatabaseSettingsResponse].
  /// [collections] The collections on the source database to migrate to the target. The keys are the unqualified names of the collections.
  /// [targetRUs] The RUs that should be configured on a CosmosDB target, or null to use the default, or 0 if throughput should not be provisioned for the database. This has no effect on non-CosmosDB targets.
  const MongoDbDatabaseSettingsResponse({
    required this.collections,
    this.targetRUs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collections': pulumi.Input.mapInputValue<Map<String, MongoDbCollectionSettingsResponse>, Map<String, Map<String, dynamic>>>(collections, (value) => pulumi.Input.encodeMapValues<MongoDbCollectionSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRUs': ?targetRUs,
    };
  }

  factory MongoDbDatabaseSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbDatabaseSettingsResponse(
      collections: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<MongoDbCollectionSettingsResponse>(map['collections']!, (value) => MongoDbCollectionSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      targetRUs: (() { final guardedValue = map['targetRUs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
