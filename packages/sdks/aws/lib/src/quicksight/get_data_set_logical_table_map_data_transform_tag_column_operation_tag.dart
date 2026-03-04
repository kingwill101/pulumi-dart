// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_logical_table_map_data_transform_tag_column_operation_tag_column_description.dart';

class GetDataSetLogicalTableMapDataTransformTagColumnOperationTag {
  final pulumi.Input<
    List<
      GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription
    >
  >
  columnDescriptions;
  final pulumi.Input<String> columnGeographicRole;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformTagColumnOperationTag].
  /// [columnDescriptions] Required.
  /// [columnGeographicRole] Required.
  GetDataSetLogicalTableMapDataTransformTagColumnOperationTag({
    required this.columnDescriptions,
    required this.columnGeographicRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnDescriptions':
          pulumi.Input.mapInputValue<
            List<
              GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription
            >,
            List<Map<String, dynamic>>
          >(
            columnDescriptions,
            (value) =>
                pulumi.Input.encodeList<
                  GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'columnGeographicRole': columnGeographicRole,
    };
  }

  factory GetDataSetLogicalTableMapDataTransformTagColumnOperationTag.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetLogicalTableMapDataTransformTagColumnOperationTag(
      columnDescriptions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription
        >(
          map['columnDescriptions']!,
          (value) =>
              GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      columnGeographicRole: pulumi.Input.fromValue(
        map['columnGeographicRole'] as String,
      ),
    );
  }
}
