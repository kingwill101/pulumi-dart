// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_shard_key_field_response.dart';

/// Describes a MongoDB shard key
class MongoDbShardKeyInfoResponse {
  /// The fields within the shard key
  final List<MongoDbShardKeyFieldResponse> fields;
  /// Whether the shard key is unique
  final bool isUnique;

  /// Creates a new [MongoDbShardKeyInfoResponse].
  /// [fields] The fields within the shard key
  /// [isUnique] Whether the shard key is unique
  MongoDbShardKeyInfoResponse({
    required this.fields,
    required this.isUnique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.encodeList<MongoDbShardKeyFieldResponse, Map<String, dynamic>>(fields, (value) => value.toMap()),
      'isUnique': isUnique,
    };
  }

  factory MongoDbShardKeyInfoResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbShardKeyInfoResponse(
      fields: pulumi.Input.decodeList<MongoDbShardKeyFieldResponse>(map['fields'], (value) => MongoDbShardKeyFieldResponse.fromMap((value as Map).cast<String, dynamic>())),
      isUnique: map['isUnique'] as bool,
    );
  }
}

