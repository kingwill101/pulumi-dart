// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_exclude_objects_database_collection.dart';

class StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase {
  /// Collections in the database.
  /// Structure is documented below.
  final List<
          StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection>?
      collections;

  /// Database name.
  final String? database;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase].
  /// [collections] Collections in the database.
  /// [database] Database name.
  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase({
    this.collections,
    this.database,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionsValue = collections;
    if (collectionsValue != null) {
      map['collections'] = pulumi.Input.encodeList<
          StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection,
          Map<String, dynamic>>(collectionsValue, (value) => value.toMap());
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    return map;
  }

  factory StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase(
      collections: map['collections'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection>(
              map['collections'],
              (value) =>
                  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection
                      .fromMap((value as Map).cast<String, dynamic>())),
      database: map['database'] == null ? null : map['database'] as String,
    );
  }
}
