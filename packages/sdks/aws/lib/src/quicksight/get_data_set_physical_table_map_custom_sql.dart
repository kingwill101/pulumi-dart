// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_physical_table_map_custom_sql_column.dart';

class GetDataSetPhysicalTableMapCustomSql {
  final pulumi.Input<List<GetDataSetPhysicalTableMapCustomSqlColumn>> columns;
  final pulumi.Input<String> dataSourceArn;
  final pulumi.Input<String> name;
  final pulumi.Input<String> sqlQuery;

  /// Creates a new [GetDataSetPhysicalTableMapCustomSql].
  /// [columns] Required.
  /// [dataSourceArn] Required.
  /// [name] Required.
  /// [sqlQuery] Required.
  const GetDataSetPhysicalTableMapCustomSql({
    required this.columns,
    required this.dataSourceArn,
    required this.name,
    required this.sqlQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.mapInputValue<List<GetDataSetPhysicalTableMapCustomSqlColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<GetDataSetPhysicalTableMapCustomSqlColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSourceArn': dataSourceArn,
      'name': name,
      'sqlQuery': sqlQuery,
    };
  }

  factory GetDataSetPhysicalTableMapCustomSql.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapCustomSql(
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetPhysicalTableMapCustomSqlColumn>(map['columns']!, (value) => GetDataSetPhysicalTableMapCustomSqlColumn.fromMap((value as Map).cast<String, dynamic>()))),
      dataSourceArn: pulumi.Input.fromValue(map['dataSourceArn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      sqlQuery: pulumi.Input.fromValue(map['sqlQuery'] as String),
    );
  }
}
