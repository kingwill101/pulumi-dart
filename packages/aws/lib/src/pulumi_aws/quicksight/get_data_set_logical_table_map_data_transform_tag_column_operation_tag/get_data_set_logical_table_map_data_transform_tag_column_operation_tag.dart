// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_data_set_logical_table_map_data_transform_tag_column_operation_tag_column_description/get_data_set_logical_table_map_data_transform_tag_column_operation_tag_column_description.dart';

class GetDataSetLogicalTableMapDataTransformTagColumnOperationTag {
  final List<
          GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription>
      columnDescriptions;
  final String columnGeographicRole;

  GetDataSetLogicalTableMapDataTransformTagColumnOperationTag({
    required this.columnDescriptions,
    required this.columnGeographicRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnDescriptions'] = Input.encodeList<
        GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription,
        Map<String, dynamic>>(columnDescriptions, (value) => value.toMap());
    map['columnGeographicRole'] = columnGeographicRole;
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformTagColumnOperationTag.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformTagColumnOperationTag(
      columnDescriptions: Input.decodeList<
              GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription>(
          map['columnDescriptions'],
          (value) =>
              GetDataSetLogicalTableMapDataTransformTagColumnOperationTagColumnDescription
                  .fromMap((value as Map).cast<String, dynamic>())),
      columnGeographicRole: map['columnGeographicRole'] as String,
    );
  }
}
