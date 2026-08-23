// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_logical_table_map_data_transform_cast_column_type_operation.dart';
import 'get_data_set_logical_table_map_data_transform_create_columns_operation.dart';
import 'get_data_set_logical_table_map_data_transform_filter_operation.dart';
import 'get_data_set_logical_table_map_data_transform_project_operation.dart';
import 'get_data_set_logical_table_map_data_transform_rename_column_operation.dart';
import 'get_data_set_logical_table_map_data_transform_tag_column_operation.dart';
import 'get_data_set_logical_table_map_data_transform_untag_column_operation.dart';

class GetDataSetLogicalTableMapDataTransform {
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation>> castColumnTypeOperations;
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransformCreateColumnsOperation>> createColumnsOperations;
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransformFilterOperation>> filterOperations;
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransformProjectOperation>> projectOperations;
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransformRenameColumnOperation>> renameColumnOperations;
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransformTagColumnOperation>> tagColumnOperations;
  final pulumi.Input<List<GetDataSetLogicalTableMapDataTransformUntagColumnOperation>> untagColumnOperations;

  /// Creates a new [GetDataSetLogicalTableMapDataTransform].
  /// [castColumnTypeOperations] Required.
  /// [createColumnsOperations] Required.
  /// [filterOperations] Required.
  /// [projectOperations] Required.
  /// [renameColumnOperations] Required.
  /// [tagColumnOperations] Required.
  /// [untagColumnOperations] Required.
  const GetDataSetLogicalTableMapDataTransform({
    required this.castColumnTypeOperations,
    required this.createColumnsOperations,
    required this.filterOperations,
    required this.projectOperations,
    required this.renameColumnOperations,
    required this.tagColumnOperations,
    required this.untagColumnOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'castColumnTypeOperations': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation>, List<Map<String, dynamic>>>(castColumnTypeOperations, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createColumnsOperations': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransformCreateColumnsOperation>, List<Map<String, dynamic>>>(createColumnsOperations, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransformCreateColumnsOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filterOperations': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransformFilterOperation>, List<Map<String, dynamic>>>(filterOperations, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransformFilterOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectOperations': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransformProjectOperation>, List<Map<String, dynamic>>>(projectOperations, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransformProjectOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'renameColumnOperations': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransformRenameColumnOperation>, List<Map<String, dynamic>>>(renameColumnOperations, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransformRenameColumnOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tagColumnOperations': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransformTagColumnOperation>, List<Map<String, dynamic>>>(tagColumnOperations, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransformTagColumnOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'untagColumnOperations': pulumi.Input.mapInputValue<List<GetDataSetLogicalTableMapDataTransformUntagColumnOperation>, List<Map<String, dynamic>>>(untagColumnOperations, (value) => pulumi.Input.encodeList<GetDataSetLogicalTableMapDataTransformUntagColumnOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataSetLogicalTableMapDataTransform.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransform(
      castColumnTypeOperations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation>(map['castColumnTypeOperations']!, (value) => GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation.fromMap((value as Map).cast<String, dynamic>()))),
      createColumnsOperations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransformCreateColumnsOperation>(map['createColumnsOperations']!, (value) => GetDataSetLogicalTableMapDataTransformCreateColumnsOperation.fromMap((value as Map).cast<String, dynamic>()))),
      filterOperations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransformFilterOperation>(map['filterOperations']!, (value) => GetDataSetLogicalTableMapDataTransformFilterOperation.fromMap((value as Map).cast<String, dynamic>()))),
      projectOperations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransformProjectOperation>(map['projectOperations']!, (value) => GetDataSetLogicalTableMapDataTransformProjectOperation.fromMap((value as Map).cast<String, dynamic>()))),
      renameColumnOperations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransformRenameColumnOperation>(map['renameColumnOperations']!, (value) => GetDataSetLogicalTableMapDataTransformRenameColumnOperation.fromMap((value as Map).cast<String, dynamic>()))),
      tagColumnOperations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransformTagColumnOperation>(map['tagColumnOperations']!, (value) => GetDataSetLogicalTableMapDataTransformTagColumnOperation.fromMap((value as Map).cast<String, dynamic>()))),
      untagColumnOperations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSetLogicalTableMapDataTransformUntagColumnOperation>(map['untagColumnOperations']!, (value) => GetDataSetLogicalTableMapDataTransformUntagColumnOperation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
