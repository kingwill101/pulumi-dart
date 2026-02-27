// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_backfill_all_mysql_excluded_objects_mysql_database/stream_backfill_all_mysql_excluded_objects_mysql_database.dart';

class StreamBackfillAllMysqlExcludedObjects {
  /// MySQL databases on the server
  /// Structure is documented below.
  final List<StreamBackfillAllMysqlExcludedObjectsMysqlDatabase> mysqlDatabases;

  StreamBackfillAllMysqlExcludedObjects({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlDatabases'] = pulumi.Input.encodeList<
        StreamBackfillAllMysqlExcludedObjectsMysqlDatabase,
        Map<String, dynamic>>(mysqlDatabases, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllMysqlExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllMysqlExcludedObjects(
      mysqlDatabases: pulumi.Input.decodeList<
              StreamBackfillAllMysqlExcludedObjectsMysqlDatabase>(
          map['mysqlDatabases'],
          (value) => StreamBackfillAllMysqlExcludedObjectsMysqlDatabase.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
