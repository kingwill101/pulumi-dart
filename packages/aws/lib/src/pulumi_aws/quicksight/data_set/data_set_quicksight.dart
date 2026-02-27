import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_set_column_group/data_set_column_group.dart';
import '../data_set_column_level_permission_rule/data_set_column_level_permission_rule.dart';
import '../data_set_data_set_usage_configuration/data_set_data_set_usage_configuration.dart';
import '../data_set_field_folder/data_set_field_folder.dart';
import '../data_set_logical_table_map/data_set_logical_table_map.dart';
import '../data_set_output_column/data_set_output_column.dart';
import '../data_set_permission/data_set_permission.dart';
import '../data_set_physical_table_map/data_set_physical_table_map.dart';
import '../data_set_refresh_properties/data_set_refresh_properties.dart';
import '../data_set_row_level_permission_data_set/data_set_row_level_permission_data_set.dart';
import '../data_set_row_level_permission_tag_configuration/data_set_row_level_permission_tag_configuration.dart';
import 'data_set_quicksight_args.dart';

/// Resource for managing a QuickSight Data Set.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With use_as
///
///
///
/// ### With Column Level Permission Rules
///
///
///
/// ### With Field Folders
///
///
///
/// ### With Permissions
///
///
///
/// ### With Row Level Permission Tag Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Data Set using the AWS account ID and data set ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/dataSet:DataSet example 123456789012,example-id
/// ```
class DataSetQuicksight extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the data set.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported. See column_groups.
  late final pulumi.Output<List<DataSetColumnGroup>?> columnGroups;

  /// A set of 1 or more definitions of a [ColumnLevelPermissionRule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html). See column_level_permission_rules.
  late final pulumi.Output<List<DataSetColumnLevelPermissionRule>?>
      columnLevelPermissionRules;

  /// Identifier for the data set.
  late final pulumi.Output<String> dataSetId;

  /// The usage configuration to apply to child datasets that reference this dataset as a source. See data_set_usage_configuration.
  late final pulumi.Output<DataSetDataSetUsageConfiguration>
      dataSetUsageConfiguration;

  /// The folder that contains fields and nested subfolders for your dataset. See field_folders.
  late final pulumi.Output<List<DataSetFieldFolder>?> fieldFolders;

  /// Indicates whether you want to import the data into SPICE. Valid values are `SPICE` and `DIRECT_QUERY`.
  late final pulumi.Output<String> importMode;

  /// Configures the combination and transformation of the data from the physical tables. Maximum of 1 entry. See logical_table_map.
  late final pulumi.Output<List<DataSetLogicalTableMap>> logicalTableMaps;

  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// The final set of columns available for use in analyses and dashboards after all data preparation and transformation steps have been applied within the data set.  See `output_columns` Block below.
  late final pulumi.Output<List<DataSetOutputColumn>> outputColumns;

  /// A set of resource permissions on the data source. Maximum of 64 items. See permissions.
  late final pulumi.Output<List<DataSetPermission>?> permissions;

  /// Declares the physical tables that are available in the underlying data sources. See physical_table_map.
  late final pulumi.Output<List<DataSetPhysicalTableMap>?> physicalTableMaps;

  /// The refresh properties for the data set. **NOTE**: Only valid when `import_mode` is set to `SPICE`. See refresh_properties.
  late final pulumi.Output<DataSetRefreshProperties?> refreshProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The row-level security configuration for the data that you want to create. See row_level_permission_data_set.
  late final pulumi.Output<DataSetRowLevelPermissionDataSet?>
      rowLevelPermissionDataSet;

  /// The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only. See row_level_permission_tag_configuration.
  late final pulumi.Output<DataSetRowLevelPermissionTagConfiguration?>
      rowLevelPermissionTagConfiguration;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specifies the purpose of the data set. The only valid value is `RLS_RULES`, which designates this data set as a Row Level Security (RLS) rules dataset. An RLS rules dataset is used to control access to data at the row level in QuickSight analyses and dashboards. See the [AWS documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSet.html#API_CreateDataSet_RequestSyntax) for details.
  late final pulumi.Output<String?> useAs;

  DataSetQuicksight(
    String name, {
    DataSetQuicksightArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/dataSet:DataSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.columnGroups =
        registerOutput<List<DataSetColumnGroup>?>('columnGroups');
    this.columnLevelPermissionRules =
        registerOutput<List<DataSetColumnLevelPermissionRule>?>(
            'columnLevelPermissionRules');
    this.dataSetId = registerOutput<String>('dataSetId');
    this.dataSetUsageConfiguration =
        registerOutput<DataSetDataSetUsageConfiguration>(
            'dataSetUsageConfiguration');
    this.fieldFolders =
        registerOutput<List<DataSetFieldFolder>?>('fieldFolders');
    this.importMode = registerOutput<String>('importMode');
    this.logicalTableMaps =
        registerOutput<List<DataSetLogicalTableMap>>('logicalTableMaps');
    this.name = registerOutput<String>('name');
    this.outputColumns =
        registerOutput<List<DataSetOutputColumn>>('outputColumns');
    this.permissions = registerOutput<List<DataSetPermission>?>('permissions');
    this.physicalTableMaps =
        registerOutput<List<DataSetPhysicalTableMap>?>('physicalTableMaps');
    this.refreshProperties =
        registerOutput<DataSetRefreshProperties?>('refreshProperties');
    this.region = registerOutput<String>('region');
    this.rowLevelPermissionDataSet =
        registerOutput<DataSetRowLevelPermissionDataSet?>(
            'rowLevelPermissionDataSet');
    this.rowLevelPermissionTagConfiguration =
        registerOutput<DataSetRowLevelPermissionTagConfiguration?>(
            'rowLevelPermissionTagConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.useAs = registerOutput<String?>('useAs');
  }
}
