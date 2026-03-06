// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_physical_table_map_custom_sql_column.dart';

class DataSetPhysicalTableMapCustomSql {
  /// Column schema from the SQL query result set. See columns.
  final pulumi.Input<List<DataSetPhysicalTableMapCustomSqlColumn>>? columns;
  /// ARN of the data source.
  final pulumi.Input<String> dataSourceArn;
  /// Display name for the SQL query result.
  final pulumi.Input<String> name;
  /// SQL query.
  final pulumi.Input<String> sqlQuery;

  /// Creates a new [DataSetPhysicalTableMapCustomSql].
  /// [columns] Column schema from the SQL query result set. See columns.
  /// [dataSourceArn] ARN of the data source.
  /// [name] Display name for the SQL query result.
  /// [sqlQuery] SQL query.
  const DataSetPhysicalTableMapCustomSql({
    this.columns,
    required this.dataSourceArn,
    required this.name,
    required this.sqlQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<DataSetPhysicalTableMapCustomSqlColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<DataSetPhysicalTableMapCustomSqlColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSourceArn': dataSourceArn,
      'name': name,
      'sqlQuery': sqlQuery,
    };
  }

  factory DataSetPhysicalTableMapCustomSql.fromMap(Map<String, dynamic> map) {
    return DataSetPhysicalTableMapCustomSql(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetPhysicalTableMapCustomSqlColumn>(guardedValue, (value) => DataSetPhysicalTableMapCustomSqlColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataSourceArn: pulumi.Input.fromValue(map['dataSourceArn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      sqlQuery: pulumi.Input.fromValue(map['sqlQuery'] as String),
    );
  }
}

