// ignore_for_file: unused_element, unnecessary_cast

import 'conditional_column_set_value_response.dart';
import 'convert_row_id_to_column_response.dart';
import 'entity_move_response.dart';
import 'filter_table_columns_response.dart';
import 'mapping_rule_filter_response.dart';
import 'multi_column_datatype_change_response.dart';
import 'multi_entity_rename_response.dart';
import 'set_table_primary_key_response.dart';
import 'single_column_change_response.dart';
import 'single_entity_rename_response.dart';
import 'single_package_change_response.dart';
import 'source_sql_change_response.dart';

/// Result data returned by getMappingRule.
class GetMappingRuleResult {
  /// Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  final ConditionalColumnSetValueResponse conditionalColumnSetValue;

  /// Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  final ConvertRowIdToColumnResponse convertRowidColumn;

  /// Optional. A human readable name
  final String displayName;

  /// Optional. Rule to specify how multiple entities should be relocated into a different schema.
  final EntityMoveResponse entityMove;

  /// The rule filter
  final MappingRuleFilterResponse filter;

  /// Optional. Rule to specify the list of columns to include or exclude from a table.
  final FilterTableColumnsResponse filterTableColumns;

  /// Optional. Rule to specify how multiple columns should be converted to a different data type.
  final MultiColumnDatatypeChangeResponse multiColumnDataTypeChange;

  /// Optional. Rule to specify how multiple entities should be renamed.
  final MultiEntityRenameResponse multiEntityRename;

  /// Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  final String name;

  /// The timestamp that the revision was created.
  final String revisionCreateTime;

  /// The revision ID of the mapping rule. A new revision is committed whenever the mapping rule is changed in any way. The format is an 8-character hexadecimal string.
  final String revisionId;

  /// The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  final String ruleOrder;

  /// The rule scope
  final String ruleScope;

  /// Optional. Rule to specify the primary key for a table
  final SetTablePrimaryKeyResponse setTablePrimaryKey;

  /// Optional. Rule to specify how a single column is converted.
  final SingleColumnChangeResponse singleColumnChange;

  /// Optional. Rule to specify how a single entity should be renamed.
  final SingleEntityRenameResponse singleEntityRename;

  /// Optional. Rule to specify how a single package is converted.
  final SinglePackageChangeResponse singlePackageChange;

  /// Optional. Rule to change the sql code for an entity, for example, function, procedure.
  final SourceSqlChangeResponse sourceSqlChange;

  /// Optional. The mapping rule state
  final String state;

  GetMappingRuleResult({
    required this.conditionalColumnSetValue,
    required this.convertRowidColumn,
    required this.displayName,
    required this.entityMove,
    required this.filter,
    required this.filterTableColumns,
    required this.multiColumnDataTypeChange,
    required this.multiEntityRename,
    required this.name,
    required this.revisionCreateTime,
    required this.revisionId,
    required this.ruleOrder,
    required this.ruleScope,
    required this.setTablePrimaryKey,
    required this.singleColumnChange,
    required this.singleEntityRename,
    required this.singlePackageChange,
    required this.sourceSqlChange,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditionalColumnSetValue'] = conditionalColumnSetValue.toMap();
    map['convertRowidColumn'] = convertRowidColumn.toMap();
    map['displayName'] = displayName;
    map['entityMove'] = entityMove.toMap();
    map['filter'] = filter.toMap();
    map['filterTableColumns'] = filterTableColumns.toMap();
    map['multiColumnDataTypeChange'] = multiColumnDataTypeChange.toMap();
    map['multiEntityRename'] = multiEntityRename.toMap();
    map['name'] = name;
    map['revisionCreateTime'] = revisionCreateTime;
    map['revisionId'] = revisionId;
    map['ruleOrder'] = ruleOrder;
    map['ruleScope'] = ruleScope;
    map['setTablePrimaryKey'] = setTablePrimaryKey.toMap();
    map['singleColumnChange'] = singleColumnChange.toMap();
    map['singleEntityRename'] = singleEntityRename.toMap();
    map['singlePackageChange'] = singlePackageChange.toMap();
    map['sourceSqlChange'] = sourceSqlChange.toMap();
    map['state'] = state;
    return map;
  }

  factory GetMappingRuleResult.fromMap(Map<String, dynamic> map) {
    return GetMappingRuleResult(
      conditionalColumnSetValue: ConditionalColumnSetValueResponse.fromMap(
          (map['conditionalColumnSetValue'] as Map).cast<String, dynamic>()),
      convertRowidColumn: ConvertRowIdToColumnResponse.fromMap(
          (map['convertRowidColumn'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      entityMove: EntityMoveResponse.fromMap(
          (map['entityMove'] as Map).cast<String, dynamic>()),
      filter: MappingRuleFilterResponse.fromMap(
          (map['filter'] as Map).cast<String, dynamic>()),
      filterTableColumns: FilterTableColumnsResponse.fromMap(
          (map['filterTableColumns'] as Map).cast<String, dynamic>()),
      multiColumnDataTypeChange: MultiColumnDatatypeChangeResponse.fromMap(
          (map['multiColumnDataTypeChange'] as Map).cast<String, dynamic>()),
      multiEntityRename: MultiEntityRenameResponse.fromMap(
          (map['multiEntityRename'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      revisionCreateTime: map['revisionCreateTime'] as String,
      revisionId: map['revisionId'] as String,
      ruleOrder: map['ruleOrder'] as String,
      ruleScope: map['ruleScope'] as String,
      setTablePrimaryKey: SetTablePrimaryKeyResponse.fromMap(
          (map['setTablePrimaryKey'] as Map).cast<String, dynamic>()),
      singleColumnChange: SingleColumnChangeResponse.fromMap(
          (map['singleColumnChange'] as Map).cast<String, dynamic>()),
      singleEntityRename: SingleEntityRenameResponse.fromMap(
          (map['singleEntityRename'] as Map).cast<String, dynamic>()),
      singlePackageChange: SinglePackageChangeResponse.fromMap(
          (map['singlePackageChange'] as Map).cast<String, dynamic>()),
      sourceSqlChange: SourceSqlChangeResponse.fromMap(
          (map['sourceSqlChange'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}
