// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_data_set_logical_table_map_data_transform_tag_column_operation_tag/get_data_set_logical_table_map_data_transform_tag_column_operation_tag.dart';

class GetDataSetLogicalTableMapDataTransformTagColumnOperation {
  final String columnName;
  final List<GetDataSetLogicalTableMapDataTransformTagColumnOperationTag> tags;

  GetDataSetLogicalTableMapDataTransformTagColumnOperation({
    required this.columnName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['tags'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapDataTransformTagColumnOperationTag,
        Map<String, dynamic>>(tags, (value) => value.toMap());
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformTagColumnOperation.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformTagColumnOperation(
      columnName: map['columnName'] as String,
      tags: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformTagColumnOperationTag>(
          map['tags'],
          (value) => GetDataSetLogicalTableMapDataTransformTagColumnOperationTag
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
