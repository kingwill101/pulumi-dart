// ignore_for_file: unused_element, unnecessary_cast

import 'database_dump_database_type3.dart';
import 'database_dump_type3.dart';

/// A specification of the location of and metadata about a database dump from a relational database management system.
class DatabaseDump3 {
  /// The type of the database.
  final DatabaseDumpDatabaseType3? databaseType;

  /// A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.
  final String? gcsUri;

  /// The name of the source database.
  final String? sourceDatabase;

  /// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
  final DatabaseDumpType3? type;

  DatabaseDump3({
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

  factory DatabaseDump3.fromMap(Map<String, dynamic> map) {
    return DatabaseDump3(
      databaseType: map['databaseType'] == null
          ? null
          : DatabaseDumpDatabaseType3.fromValue(map['databaseType'] as String),
      gcsUri: map['gcsUri'] == null ? null : map['gcsUri'] as String,
      sourceDatabase: map['sourceDatabase'] == null
          ? null
          : map['sourceDatabase'] as String,
      type: map['type'] == null
          ? null
          : DatabaseDumpType3.fromValue(map['type'] as String),
    );
  }
}
