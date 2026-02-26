// ignore_for_file: unused_element, unnecessary_cast

import 'database_dump_database_type2.dart';
import 'database_dump_type2.dart';

/// A specification of the location of and metadata about a database dump from a relational database management system.
class DatabaseDump2 {
  /// The type of the database.
  final DatabaseDumpDatabaseType2? databaseType;

  /// A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  final String? gcsUri;

  /// The name of the source database.
  final String? sourceDatabase;

  /// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  final DatabaseDumpType2? type;

  DatabaseDump2({
    this.databaseType,
    this.gcsUri,
    this.sourceDatabase,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseTypeValue = databaseType;
    if (databaseTypeValue != null) {
      map['databaseType'] = databaseTypeValue.value;
    }
    final gcsUriValue = gcsUri;
    if (gcsUriValue != null) {
      map['gcsUri'] = gcsUriValue;
    }
    final sourceDatabaseValue = sourceDatabase;
    if (sourceDatabaseValue != null) {
      map['sourceDatabase'] = sourceDatabaseValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory DatabaseDump2.fromMap(Map<String, dynamic> map) {
    return DatabaseDump2(
      databaseType: map['databaseType'] == null
          ? null
          : DatabaseDumpDatabaseType2.fromValue(map['databaseType'] as String),
      gcsUri: map['gcsUri'] == null ? null : map['gcsUri'] as String,
      sourceDatabase: map['sourceDatabase'] == null
          ? null
          : map['sourceDatabase'] as String,
      type: map['type'] == null
          ? null
          : DatabaseDumpType2.fromValue(map['type'] as String),
    );
  }
}
