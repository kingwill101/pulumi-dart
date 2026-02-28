// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_physical_table_map_custom_sql_column.dart';

class DataSetPhysicalTableMapCustomSql {
  /// Column schema from the SQL query result set. See columns.
  final List<DataSetPhysicalTableMapCustomSqlColumn>? columns;

  /// ARN of the data source.
  final String dataSourceArn;

  /// Display name for the SQL query result.
  final String name;

  /// SQL query.
  final String sqlQuery;

  /// Creates a new [DataSetPhysicalTableMapCustomSql].
  /// [columns] Column schema from the SQL query result set. See columns.
  /// [dataSourceArn] ARN of the data source.
  /// [name] Display name for the SQL query result.
  /// [sqlQuery] SQL query.
  DataSetPhysicalTableMapCustomSql({
    this.columns,
    required this.dataSourceArn,
    required this.name,
    required this.sqlQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = pulumi.Input.encodeList<
          DataSetPhysicalTableMapCustomSqlColumn,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    map['dataSourceArn'] = dataSourceArn;
    map['name'] = name;
    map['sqlQuery'] = sqlQuery;
    return map;
  }

  factory DataSetPhysicalTableMapCustomSql.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMapCustomSql(
      columns: map['columns'] == null
          ? null
          : pulumi.Input.decodeList<DataSetPhysicalTableMapCustomSqlColumn>(
              map['columns'],
              (value) => DataSetPhysicalTableMapCustomSqlColumn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataSourceArn: map['dataSourceArn'] as String,
      name: map['name'] as String,
      sqlQuery: map['sqlQuery'] as String,
    );
  }
}
