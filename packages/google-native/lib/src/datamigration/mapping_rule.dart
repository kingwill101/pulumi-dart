import 'package:pulumi/pulumi.dart' as pulumi;
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
class MappingRule extends pulumi.CustomResource {
  /// Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  late final pulumi.Output<ConditionalColumnSetValueResponse>
  conditionalColumnSetValue;
  late final pulumi.Output<String> conversionWorkspaceId;

  /// Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  late final pulumi.Output<ConvertRowIdToColumnResponse> convertRowidColumn;

  /// Optional. A human readable name
  late final pulumi.Output<String> displayName;

  /// Optional. Rule to specify how multiple entities should be relocated into a different schema.
  late final pulumi.Output<EntityMoveResponse> entityMove;

  /// The rule filter
  late final pulumi.Output<MappingRuleFilterResponse> filter;

  /// Optional. Rule to specify the list of columns to include or exclude from a table.
  late final pulumi.Output<FilterTableColumnsResponse> filterTableColumns;
  late final pulumi.Output<String> location;

  /// Required. The ID of the rule to create.
  late final pulumi.Output<String> mappingRuleId;

  /// Optional. Rule to specify how multiple columns should be converted to a different data type.
  late final pulumi.Output<MultiColumnDatatypeChangeResponse>
  multiColumnDataTypeChange;

  /// Optional. Rule to specify how multiple entities should be renamed.
  late final pulumi.Output<MultiEntityRenameResponse> multiEntityRename;

  /// Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;

  /// The timestamp that the revision was created.
  late final pulumi.Output<String> revisionCreateTime;

  /// The revision ID of the mapping rule. A new revision is committed whenever the mapping rule is changed in any way. The format is an 8-character hexadecimal string.
  late final pulumi.Output<String> revisionId;

  /// The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  late final pulumi.Output<String> ruleOrder;

  /// The rule scope
  late final pulumi.Output<String> ruleScope;

  /// Optional. Rule to specify the primary key for a table
  late final pulumi.Output<SetTablePrimaryKeyResponse> setTablePrimaryKey;

  /// Optional. Rule to specify how a single column is converted.
  late final pulumi.Output<SingleColumnChangeResponse> singleColumnChange;

  /// Optional. Rule to specify how a single entity should be renamed.
  late final pulumi.Output<SingleEntityRenameResponse> singleEntityRename;

  /// Optional. Rule to specify how a single package is converted.
  late final pulumi.Output<SinglePackageChangeResponse> singlePackageChange;

  /// Optional. Rule to change the sql code for an entity, for example, function, procedure.
  late final pulumi.Output<SourceSqlChangeResponse> sourceSqlChange;

  /// Optional. The mapping rule state
  late final pulumi.Output<String> state;

  /// Creates a new [MappingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MappingRule]. {@macro pulumi_datamigration_v1_mapping_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MappingRule(
    String name, {
    MappingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datamigration/v1:MappingRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.conditionalColumnSetValue =
        registerOutput<ConditionalColumnSetValueResponse>(
          'conditionalColumnSetValue',
        );
    this.conversionWorkspaceId = registerOutput<String>(
      'conversionWorkspaceId',
    );
    this.convertRowidColumn = registerOutput<ConvertRowIdToColumnResponse>(
      'convertRowidColumn',
    );
    this.displayName = registerOutput<String>('displayName');
    this.entityMove = registerOutput<EntityMoveResponse>('entityMove');
    this.filter = registerOutput<MappingRuleFilterResponse>('filter');
    this.filterTableColumns = registerOutput<FilterTableColumnsResponse>(
      'filterTableColumns',
    );
    this.location = registerOutput<String>('location');
    this.mappingRuleId = registerOutput<String>('mappingRuleId');
    this.multiColumnDataTypeChange =
        registerOutput<MultiColumnDatatypeChangeResponse>(
          'multiColumnDataTypeChange',
        );
    this.multiEntityRename = registerOutput<MultiEntityRenameResponse>(
      'multiEntityRename',
    );
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.ruleOrder = registerOutput<String>('ruleOrder');
    this.ruleScope = registerOutput<String>('ruleScope');
    this.setTablePrimaryKey = registerOutput<SetTablePrimaryKeyResponse>(
      'setTablePrimaryKey',
    );
    this.singleColumnChange = registerOutput<SingleColumnChangeResponse>(
      'singleColumnChange',
    );
    this.singleEntityRename = registerOutput<SingleEntityRenameResponse>(
      'singleEntityRename',
    );
    this.singlePackageChange = registerOutput<SinglePackageChangeResponse>(
      'singlePackageChange',
    );
    this.sourceSqlChange = registerOutput<SourceSqlChangeResponse>(
      'sourceSqlChange',
    );
    this.state = registerOutput<String>('state');
  }
}
