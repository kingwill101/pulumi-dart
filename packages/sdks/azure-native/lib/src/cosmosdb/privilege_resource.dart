// ignore_for_file: unused_element, unnecessary_cast


/// An Azure Cosmos DB Mongo DB Resource.
class PrivilegeResource {
  /// The collection name the role is applied.
  final String? collection;
  /// The database name the role is applied.
  final String? db;

  /// Creates a new [PrivilegeResource].
  /// [collection] The collection name the role is applied.
  /// [db] The database name the role is applied.
  PrivilegeResource({
    this.collection,
    this.db,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'db': ?db,
    };
  }

  factory PrivilegeResource.fromMap(Map<String, dynamic> map) {
    return PrivilegeResource(
      collection: map['collection'] == null ? null : map['collection'] as String,
      db: map['db'] == null ? null : map['db'] as String,
    );
  }
}

