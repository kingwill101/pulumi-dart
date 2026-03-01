// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier {
  /// The MongoDB collection name.
  final String collection;

  /// The MongoDB database name.
  final String database;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier].
  /// [collection] The MongoDB collection name.
  /// [database] The MongoDB database name.
  StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier({
    required this.collection,
    required this.database,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'collection': collection, 'database': database};
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier(
      collection: map['collection'] as String,
      database: map['database'] as String,
    );
  }
}
