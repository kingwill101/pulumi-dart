// ignore_for_file: unused_element, unnecessary_cast


/// Specific Gremlin Databases to restore.
class GremlinDatabaseRestoreResource {
  /// The name of the gremlin database available for restore.
  final String? databaseName;
  /// The names of the graphs available for restore.
  final List<String>? graphNames;

  /// Creates a new [GremlinDatabaseRestoreResource].
  /// [databaseName] The name of the gremlin database available for restore.
  /// [graphNames] The names of the graphs available for restore.
  GremlinDatabaseRestoreResource({
    this.databaseName,
    this.graphNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'graphNames': ?graphNames,
    };
  }

  factory GremlinDatabaseRestoreResource.fromMap(Map<String, dynamic> map) {
    return GremlinDatabaseRestoreResource(
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      graphNames: map['graphNames'] == null ? null : (map['graphNames'] as List).cast<String>(),
    );
  }
}

