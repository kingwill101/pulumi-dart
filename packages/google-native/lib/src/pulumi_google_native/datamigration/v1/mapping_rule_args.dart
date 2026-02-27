// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_column_set_value.dart';
import 'convert_row_id_to_column.dart';
import 'entity_move.dart';
import 'filter_table_columns.dart';
import 'mapping_rule_filter.dart';
import 'mapping_rule_rule_scope.dart';
import 'mapping_rule_state.dart';
import 'multi_column_datatype_change.dart';
import 'multi_entity_rename.dart';
import 'set_table_primary_key.dart';
import 'single_column_change.dart';
import 'single_entity_rename.dart';
import 'single_package_change.dart';
import 'source_sql_change.dart';

/// The set of arguments for MappingRule.
class MappingRuleArgs {
  /// Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  final pulumi.Input<ConditionalColumnSetValue>? conditionalColumnSetValue;
  final pulumi.Input<String> conversionWorkspaceId;

  /// Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  final pulumi.Input<ConvertRowIdToColumn>? convertRowidColumn;

  /// Optional. A human readable name
  final pulumi.Input<String>? displayName;

  /// Optional. Rule to specify how multiple entities should be relocated into a different schema.
  final pulumi.Input<EntityMove>? entityMove;

  /// The rule filter
  final pulumi.Input<MappingRuleFilter> filter;

  /// Optional. Rule to specify the list of columns to include or exclude from a table.
  final pulumi.Input<FilterTableColumns>? filterTableColumns;
  final pulumi.Input<String>? location;

  /// Required. The ID of the rule to create.
  final pulumi.Input<String> mappingRuleId;

  /// Optional. Rule to specify how multiple columns should be converted to a different data type.
  final pulumi.Input<MultiColumnDatatypeChange>? multiColumnDataTypeChange;

  /// Optional. Rule to specify how multiple entities should be renamed.
  final pulumi.Input<MultiEntityRename>? multiEntityRename;

  /// Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  final pulumi.Input<String> ruleOrder;

  /// The rule scope
  final pulumi.Input<MappingRuleRuleScope> ruleScope;

  /// Optional. Rule to specify the primary key for a table
  final pulumi.Input<SetTablePrimaryKey>? setTablePrimaryKey;

  /// Optional. Rule to specify how a single column is converted.
  final pulumi.Input<SingleColumnChange>? singleColumnChange;

  /// Optional. Rule to specify how a single entity should be renamed.
  final pulumi.Input<SingleEntityRename>? singleEntityRename;

  /// Optional. Rule to specify how a single package is converted.
  final pulumi.Input<SinglePackageChange>? singlePackageChange;

  /// Optional. Rule to change the sql code for an entity, for example, function, procedure.
  final pulumi.Input<SourceSqlChange>? sourceSqlChange;

  /// Optional. The mapping rule state
  final pulumi.Input<MappingRuleState>? state;

