// ignore_for_file: unused_element, unnecessary_cast


class MongoCollectionIndex {
  /// Specifies the list of user settable keys for each Cosmos DB Mongo Collection.
  final List<String> keys;
  /// Is the index unique or not? Defaults to `false`.
  ///
  /// > **Note:** An index with an "_id" key must be specified.
  final bool? unique;

  /// Creates a new [MongoCollectionIndex].
  /// [keys] Specifies the list of user settable keys for each Cosmos DB Mongo Collection.
  /// [unique] Is the index unique or not? Defaults to `false`.
  MongoCollectionIndex({
    required this.keys,
    this.unique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': keys,
      'unique': ?unique,
    };
  }

  factory MongoCollectionIndex.fromMap(Map<String, dynamic> map) {
    return MongoCollectionIndex(
      keys: (map['keys'] as List).cast<String>(),
      unique: map['unique'] == null ? null : map['unique'] as bool,
    );
  }
}

