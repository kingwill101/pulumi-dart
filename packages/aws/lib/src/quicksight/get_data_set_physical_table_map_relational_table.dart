// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_physical_table_map_relational_table_input_column.dart';

class GetDataSetPhysicalTableMapRelationalTable {
  final String catalog;
  final String dataSourceArn;
  final List<GetDataSetPhysicalTableMapRelationalTableInputColumn> inputColumns;
  final String name;
  final String schema;

  /// Creates a new [GetDataSetPhysicalTableMapRelationalTable].
  /// [catalog] Required.
  /// [dataSourceArn] Required.
  /// [inputColumns] Required.
  /// [name] Required.
  /// [schema] Required.
  GetDataSetPhysicalTableMapRelationalTable({
    required this.catalog,
    required this.dataSourceArn,
    required this.inputColumns,
    required this.name,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalog'] = catalog;
    map['dataSourceArn'] = dataSourceArn;
    map['inputColumns'] = pulumi.Input.encodeList<
        GetDataSetPhysicalTableMapRelationalTableInputColumn,
        Map<String, dynamic>>(inputColumns, (value) => value.toMap());
    map['name'] = name;
    map['schema'] = schema;
    return map;
  }

  factory GetDataSetPhysicalTableMapRelationalTable.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapRelationalTable(
      catalog: map['catalog'] as String,
      dataSourceArn: map['dataSourceArn'] as String,
      inputColumns: pulumi.Input.decodeList<
              GetDataSetPhysicalTableMapRelationalTableInputColumn>(
          map['inputColumns'],
          (value) =>
              GetDataSetPhysicalTableMapRelationalTableInputColumn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      schema: map['schema'] as String,
    );
  }
}
