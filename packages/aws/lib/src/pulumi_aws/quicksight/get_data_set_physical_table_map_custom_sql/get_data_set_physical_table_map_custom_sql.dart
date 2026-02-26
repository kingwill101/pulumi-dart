// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_data_set_physical_table_map_custom_sql_column/get_data_set_physical_table_map_custom_sql_column.dart';

class GetDataSetPhysicalTableMapCustomSql {
  final List<GetDataSetPhysicalTableMapCustomSqlColumn> columns;
  final String dataSourceArn;
  final String name;
  final String sqlQuery;

  GetDataSetPhysicalTableMapCustomSql({
    required this.columns,
    required this.dataSourceArn,
    required this.name,
    required this.sqlQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = Input.encodeList<GetDataSetPhysicalTableMapCustomSqlColumn,
        Map<String, dynamic>>(columns, (value) => value.toMap());
    map['dataSourceArn'] = dataSourceArn;
    map['name'] = name;
    map['sqlQuery'] = sqlQuery;
    return map;
  }

  factory GetDataSetPhysicalTableMapCustomSql.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapCustomSql(
      columns: Input.decodeList<GetDataSetPhysicalTableMapCustomSqlColumn>(
          map['columns'],
          (value) => GetDataSetPhysicalTableMapCustomSqlColumn.fromMap(
              (value as Map).cast<String, dynamic>())),
      dataSourceArn: map['dataSourceArn'] as String,
      name: map['name'] as String,
      sqlQuery: map['sqlQuery'] as String,
    );
  }
}
