// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_logical_table_map_data_transform_create_columns_operation_column.dart';

class GetDataSetLogicalTableMapDataTransformCreateColumnsOperation {
  final pulumi.Input<
    List<GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn>
  >
  columns;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformCreateColumnsOperation].
  /// [columns] Required.
  GetDataSetLogicalTableMapDataTransformCreateColumnsOperation({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns':
          pulumi.Input.mapInputValue<
            List<
              GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn
            >,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetDataSetLogicalTableMapDataTransformCreateColumnsOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetLogicalTableMapDataTransformCreateColumnsOperation(
      columns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn
        >(
          map['columns']!,
          (value) =>
              GetDataSetLogicalTableMapDataTransformCreateColumnsOperationColumn.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
