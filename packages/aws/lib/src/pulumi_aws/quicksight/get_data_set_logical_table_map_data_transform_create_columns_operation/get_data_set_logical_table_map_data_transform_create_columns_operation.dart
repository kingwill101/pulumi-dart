// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_data_set_logical_table_map_data_transform_create_columns_operation_column/get_data_set_logical_table_map_data_transform_create_columns_operation_column.dart';

class GetDataSetLogicalTableMapDataTransformCreateColumnsOperation {
  final List<GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn>
      columns;

  GetDataSetLogicalTableMapDataTransformCreateColumnsOperation({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn,
        Map<String, dynamic>>(columns, (value) => value.toMap());
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformCreateColumnsOperation.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformCreateColumnsOperation(
      columns: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn>(
          map['columns'],
          (value) =>
              GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
