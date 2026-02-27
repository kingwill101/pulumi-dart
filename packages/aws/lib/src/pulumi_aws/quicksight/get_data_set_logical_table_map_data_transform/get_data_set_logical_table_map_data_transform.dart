// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_data_set_logical_table_map_data_transform_cast_column_type_operation/get_data_set_logical_table_map_data_transform_cast_column_type_operation.dart';
import '../get_data_set_logical_table_map_data_transform_create_columns_operation/get_data_set_logical_table_map_data_transform_create_columns_operation.dart';
import '../get_data_set_logical_table_map_data_transform_filter_operation/get_data_set_logical_table_map_data_transform_filter_operation.dart';
import '../get_data_set_logical_table_map_data_transform_project_operation/get_data_set_logical_table_map_data_transform_project_operation.dart';
import '../get_data_set_logical_table_map_data_transform_rename_column_operation/get_data_set_logical_table_map_data_transform_rename_column_operation.dart';
import '../get_data_set_logical_table_map_data_transform_tag_column_operation/get_data_set_logical_table_map_data_transform_tag_column_operation.dart';
import '../get_data_set_logical_table_map_data_transform_untag_column_operation/get_data_set_logical_table_map_data_transform_untag_column_operation.dart';

class GetDataSetLogicalTableMapDataTransform {
  final List<GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation>
      castColumnTypeOperations;
  final List<GetDataSetLogicalTableMapDataTransformCreateColumnsOperation>
      createColumnsOperations;
  final List<GetDataSetLogicalTableMapDataTransformFilterOperation>
      filterOperations;
  final List<GetDataSetLogicalTableMapDataTransformProjectOperation>
      projectOperations;
  final List<GetDataSetLogicalTableMapDataTransformRenameColumnOperation>
      renameColumnOperations;
  final List<GetDataSetLogicalTableMapDataTransformTagColumnOperation>
      tagColumnOperations;
  final List<GetDataSetLogicalTableMapDataTransformUntagColumnOperation>
      untagColumnOperations;

  GetDataSetLogicalTableMapDataTransform({
    required this.castColumnTypeOperations,
    required this.createColumnsOperations,
    required this.filterOperations,
    required this.projectOperations,
    required this.renameColumnOperations,
    required this.tagColumnOperations,
    required this.untagColumnOperations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['castColumnTypeOperations'] = pulumi.Input.encodeList<
            GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation,
            Map<String, dynamic>>(
        castColumnTypeOperations, (value) => value.toMap());
    map['createColumnsOperations'] = pulumi.Input.encodeList<
            GetDataSetLogicalTableMapDataTransformCreateColumnsOperation,
            Map<String, dynamic>>(
        createColumnsOperations, (value) => value.toMap());
    map['filterOperations'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapDataTransformFilterOperation,
        Map<String, dynamic>>(filterOperations, (value) => value.toMap());
    map['projectOperations'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapDataTransformProjectOperation,
        Map<String, dynamic>>(projectOperations, (value) => value.toMap());
    map['renameColumnOperations'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapDataTransformRenameColumnOperation,
        Map<String, dynamic>>(renameColumnOperations, (value) => value.toMap());
    map['tagColumnOperations'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapDataTransformTagColumnOperation,
        Map<String, dynamic>>(tagColumnOperations, (value) => value.toMap());
    map['untagColumnOperations'] = pulumi.Input.encodeList<
        GetDataSetLogicalTableMapDataTransformUntagColumnOperation,
        Map<String, dynamic>>(untagColumnOperations, (value) => value.toMap());
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransform.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransform(
      castColumnTypeOperations: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation>(
          map['castColumnTypeOperations'],
          (value) =>
              GetDataSetLogicalTableMapDataTransformCastColumnTypeOperation
                  .fromMap((value as Map).cast<String, dynamic>())),
      createColumnsOperations: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformCreateColumnsOperation>(
          map['createColumnsOperations'],
          (value) =>
              GetDataSetLogicalTableMapDataTransformCreateColumnsOperation
                  .fromMap((value as Map).cast<String, dynamic>())),
      filterOperations: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformFilterOperation>(
          map['filterOperations'],
          (value) =>
              GetDataSetLogicalTableMapDataTransformFilterOperation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      projectOperations: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformProjectOperation>(
          map['projectOperations'],
          (value) =>
              GetDataSetLogicalTableMapDataTransformProjectOperation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      renameColumnOperations: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformRenameColumnOperation>(
          map['renameColumnOperations'],
          (value) => GetDataSetLogicalTableMapDataTransformRenameColumnOperation
              .fromMap((value as Map).cast<String, dynamic>())),
      tagColumnOperations: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformTagColumnOperation>(
          map['tagColumnOperations'],
          (value) =>
              GetDataSetLogicalTableMapDataTransformTagColumnOperation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      untagColumnOperations: pulumi.Input.decodeList<
              GetDataSetLogicalTableMapDataTransformUntagColumnOperation>(
          map['untagColumnOperations'],
          (value) => GetDataSetLogicalTableMapDataTransformUntagColumnOperation
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