  MappingRuleArgs({
    this.conditionalColumnSetValue,
    required this.conversionWorkspaceId,
    this.convertRowidColumn,
    this.displayName,
    this.entityMove,
    required this.filter,
    this.filterTableColumns,
    this.location,
    required this.mappingRuleId,
    this.multiColumnDataTypeChange,
    this.multiEntityRename,
    this.name,
    this.project,
    this.requestId,
    required this.ruleOrder,
    required this.ruleScope,
    this.setTablePrimaryKey,
    this.singleColumnChange,
    this.singleEntityRename,
    this.singlePackageChange,
    this.sourceSqlChange,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionalColumnSetValueValue = conditionalColumnSetValue;
    if (conditionalColumnSetValueValue != null) {
      map['conditionalColumnSetValue'] = pulumi.Input.mapOptionalInputValue<
              ConditionalColumnSetValue, Map<String, dynamic>>(
          conditionalColumnSetValueValue, (value) => value.toMap());
    }
    map['conversionWorkspaceId'] = conversionWorkspaceId;
    final convertRowidColumnValue = convertRowidColumn;
    if (convertRowidColumnValue != null) {
      map['convertRowidColumn'] = pulumi.Input.mapOptionalInputValue<
              ConvertRowIdToColumn, Map<String, dynamic>>(
          convertRowidColumnValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final entityMoveValue = entityMove;
    if (entityMoveValue != null) {
      map['entityMove'] =
          pulumi.Input.mapOptionalInputValue<EntityMove, Map<String, dynamic>>(
              entityMoveValue, (value) => value.toMap());
    }
    map['filter'] =
        pulumi.Input.mapInputValue<MappingRuleFilter, Map<String, dynamic>>(
            filter, (value) => value.toMap());
    final filterTableColumnsValue = filterTableColumns;
    if (filterTableColumnsValue != null) {
      map['filterTableColumns'] = pulumi.Input.mapOptionalInputValue<
              FilterTableColumns, Map<String, dynamic>>(
          filterTableColumnsValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['mappingRuleId'] = mappingRuleId;
    final multiColumnDataTypeChangeValue = multiColumnDataTypeChange;
    if (multiColumnDataTypeChangeValue != null) {
      map['multiColumnDataTypeChange'] = pulumi.Input.mapOptionalInputValue<
              MultiColumnDatatypeChange, Map<String, dynamic>>(
          multiColumnDataTypeChangeValue, (value) => value.toMap());
    }
    final multiEntityRenameValue = multiEntityRename;
    if (multiEntityRenameValue != null) {
      map['multiEntityRename'] = pulumi.Input.mapOptionalInputValue<
              MultiEntityRename, Map<String, dynamic>>(
          multiEntityRenameValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['ruleOrder'] = ruleOrder;
    map['ruleScope'] = pulumi.Input.mapInputValue<MappingRuleRuleScope, String>(
        ruleScope, (value) => value.value);
    final setTablePrimaryKeyValue = setTablePrimaryKey;
    if (setTablePrimaryKeyValue != null) {
      map['setTablePrimaryKey'] = pulumi.Input.mapOptionalInputValue<
              SetTablePrimaryKey, Map<String, dynamic>>(
          setTablePrimaryKeyValue, (value) => value.toMap());
    }
    final singleColumnChangeValue = singleColumnChange;
    if (singleColumnChangeValue != null) {
      map['singleColumnChange'] = pulumi.Input.mapOptionalInputValue<
              SingleColumnChange, Map<String, dynamic>>(
          singleColumnChangeValue, (value) => value.toMap());
    }
    final singleEntityRenameValue = singleEntityRename;
    if (singleEntityRenameValue != null) {
      map['singleEntityRename'] = pulumi.Input.mapOptionalInputValue<
              SingleEntityRename, Map<String, dynamic>>(
          singleEntityRenameValue, (value) => value.toMap());
    }
    final singlePackageChangeValue = singlePackageChange;
    if (singlePackageChangeValue != null) {
      map['singlePackageChange'] = pulumi.Input.mapOptionalInputValue<
              SinglePackageChange, Map<String, dynamic>>(
          singlePackageChangeValue, (value) => value.toMap());
    }
    final sourceSqlChangeValue = sourceSqlChange;
    if (sourceSqlChangeValue != null) {
      map['sourceSqlChange'] = pulumi.Input.mapOptionalInputValue<
          SourceSqlChange,
          Map<String, dynamic>>(sourceSqlChangeValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] =
          pulumi.Input.mapOptionalInputValue<MappingRuleState, String>(
              stateValue, (value) => value.value);
    }
    return map;
  }

  factory MappingRuleArgs.fromMap(Map<String, dynamic> map) {
    return MappingRuleArgs(
      conditionalColumnSetValue:
          pulumi.Input.asOptionalInput<ConditionalColumnSetValue>(
              map['conditionalColumnSetValue']),
      conversionWorkspaceId:
          pulumi.Input.asInput<String>(map['conversionWorkspaceId']),
      convertRowidColumn: pulumi.Input.asOptionalInput<ConvertRowIdToColumn>(
          map['convertRowidColumn']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      entityMove: pulumi.Input.asOptionalInput<EntityMove>(map['entityMove']),
      filter: pulumi.Input.asInput<MappingRuleFilter>(map['filter']),
      filterTableColumns: pulumi.Input.asOptionalInput<FilterTableColumns>(
          map['filterTableColumns']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mappingRuleId: pulumi.Input.asInput<String>(map['mappingRuleId']),
      multiColumnDataTypeChange:
          pulumi.Input.asOptionalInput<MultiColumnDatatypeChange>(
              map['multiColumnDataTypeChange']),
      multiEntityRename: pulumi.Input.asOptionalInput<MultiEntityRename>(
          map['multiEntityRename']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      ruleOrder: pulumi.Input.asInput<String>(map['ruleOrder']),
      ruleScope: pulumi.Input.asInput<MappingRuleRuleScope>(map['ruleScope']),
      setTablePrimaryKey: pulumi.Input.asOptionalInput<SetTablePrimaryKey>(
          map['setTablePrimaryKey']),
      singleColumnChange: pulumi.Input.asOptionalInput<SingleColumnChange>(
          map['singleColumnChange']),
      singleEntityRename: pulumi.Input.asOptionalInput<SingleEntityRename>(
          map['singleEntityRename']),
      singlePackageChange: pulumi.Input.asOptionalInput<SinglePackageChange>(
          map['singlePackageChange']),
      sourceSqlChange:
          pulumi.Input.asOptionalInput<SourceSqlChange>(map['sourceSqlChange']),
      state: pulumi.Input.asOptionalInput<MappingRuleState>(map['state']),
    );
  }
}
