// ignore_for_file: unused_element, unnecessary_cast


/// Describes a field reference within a MongoDB shard key
class MongoDbShardKeyFieldResponse {
  /// The name of the field
  final String name;
  /// The field ordering
  final String order;

  /// Creates a new [MongoDbShardKeyFieldResponse].
  /// [name] The name of the field
  /// [order] The field ordering
  MongoDbShardKeyFieldResponse({
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
      name: map['name'] as String,
      order: map['order'] as String,
    );
  }
}

