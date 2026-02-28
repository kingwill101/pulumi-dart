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

/// {@template pulumi_datamigration_v1_mapping_rule_args_doc}
/// The set of arguments for MappingRule.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_mapping_rule_args_doc}
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

  /// Creates a new [MappingRuleArgs].
  /// [conditionalColumnSetValue] Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  /// [conversionWorkspaceId] Required.
  /// [convertRowidColumn] Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  /// [displayName] Optional. A human readable name
  /// [entityMove] Optional. Rule to specify how multiple entities should be relocated into a different schema.
  /// [filter] The rule filter
  /// [filterTableColumns] Optional. Rule to specify the list of columns to include or exclude from a table.
  /// [location] Optional.
  /// [mappingRuleId] Required. The ID of the rule to create.
  /// [multiColumnDataTypeChange] Optional. Rule to specify how multiple columns should be converted to a different data type.
  /// [multiEntityRename] Optional. Rule to specify how multiple entities should be renamed.
  /// [name] Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  /// [project] Optional.
  /// [requestId] A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [ruleOrder] The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  /// [ruleScope] The rule scope
  /// [setTablePrimaryKey] Optional. Rule to specify the primary key for a table
  /// [singleColumnChange] Optional. Rule to specify how a single column is converted.
  /// [singleEntityRename] Optional. Rule to specify how a single entity should be renamed.
  /// [singlePackageChange] Optional. Rule to specify how a single package is converted.
  /// [sourceSqlChange] Optional. Rule to change the sql code for an entity, for example, function, procedure.
  /// [state] Optional. The mapping rule state
  MappingRuleArgs({
    ConditionalColumnSetValue? conditionalColumnSetValue,
    required String conversionWorkspaceId,
    ConvertRowIdToColumn? convertRowidColumn,
    String? displayName,
    EntityMove? entityMove,
    required MappingRuleFilter filter,
    FilterTableColumns? filterTableColumns,
    String? location,
    required String mappingRuleId,
    MultiColumnDatatypeChange? multiColumnDataTypeChange,
    MultiEntityRename? multiEntityRename,
    String? name,
    String? project,
    String? requestId,
    required String ruleOrder,
    required MappingRuleRuleScope ruleScope,
    SetTablePrimaryKey? setTablePrimaryKey,
    SingleColumnChange? singleColumnChange,
    SingleEntityRename? singleEntityRename,
    SinglePackageChange? singlePackageChange,
    SourceSqlChange? sourceSqlChange,
    MappingRuleState? state,
  })  : conditionalColumnSetValue =
            pulumi.Input.asOptionalInput<ConditionalColumnSetValue>(
                conditionalColumnSetValue),
        conversionWorkspaceId =
            pulumi.Input.asInput<String>(conversionWorkspaceId),
        convertRowidColumn = pulumi.Input.asOptionalInput<ConvertRowIdToColumn>(
            convertRowidColumn),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        entityMove = pulumi.Input.asOptionalInput<EntityMove>(entityMove),
        filter = pulumi.Input.asInput<MappingRuleFilter>(filter),
        filterTableColumns = pulumi.Input.asOptionalInput<FilterTableColumns>(
            filterTableColumns),
        location = pulumi.Input.asOptionalInput<String>(location),
        mappingRuleId = pulumi.Input.asInput<String>(mappingRuleId),
        multiColumnDataTypeChange =
            pulumi.Input.asOptionalInput<MultiColumnDatatypeChange>(
                multiColumnDataTypeChange),
        multiEntityRename =
            pulumi.Input.asOptionalInput<MultiEntityRename>(multiEntityRename),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        ruleOrder = pulumi.Input.asInput<String>(ruleOrder),
        ruleScope = pulumi.Input.asInput<MappingRuleRuleScope>(ruleScope),
        setTablePrimaryKey = pulumi.Input.asOptionalInput<SetTablePrimaryKey>(
            setTablePrimaryKey),
        singleColumnChange = pulumi.Input.asOptionalInput<SingleColumnChange>(
            singleColumnChange),
        singleEntityRename = pulumi.Input.asOptionalInput<SingleEntityRename>(
            singleEntityRename),
        singlePackageChange = pulumi.Input.asOptionalInput<SinglePackageChange>(
            singlePackageChange),
        sourceSqlChange =
            pulumi.Input.asOptionalInput<SourceSqlChange>(sourceSqlChange),
        state = pulumi.Input.asOptionalInput<MappingRuleState>(state);

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
      conditionalColumnSetValue: map['conditionalColumnSetValue'] == null
          ? null
          : ConditionalColumnSetValue.fromMap(
              (map['conditionalColumnSetValue'] as Map)
                  .cast<String, dynamic>()),
      conversionWorkspaceId: map['conversionWorkspaceId'] as String,
      convertRowidColumn: map['convertRowidColumn'] == null
          ? null
          : ConvertRowIdToColumn.fromMap(
              (map['convertRowidColumn'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      entityMove: map['entityMove'] == null
          ? null
          : EntityMove.fromMap(
              (map['entityMove'] as Map).cast<String, dynamic>()),
      filter: MappingRuleFilter.fromMap(
          (map['filter'] as Map).cast<String, dynamic>()),
      filterTableColumns: map['filterTableColumns'] == null
          ? null
          : FilterTableColumns.fromMap(
              (map['filterTableColumns'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      mappingRuleId: map['mappingRuleId'] as String,
      multiColumnDataTypeChange: map['multiColumnDataTypeChange'] == null
          ? null
          : MultiColumnDatatypeChange.fromMap(
              (map['multiColumnDataTypeChange'] as Map)
                  .cast<String, dynamic>()),
      multiEntityRename: map['multiEntityRename'] == null
          ? null
          : MultiEntityRename.fromMap(
              (map['multiEntityRename'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      ruleOrder: map['ruleOrder'] as String,
      ruleScope: MappingRuleRuleScope.fromValue(map['ruleScope'] as String),
      setTablePrimaryKey: map['setTablePrimaryKey'] == null
          ? null
          : SetTablePrimaryKey.fromMap(
              (map['setTablePrimaryKey'] as Map).cast<String, dynamic>()),
      singleColumnChange: map['singleColumnChange'] == null
          ? null
          : SingleColumnChange.fromMap(
              (map['singleColumnChange'] as Map).cast<String, dynamic>()),
      singleEntityRename: map['singleEntityRename'] == null
          ? null
          : SingleEntityRename.fromMap(
              (map['singleEntityRename'] as Map).cast<String, dynamic>()),
      singlePackageChange: map['singlePackageChange'] == null
          ? null
          : SinglePackageChange.fromMap(
              (map['singlePackageChange'] as Map).cast<String, dynamic>()),
      sourceSqlChange: map['sourceSqlChange'] == null
          ? null
          : SourceSqlChange.fromMap(
              (map['sourceSqlChange'] as Map).cast<String, dynamic>()),
      state: map['state'] == null
          ? null
          : MappingRuleState.fromValue(map['state'] as String),
    );
  }
}
