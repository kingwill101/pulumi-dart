// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_physical_table_map_relational_table_input_column.dart';

class GetDataSetPhysicalTableMapRelationalTable {
  final pulumi.Input<String> catalog;
  final pulumi.Input<String> dataSourceArn;
  final pulumi.Input<List<GetDataSetPhysicalTableMapRelationalTableInputColumn>>
  inputColumns;
  final pulumi.Input<String> name;
  final pulumi.Input<String> schema;

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
    return <String, dynamic>{
      'catalog': catalog,
      'dataSourceArn': dataSourceArn,
      'inputColumns':
          pulumi.Input.mapInputValue<
            List<GetDataSetPhysicalTableMapRelationalTableInputColumn>,
            List<Map<String, dynamic>>
          >(
            inputColumns,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataSetPhysicalTableMapRelationalTableInputColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'schema': schema,
    };
  }

  factory GetDataSetPhysicalTableMapRelationalTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetPhysicalTableMapRelationalTable(
      catalog: pulumi.Input.fromValue(map['catalog'] as String),
      dataSourceArn: pulumi.Input.fromValue(map['dataSourceArn'] as String),
      inputColumns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDataSetPhysicalTableMapRelationalTableInputColumn
        >(
          map['inputColumns']!,
          (value) =>
              GetDataSetPhysicalTableMapRelationalTableInputColumn.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
