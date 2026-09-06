// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a field reference within a MongoDB shard key
class MongoDbShardKeyField {
  /// The name of the field
  final pulumi.Input<String> name;
  /// The field ordering
  final pulumi.Input<dynamic> order;

  /// Creates a new [MongoDbShardKeyField].
  /// [name] The name of the field
  /// [order] The field ordering
  const MongoDbShardKeyField({
    required this.name,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'order': order,
    };
  }

  factory MongoDbShardKeyField.fromMap(Map<String, dynamic> map) {
    return MongoDbShardKeyField(
      name: pulumi.Input.fromValue(map['name'] as String),
      order: pulumi.Input.fromValue(map['order']),
    );
  }
}
