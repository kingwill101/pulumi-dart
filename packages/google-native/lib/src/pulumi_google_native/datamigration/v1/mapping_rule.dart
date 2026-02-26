import 'package:pulumi/pulumi.dart';
import 'conditional_column_set_value_response.dart';
import 'convert_row_id_to_column_response.dart';
import 'entity_move_response.dart';
import 'filter_table_columns_response.dart';
import 'mapping_rule_args.dart';
import 'mapping_rule_filter_response.dart';
import 'multi_column_datatype_change_response.dart';
import 'multi_entity_rename_response.dart';
import 'set_table_primary_key_response.dart';
import 'single_column_change_response.dart';
import 'single_entity_rename_response.dart';
import 'single_package_change_response.dart';
import 'source_sql_change_response.dart';

/// Creates a new mapping rule for a given conversion workspace.
class MappingRule extends CustomResource {
  /// Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  late final Output<ConditionalColumnSetValueResponse>
      conditionalColumnSetValue;
  late final Output<String> conversionWorkspaceId;

  /// Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  late final Output<ConvertRowIdToColumnResponse> convertRowidColumn;

  /// Optional. A human readable name
  late final Output<String> displayName;

  /// Optional. Rule to specify how multiple entities should be relocated into a different schema.
  late final Output<EntityMoveResponse> entityMove;

  /// The rule filter
  late final Output<MappingRuleFilterResponse> filter;

  /// Optional. Rule to specify the list of columns to include or exclude from a table.
  late final Output<FilterTableColumnsResponse> filterTableColumns;
  late final Output<String> location;

  /// Required. The ID of the rule to create.
  late final Output<String> mappingRuleId;

  /// Optional. Rule to specify how multiple columns should be converted to a different data type.
  late final Output<MultiColumnDatatypeChangeResponse>
      multiColumnDataTypeChange;

  /// Optional. Rule to specify how multiple entities should be renamed.
  late final Output<MultiEntityRenameResponse> multiEntityRename;

  /// Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  late final Output<String> name;
  late final Output<String> project;

  /// A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// The timestamp that the revision was created.
  late final Output<String> revisionCreateTime;

  /// The revision ID of the mapping rule. A new revision is committed whenever the mapping rule is changed in any way. The format is an 8-character hexadecimal string.
  late final Output<String> revisionId;

  /// The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  late final Output<String> ruleOrder;

  /// The rule scope
  late final Output<String> ruleScope;

  /// Optional. Rule to specify the primary key for a table
  late final Output<SetTablePrimaryKeyResponse> setTablePrimaryKey;

  /// Optional. Rule to specify how a single column is converted.
  late final Output<SingleColumnChangeResponse> singleColumnChange;

  /// Optional. Rule to specify how a single entity should be renamed.
  late final Output<SingleEntityRenameResponse> singleEntityRename;

  /// Optional. Rule to specify how a single package is converted.
  late final Output<SinglePackageChangeResponse> singlePackageChange;

  /// Optional. Rule to change the sql code for an entity, for example, function, procedure.
  late final Output<SourceSqlChangeResponse> sourceSqlChange;

  /// Optional. The mapping rule state
  late final Output<String> state;

  MappingRule(
    String name, {
    MappingRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1:MappingRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.conditionalColumnSetValue =
        Output.createUnknown<ConditionalColumnSetValueResponse>();
    this.conversionWorkspaceId = Output.createUnknown<String>();
    this.convertRowidColumn =
        Output.createUnknown<ConvertRowIdToColumnResponse>();
    this.displayName = Output.createUnknown<String>();
    this.entityMove = Output.createUnknown<EntityMoveResponse>();
    this.filter = Output.createUnknown<MappingRuleFilterResponse>();
    this.filterTableColumns =
        Output.createUnknown<FilterTableColumnsResponse>();
    this.location = Output.createUnknown<String>();
    this.mappingRuleId = Output.createUnknown<String>();
    this.multiColumnDataTypeChange =
        Output.createUnknown<MultiColumnDatatypeChangeResponse>();
    this.multiEntityRename = Output.createUnknown<MultiEntityRenameResponse>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.revisionCreateTime = Output.createUnknown<String>();
    this.revisionId = Output.createUnknown<String>();
    this.ruleOrder = Output.createUnknown<String>();
    this.ruleScope = Output.createUnknown<String>();
    this.setTablePrimaryKey =
        Output.createUnknown<SetTablePrimaryKeyResponse>();
    this.singleColumnChange =
        Output.createUnknown<SingleColumnChangeResponse>();
    this.singleEntityRename =
        Output.createUnknown<SingleEntityRenameResponse>();
    this.singlePackageChange =
        Output.createUnknown<SinglePackageChangeResponse>();
    this.sourceSqlChange = Output.createUnknown<SourceSqlChangeResponse>();
    this.state = Output.createUnknown<String>();
  }
}
