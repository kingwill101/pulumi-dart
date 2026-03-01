// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_db_shard_key_setting_response.dart';

/// Describes how an individual MongoDB collection should be migrated
class MongoDbCollectionSettingsResponse {
  /// Whether the migrator is allowed to drop the target collection in the course of performing a migration. The default is true.
  final bool? canDelete;
  /// Describes a MongoDB shard key
  final MongoDbShardKeySettingResponse? shardKey;
  /// The RUs that should be configured on a CosmosDB target, or null to use the default. This has no effect on non-CosmosDB targets.
  final int? targetRUs;

  /// Creates a new [MongoDbCollectionSettingsResponse].
  /// [canDelete] Whether the migrator is allowed to drop the target collection in the course of performing a migration. The default is true.
  /// [shardKey] Describes a MongoDB shard key
  /// [targetRUs] The RUs that should be configured on a CosmosDB target, or null to use the default. This has no effect on non-CosmosDB targets.
  MongoDbCollectionSettingsResponse({
    this.canDelete,
    this.shardKey,
    this.targetRUs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canDelete': ?canDelete,
      'shardKey': ?shardKey == null ? null : shardKey!.toMap(),
      'targetRUs': ?targetRUs,
    };
  }

  factory MongoDbCollectionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbCollectionSettingsResponse(
      canDelete: map['canDelete'] == null ? null : map['canDelete'] as bool,
      shardKey: map['shardKey'] == null ? null : MongoDbShardKeySettingResponse.fromMap((map['shardKey'] as Map).cast<String, dynamic>()),
      targetRUs: map['targetRUs'] == null ? null : map['targetRUs'] as int,
    );
  }
}

