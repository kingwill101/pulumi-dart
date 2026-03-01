// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_logical_table_map_data_transform_create_columns_operation_column.dart';

class DataSetLogicalTableMapDataTransformCreateColumnsOperation {
  /// Calculated columns to create. See columns.
  final List<DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn> columns;

  /// Creates a new [DataSetLogicalTableMapDataTransformCreateColumnsOperation].
  /// [columns] Calculated columns to create. See columns.
  DataSetLogicalTableMapDataTransformCreateColumnsOperation({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.encodeList<DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn, Map<String, dynamic>>(columns, (value) => value.toMap()),
    };
  }

  factory DataSetLogicalTableMapDataTransformCreateColumnsOperation.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformCreateColumnsOperation(
      columns: pulumi.Input.decodeList<DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn>(map['columns'], (value) => DataSetLogicalTableMapDataTransformCreateColumnsOperationColumn.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

