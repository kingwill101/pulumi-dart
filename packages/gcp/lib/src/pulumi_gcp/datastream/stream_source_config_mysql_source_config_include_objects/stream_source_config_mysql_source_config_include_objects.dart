// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_mysql_source_config_include_objects_mysql_database/stream_source_config_mysql_source_config_include_objects_mysql_database.dart';

class StreamSourceConfigMysqlSourceConfigIncludeObjects {
  /// MySQL databases on the server
  /// Structure is documented below.
  final List<StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase>
      mysqlDatabases;

  StreamSourceConfigMysqlSourceConfigIncludeObjects({
    required this.mysqlDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlDatabases'] = Input.encodeList<
        StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase,
        Map<String, dynamic>>(mysqlDatabases, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigMysqlSourceConfigIncludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfigIncludeObjects(
      mysqlDatabases: Input.decodeList<
              StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase>(
          map['mysqlDatabases'],
          (value) =>
              StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabase
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
