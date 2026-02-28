// ignore_for_file: unused_element, unnecessary_cast

/// A specification of the location of and metadata about a database dump from a relational database management system.
class DatabaseDumpResponse {
  /// The type of the database.
  final String databaseType;

  /// A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  final String gcsUri;

  /// The name of the source database.
  final String sourceDatabase;

  /// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  final String type;

  /// Creates a new [DatabaseDumpResponse].
  /// [databaseType] The type of the database.
  /// [gcsUri] A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  /// [sourceDatabase] The name of the source database.
  /// [type] Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  DatabaseDumpResponse({
    required this.databaseType,
    required this.gcsUri,
    required this.sourceDatabase,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseType'] = databaseType;
    map['gcsUri'] = gcsUri;
    map['sourceDatabase'] = sourceDatabase;
    map['type'] = type;
    return map;
  }

  factory DatabaseDumpResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseDumpResponse(
      databaseType: map['databaseType'] as String,
      gcsUri: map['gcsUri'] as String,
      sourceDatabase: map['sourceDatabase'] as String,
      type: map['type'] as String,
    );
  }
}
