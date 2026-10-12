// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_logical_table_map_data_transform_cast_column_type_operation.dart';
import 'data_set_logical_table_map_data_transform_create_columns_operation.dart';
import 'data_set_logical_table_map_data_transform_filter_operation.dart';
import 'data_set_logical_table_map_data_transform_project_operation.dart';
import 'data_set_logical_table_map_data_transform_rename_column_operation.dart';
import 'data_set_logical_table_map_data_transform_tag_column_operation.dart';
import 'data_set_logical_table_map_data_transform_untag_column_operation.dart';

class DataSetLogicalTableMapDataTransform {
  /// Transform operation that casts a column to a different type. See `castColumnTypeOperation` Block below.
  final pulumi.Input<DataSetLogicalTableMapDataTransformCastColumnTypeOperation?>? castColumnTypeOperation;
  /// Operation that creates calculated columns. Columns created in one such operation form a lexical closure. See `createColumnsOperation` Block below.
  final pulumi.Input<DataSetLogicalTableMapDataTransformCreateColumnsOperation?>? createColumnsOperation;
  /// Operation that filters rows based on some condition. See `filterOperation` Block below.
  final pulumi.Input<DataSetLogicalTableMapDataTransformFilterOperation?>? filterOperation;
  /// Operation that projects columns. Operations that come after a projection can only refer to projected columns. See `projectOperation` Block below.
  final pulumi.Input<DataSetLogicalTableMapDataTransformProjectOperation?>? projectOperation;
  /// Operation that renames a column. See `renameColumnOperation` Block below.
  final pulumi.Input<DataSetLogicalTableMapDataTransformRenameColumnOperation?>? renameColumnOperation;
  /// Operation that tags a column with additional information. See `tagColumnOperation` Block below.
  final pulumi.Input<DataSetLogicalTableMapDataTransformTagColumnOperation?>? tagColumnOperation;
  /// Transform operation that removes tags associated with a column. See `untagColumnOperation` Block below.
  final pulumi.Input<DataSetLogicalTableMapDataTransformUntagColumnOperation?>? untagColumnOperation;

  /// Creates a new [DataSetLogicalTableMapDataTransform].
  /// [castColumnTypeOperation] Transform operation that casts a column to a different type. See `castColumnTypeOperation` Block below.
  /// [createColumnsOperation] Operation that creates calculated columns. Columns created in one such operation form a lexical closure. See `createColumnsOperation` Block below.
  /// [filterOperation] Operation that filters rows based on some condition. See `filterOperation` Block below.
  /// [projectOperation] Operation that projects columns. Operations that come after a projection can only refer to projected columns. See `projectOperation` Block below.
  /// [renameColumnOperation] Operation that renames a column. See `renameColumnOperation` Block below.
  /// [tagColumnOperation] Operation that tags a column with additional information. See `tagColumnOperation` Block below.
  /// [untagColumnOperation] Transform operation that removes tags associated with a column. See `untagColumnOperation` Block below.
  const DataSetLogicalTableMapDataTransform({
    this.castColumnTypeOperation,
    this.createColumnsOperation,
    this.filterOperation,
    this.projectOperation,
    this.renameColumnOperation,
    this.tagColumnOperation,
    this.untagColumnOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'castColumnTypeOperation': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapDataTransformCastColumnTypeOperation, Map<String, dynamic>>(castColumnTypeOperation, (value) => value.toMap()),
      'createColumnsOperation': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapDataTransformCreateColumnsOperation, Map<String, dynamic>>(createColumnsOperation, (value) => value.toMap()),
      'filterOperation': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapDataTransformFilterOperation, Map<String, dynamic>>(filterOperation, (value) => value.toMap()),
      'projectOperation': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapDataTransformProjectOperation, Map<String, dynamic>>(projectOperation, (value) => value.toMap()),
      'renameColumnOperation': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapDataTransformRenameColumnOperation, Map<String, dynamic>>(renameColumnOperation, (value) => value.toMap()),
      'tagColumnOperation': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapDataTransformTagColumnOperation, Map<String, dynamic>>(tagColumnOperation, (value) => value.toMap()),
      'untagColumnOperation': ?pulumi.Input.mapOptionalInputValue<DataSetLogicalTableMapDataTransformUntagColumnOperation, Map<String, dynamic>>(untagColumnOperation, (value) => value.toMap()),
    };
  }

  factory DataSetLogicalTableMapDataTransform.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapDataTransform(
      castColumnTypeOperation: (() { final guardedValue = map['castColumnTypeOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapDataTransformCastColumnTypeOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createColumnsOperation: (() { final guardedValue = map['createColumnsOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapDataTransformCreateColumnsOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterOperation: (() { final guardedValue = map['filterOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapDataTransformFilterOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectOperation: (() { final guardedValue = map['projectOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapDataTransformProjectOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      renameColumnOperation: (() { final guardedValue = map['renameColumnOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapDataTransformRenameColumnOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagColumnOperation: (() { final guardedValue = map['tagColumnOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapDataTransformTagColumnOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      untagColumnOperation: (() { final guardedValue = map['untagColumnOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetLogicalTableMapDataTransformUntagColumnOperation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
