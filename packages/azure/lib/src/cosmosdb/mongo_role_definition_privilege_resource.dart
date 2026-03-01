// ignore_for_file: unused_element, unnecessary_cast


class MongoRoleDefinitionPrivilegeResource {
  /// The name of the Mongo DB Collection that the Role Definition is applied.
  final String? collectionName;
  /// The name of the Mongo DB that the Role Definition is applied.
  final String? dbName;

  /// Creates a new [MongoRoleDefinitionPrivilegeResource].
  /// [collectionName] The name of the Mongo DB Collection that the Role Definition is applied.
  /// [dbName] The name of the Mongo DB that the Role Definition is applied.
  MongoRoleDefinitionPrivilegeResource({
    this.collectionName,
    this.dbName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionName': ?collectionName,
      'dbName': ?dbName,
    };
  }

  factory MongoRoleDefinitionPrivilegeResource.fromMap(Map<String, dynamic> map) {
    return MongoRoleDefinitionPrivilegeResource(
      collectionName: map['collectionName'] == null ? null : map['collectionName'] as String,
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
    );
  }
}

