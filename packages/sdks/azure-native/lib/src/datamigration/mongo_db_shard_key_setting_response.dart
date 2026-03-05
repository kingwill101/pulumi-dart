// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_shard_key_field_response.dart';

/// Describes a MongoDB shard key
class MongoDbShardKeySettingResponse {
  /// The fields within the shard key
  final pulumi.Input<List<MongoDbShardKeyFieldResponse>> fields;
  /// Whether the shard key is unique
  final pulumi.Input<bool>? isUnique;

  /// Creates a new [MongoDbShardKeySettingResponse].
  /// [fields] The fields within the shard key
  /// [isUnique] Whether the shard key is unique
  MongoDbShardKeySettingResponse({
    required this.fields,
    this.isUnique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<MongoDbShardKeyFieldResponse>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<MongoDbShardKeyFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isUnique': ?isUnique,
    };
  }

  factory MongoDbShardKeySettingResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbShardKeySettingResponse(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<MongoDbShardKeyFieldResponse>(map['fields']!, (value) => MongoDbShardKeyFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
      isUnique: (() { final guardedValue = map['isUnique']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

