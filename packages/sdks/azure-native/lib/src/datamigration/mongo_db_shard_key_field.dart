// ignore_for_file: unused_element, unnecessary_cast


/// Describes a field reference within a MongoDB shard key
class MongoDbShardKeyField {
  /// The name of the field
  final String name;
  /// The field ordering
  final String order;

  /// Creates a new [MongoDbShardKeyField].
  /// [name] The name of the field
  /// [order] The field ordering
  MongoDbShardKeyField({
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
      name: map['name'] as String,
      order: map['order'] as String,
    );
  }
}

