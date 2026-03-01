// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mysql_source_config_exclude_objects_mysql_database_mysql_table_mysql_column.dart';

class StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable {
  /// MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final List<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn>? mysqlColumns;
  /// Table name.
  final String table;

  /// Creates a new [StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable].
  /// [mysqlColumns] MySQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable({
    this.mysqlColumns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlColumns': ?mysqlColumns == null ? null : pulumi.Input.encodeList<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn, Map<String, dynamic>>(mysqlColumns!, (value) => value.toMap()),
      'table': table,
    };
  }

  factory StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTable(
      mysqlColumns: map['mysqlColumns'] == null ? null : pulumi.Input.decodeList<StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn>(map['mysqlColumns'], (value) => StreamSourceConfigMysqlSourceConfigExcludeObjectsMysqlDatabaseMysqlTableMysqlColumn.fromMap((value as Map).cast<String, dynamic>())),
      table: map['table'] as String,
    );
  }
}

