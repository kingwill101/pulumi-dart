// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_source_config_mysql_source_config_exclude_objects_mysql_database/stream_source_config_mysql_source_config_exclude_objects_mysql_database.dart';

class StreamSourceConfigMysqlSourceConfigExcludeObjects {
  /// MySQL databases on the server
  /// Structure is documented below.
  final List<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase>
      mysqlDatabases;

  StreamSourceConfigMysqlSourceConfigExcludeObjects({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlDatabases'] = pulumi.Input.encodeList<
        StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase,
        Map<String, dynamic>>(mysqlDatabases, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigMysqlSourceConfigExcludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfigExcludeObjects(
      mysqlDatabases: pulumi.Input.decodeList<
              StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase>(
          map['mysqlDatabases'],
          (value) =>
              StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabase
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
