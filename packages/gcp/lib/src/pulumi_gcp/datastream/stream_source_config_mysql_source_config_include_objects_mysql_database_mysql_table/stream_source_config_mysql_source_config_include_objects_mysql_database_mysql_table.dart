// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_mysql_source_config_include_objects_mysql_database_mysql_table_mysql_column/stream_source_config_mysql_source_config_include_objects_mysql_database_mysql_table_mysql_column.dart';

class StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable {
  /// MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<
          StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn>?
      mysqlColumns;

  /// Table name.
  final String table;

  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable({
    this.mysqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mysqlColumnsValue = mysqlColumns;
    if (mysqlColumnsValue != null) {
      map['mysqlColumns'] = Input.encodeList<
          StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn,
          Map<String, dynamic>>(mysqlColumnsValue, (value) => value.toMap());
    }
    map['table'] = table;
    return map;
  }

  factory StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTable(
      mysqlColumns: map['mysqlColumns'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn>(
              map['mysqlColumns'],
              (value) =>
                  StreamSourceConfigMysqlSourceConfigIncludeObjectsMysqlDatabaseMysqlTableMysqlColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}
