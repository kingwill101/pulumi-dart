// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_logical_table_map_data_transform_tag_column_operation_tag.dart';

class GetDataSetLogicalTableMapDataTransformTagColumnOperation {
  final pulumi.Input<String> columnName;
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransformTagColumnOperationTag>> tags;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformTagColumnOperation].
  /// [columnName] Required.
  /// [tags] Required.
  GetDataSetLogicalTableMapDataTransformTagColumnOperation({
    required this.columnName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'tags': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransformTagColumnOperationTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransformTagColumnOperationTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataSetLogicalTableMapDataTransformTagColumnOperation.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformTagColumnOperation(
      columnName: (map['columnName'] as String).input(),
      tags: (pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransformTagColumnOperationTag>(map['tags']!, (value) => GetDataSetLogicalTableMapDataTransformTagColumnOperationTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

