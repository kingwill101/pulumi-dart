// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a field reference within a MongoDB shard key
class MongoDbShardKeyFieldResponse {
  /// The name of the field
  final pulumi.Input<String> name;
  /// The field ordering
  final pulumi.Input<String> order;

  /// Creates a new [MongoDbShardKeyFieldResponse].
  /// [name] The name of the field
  /// [order] The field ordering
  const MongoDbShardKeyFieldResponse({
    required this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'order': order,
    };
  }

  factory MongoDbShardKeyFieldResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbShardKeyFieldResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      order: pulumi.Input.fromValue(map['order'] as String),
    );
  }
}

