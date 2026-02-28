// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_logical_table_map_data_transform_tag_column_operation_tag.dart';

class DataSetLogicalTableMapDataTransformTagColumnOperation {
  /// Column name.
  final String columnName;
  /// The dataset column tag, currently only used for geospatial type tagging. See tags.
  final List<DataSetLogicalTableMapDataTransformTagColumnOperationTag> tags;

  /// Creates a new [DataSetLogicalTableMapDataTransformTagColumnOperation].
  /// [columnName] Column name.
  /// [tags] The dataset column tag, currently only used for geospatial type tagging. See tags.
  DataSetLogicalTableMapDataTransformTagColumnOperation({
    required this.columnName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'tags': pulumi.Input.encodeList<DataSetLogicalTableMapDataTransformTagColumnOperationTag, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory DataSetLogicalTableMapDataTransformTagColumnOperation.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransformTagColumnOperation(
      columnName: map['columnName'] as String,
      tags: pulumi.Input.decodeList<DataSetLogicalTableMapDataTransformTagColumnOperationTag>(map['tags'], (value) => DataSetLogicalTableMapDataTransformTagColumnOperationTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

