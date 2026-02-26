// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier {
  /// The MongoDB collection name.
  final String collection;

  /// The MongoDB database name.
  final String database;

  StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier({
    required this.collection,
    required this.database,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    map['database'] = database;
    return map;
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier(
      collection: map['collection'] as String,
      database: map['database'] as String,
    );
  }
}
