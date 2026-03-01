// ignore_for_file: unused_element, unnecessary_cast


/// Specific Databases to restore.
class DatabaseRestoreResourceResponse {
  /// The names of the collections available for restore.
  final List<String>? collectionNames;
  /// The name of the database available for restore.
  final String? databaseName;

  /// Creates a new [DatabaseRestoreResourceResponse].
  /// [collectionNames] The names of the collections available for restore.
  /// [databaseName] The name of the database available for restore.
  DatabaseRestoreResourceResponse({
    this.collectionNames,
    this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionNames': ?collectionNames,
      'databaseName': ?databaseName,
    };
  }

  factory DatabaseRestoreResourceResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseRestoreResourceResponse(
      collectionNames: map['collectionNames'] == null ? null : (map['collectionNames'] as List).cast<String>(),
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
    );
  }
}

