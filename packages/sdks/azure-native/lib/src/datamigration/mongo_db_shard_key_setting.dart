// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_shard_key_field.dart';

/// Describes a MongoDB shard key
class MongoDbShardKeySetting {
  /// The fields within the shard key
  final pulumi.Input<List<MongoDbShardKeyField>> fields;
  /// Whether the shard key is unique
  final pulumi.Input<bool>? isUnique;

  /// Creates a new [MongoDbShardKeySetting].
  /// [fields] The fields within the shard key
  /// [isUnique] Whether the shard key is unique
  MongoDbShardKeySetting({
    required this.fields,
    this.isUnique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<MongoDbShardKeyField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<MongoDbShardKeyField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isUnique': ?isUnique,
    };
  }

  factory MongoDbShardKeySetting.fromMap(Map<String, dynamic> map) {
    return MongoDbShardKeySetting(
      fields: (pulumi.Input.decodeList<MongoDbShardKeyField>(map['fields'], (value) => MongoDbShardKeyField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isUnique: map['isUnique'] == null ? null : (map['isUnique'] as bool).input(),
    );
  }
}

