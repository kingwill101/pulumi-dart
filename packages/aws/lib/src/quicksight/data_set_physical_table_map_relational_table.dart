// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_physical_table_map_relational_table_input_column.dart';

class DataSetPhysicalTableMapRelationalTable {
  /// Catalog associated with the table.
  final String? catalog;

  /// ARN of the data source.
  final String dataSourceArn;

  /// Column schema of the table. See input_columns.
  final List<DataSetPhysicalTableMapRelationalTableInputColumn> inputColumns;

  /// Name of the relational table.
  final String name;

  /// Schema name. This name applies to certain relational database engines.
  final String? schema;

  /// Creates a new [DataSetPhysicalTableMapRelationalTable].
  /// [catalog] Catalog associated with the table.
  /// [dataSourceArn] ARN of the data source.
  /// [inputColumns] Column schema of the table. See input_columns.
  /// [name] Name of the relational table.
  /// [schema] Schema name. This name applies to certain relational database engines.
  DataSetPhysicalTableMapRelationalTable({
    this.catalog,
    required this.dataSourceArn,
    required this.inputColumns,
    required this.name,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': ?catalog,
      'dataSourceArn': dataSourceArn,
      'inputColumns':
          pulumi.Input.encodeList<
            DataSetPhysicalTableMapRelationalTableInputColumn,
            Map<String, dynamic>
          >(inputColumns, (value) => value.toMap()),
      'name': name,
      'schema': ?schema,
    };
  }

  factory DataSetPhysicalTableMapRelationalTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSetPhysicalTableMapRelationalTable(
      catalog: map['catalog'] == null ? null : map['catalog'] as String,
      dataSourceArn: map['dataSourceArn'] as String,
      inputColumns:
          pulumi.Input.decodeList<
            DataSetPhysicalTableMapRelationalTableInputColumn
          >(
            map['inputColumns'],
            (value) =>
                DataSetPhysicalTableMapRelationalTableInputColumn.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      name: map['name'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}
