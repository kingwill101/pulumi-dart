// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_shard_key_setting_response.dart';

/// Describes how an individual MongoDB collection should be migrated
class MongoDbCollectionSettingsResponse {
  /// Whether the migrator is allowed to drop the target collection in the course of performing a migration. The default is true.
  final pulumi.Input<bool>? canDelete;
  /// Describes a MongoDB shard key
  final pulumi.Input<MongoDbShardKeySettingResponse>? shardKey;
  /// The RUs that should be configured on a CosmosDB target, or null to use the default. This has no effect on non-CosmosDB targets.
  final pulumi.Input<int>? targetRUs;

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
      'shardKey': ?pulumi.Input.mapOptionalInputValue<MongoDbShardKeySettingResponse, Map<String, dynamic>>(shardKey, (value) => value.toMap()),
      'targetRUs': ?targetRUs,
    };
  }

  factory MongoDbCollectionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbCollectionSettingsResponse(
      canDelete: (() { final guardedValue = map['canDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shardKey: (() { final guardedValue = map['shardKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoDbShardKeySettingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetRUs: (() { final guardedValue = map['targetRUs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

