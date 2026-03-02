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
  /// A transform operation that casts a column to a different type. See cast_column_type_operation.
  final pulumi.Input<DataSetLogicalTableMapDataTransformCastColumnTypeOperation>? castColumnTypeOperation;
  /// An operation that creates calculated columns. Columns created in one such operation form a lexical closure. See create_columns_operation.
  final pulumi.Input<DataSetLogicalTableMapDataTransformCreateColumnsOperation>? createColumnsOperation;
  /// An operation that filters rows based on some condition. See filter_operation.
  final pulumi.Input<DataSetLogicalTableMapDataTransformFilterOperation>? filterOperation;
  /// An operation that projects columns. Operations that come after a projection can only refer to projected columns. See project_operation.
  final pulumi.Input<DataSetLogicalTableMapDataTransformProjectOperation>? projectOperation;
  /// An operation that renames a column. See rename_column_operation.
  final pulumi.Input<DataSetLogicalTableMapDataTransformRenameColumnOperation>? renameColumnOperation;
  /// An operation that tags a column with additional information. See tag_column_operation.
  final pulumi.Input<DataSetLogicalTableMapDataTransformTagColumnOperation>? tagColumnOperation;
  /// A transform operation that removes tags associated with a column. See untag_column_operation.
  final pulumi.Input<DataSetLogicalTableMapDataTransformUntagColumnOperation>? untagColumnOperation;

  /// Creates a new [DataSetLogicalTableMapDataTransform].
  /// [castColumnTypeOperation] A transform operation that casts a column to a different type. See cast_column_type_operation.
  /// [createColumnsOperation] An operation that creates calculated columns. Columns created in one such operation form a lexical closure. See create_columns_operation.
  /// [filterOperation] An operation that filters rows based on some condition. See filter_operation.
  /// [projectOperation] An operation that projects columns. Operations that come after a projection can only refer to projected columns. See project_operation.
  /// [renameColumnOperation] An operation that renames a column. See rename_column_operation.
  /// [tagColumnOperation] An operation that tags a column with additional information. See tag_column_operation.
  /// [untagColumnOperation] A transform operation that removes tags associated with a column. See untag_column_operation.
  DataSetLogicalTableMapDataTransform({
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
      castColumnTypeOperation: map['castColumnTypeOperation'] == null ? null : (DataSetLogicalTableMapDataTransformCastColumnTypeOperation.fromMap((map['castColumnTypeOperation'] as Map).cast<String, dynamic>())).input(),
      createColumnsOperation: map['createColumnsOperation'] == null ? null : (DataSetLogicalTableMapDataTransformCreateColumnsOperation.fromMap((map['createColumnsOperation'] as Map).cast<String, dynamic>())).input(),
      filterOperation: map['filterOperation'] == null ? null : (DataSetLogicalTableMapDataTransformFilterOperation.fromMap((map['filterOperation'] as Map).cast<String, dynamic>())).input(),
      projectOperation: map['projectOperation'] == null ? null : (DataSetLogicalTableMapDataTransformProjectOperation.fromMap((map['projectOperation'] as Map).cast<String, dynamic>())).input(),
      renameColumnOperation: map['renameColumnOperation'] == null ? null : (DataSetLogicalTableMapDataTransformRenameColumnOperation.fromMap((map['renameColumnOperation'] as Map).cast<String, dynamic>())).input(),
      tagColumnOperation: map['tagColumnOperation'] == null ? null : (DataSetLogicalTableMapDataTransformTagColumnOperation.fromMap((map['tagColumnOperation'] as Map).cast<String, dynamic>())).input(),
      untagColumnOperation: map['untagColumnOperation'] == null ? null : (DataSetLogicalTableMapDataTransformUntagColumnOperation.fromMap((map['untagColumnOperation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

