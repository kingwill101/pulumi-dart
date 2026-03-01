// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_column_group.dart';
import 'data_set_column_level_permission_rule.dart';
import 'data_set_data_set_usage_configuration.dart';
import 'data_set_field_folder.dart';
import 'data_set_logical_table_map.dart';
import 'data_set_output_column.dart';
import 'data_set_permission.dart';
import 'data_set_physical_table_map.dart';
import 'data_set_refresh_properties.dart';
import 'data_set_row_level_permission_data_set.dart';
import 'data_set_row_level_permission_tag_configuration.dart';

/// Input properties used for looking up and filtering DataSet resources.
class DataSetState {
  /// Amazon Resource Name (ARN) of the data set.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported. See column_groups.
  final pulumi.Input<List<DataSetColumnGroup>>? columnGroups;
  /// A set of 1 or more definitions of a [ColumnLevelPermissionRule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html). See column_level_permission_rules.
  final pulumi.Input<List<DataSetColumnLevelPermissionRule>>? columnLevelPermissionRules;
  /// Identifier for the data set.
  final pulumi.Input<String>? dataSetId;
  /// The usage configuration to apply to child datasets that reference this dataset as a source. See data_set_usage_configuration.
  final pulumi.Input<DataSetDataSetUsageConfiguration>? dataSetUsageConfiguration;
  /// The folder that contains fields and nested subfolders for your dataset. See field_folders.
  final pulumi.Input<List<DataSetFieldFolder>>? fieldFolders;
  /// Indicates whether you want to import the data into SPICE. Valid values are `SPICE` and `DIRECT_QUERY`.
  final pulumi.Input<String>? importMode;
  /// Configures the combination and transformation of the data from the physical tables. Maximum of 1 entry. See logical_table_map.
  final pulumi.Input<List<DataSetLogicalTableMap>>? logicalTableMaps;
  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// The final set of columns available for use in analyses and dashboards after all data preparation and transformation steps have been applied within the data set.  See `output_columns` Block below.
  final pulumi.Input<List<DataSetOutputColumn>>? outputColumns;
  /// A set of resource permissions on the data source. Maximum of 64 items. See permissions.
  final pulumi.Input<List<DataSetPermission>>? permissions;
  /// Declares the physical tables that are available in the underlying data sources. See physical_table_map.
  final pulumi.Input<List<DataSetPhysicalTableMap>>? physicalTableMaps;
  /// The refresh properties for the data set. **NOTE**: Only valid when `import_mode` is set to `SPICE`. See refresh_properties.
  final pulumi.Input<DataSetRefreshProperties>? refreshProperties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The row-level security configuration for the data that you want to create. See row_level_permission_data_set.
  final pulumi.Input<DataSetRowLevelPermissionDataSet>? rowLevelPermissionDataSet;
  /// The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only. See row_level_permission_tag_configuration.
  final pulumi.Input<DataSetRowLevelPermissionTagConfiguration>? rowLevelPermissionTagConfiguration;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Specifies the purpose of the data set. The only valid value is `RLS_RULES`, which designates this data set as a Row Level Security (RLS) rules dataset. An RLS rules dataset is used to control access to data at the row level in QuickSight analyses and dashboards. See the [AWS documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSet.html#API_CreateDataSet_RequestSyntax) for details.
  final pulumi.Input<String>? useAs;

  /// Creates a new [DataSetState].
  /// [arn] Amazon Resource Name (ARN) of the data set.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [columnGroups] Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported. See column_groups.
  /// [columnLevelPermissionRules] A set of 1 or more definitions of a [ColumnLevelPermissionRule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html). See column_level_permission_rules.
  /// [dataSetId] Identifier for the data set.
  /// [dataSetUsageConfiguration] The usage configuration to apply to child datasets that reference this dataset as a source. See data_set_usage_configuration.
  /// [fieldFolders] The folder that contains fields and nested subfolders for your dataset. See field_folders.
  /// [importMode] Indicates whether you want to import the data into SPICE. Valid values are `SPICE` and `DIRECT_QUERY`.
  /// [logicalTableMaps] Configures the combination and transformation of the data from the physical tables. Maximum of 1 entry. See logical_table_map.
  /// [name] Display name for the dataset.
  /// [outputColumns] The final set of columns available for use in analyses and dashboards after all data preparation and transformation steps have been applied within the data set.  See `output_columns` Block below.
  /// [permissions] A set of resource permissions on the data source. Maximum of 64 items. See permissions.
  /// [physicalTableMaps] Declares the physical tables that are available in the underlying data sources. See physical_table_map.
  /// [refreshProperties] The refresh properties for the data set. **NOTE**: Only valid when `import_mode` is set to `SPICE`. See refresh_properties.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rowLevelPermissionDataSet] The row-level security configuration for the data that you want to create. See row_level_permission_data_set.
  /// [rowLevelPermissionTagConfiguration] The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only. See row_level_permission_tag_configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [useAs] Specifies the purpose of the data set. The only valid value is `RLS_RULES`, which designates this data set as a Row Level Security (RLS) rules dataset. An RLS rules dataset is used to control access to data at the row level in QuickSight analyses and dashboards. See the [AWS documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSet.html#API_CreateDataSet_RequestSyntax) for details.
  DataSetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<List<DataSetColumnGroup>>? columnGroups,
    pulumi.Output<List<DataSetColumnLevelPermissionRule>>? columnLevelPermissionRules,
    pulumi.Output<String>? dataSetId,
    pulumi.Output<DataSetDataSetUsageConfiguration>? dataSetUsageConfiguration,
    pulumi.Output<List<DataSetFieldFolder>>? fieldFolders,
    pulumi.Output<String>? importMode,
    pulumi.Output<List<DataSetLogicalTableMap>>? logicalTableMaps,
    pulumi.Output<String>? name,
    pulumi.Output<List<DataSetOutputColumn>>? outputColumns,
    pulumi.Output<List<DataSetPermission>>? permissions,
    pulumi.Output<List<DataSetPhysicalTableMap>>? physicalTableMaps,
    pulumi.Output<DataSetRefreshProperties>? refreshProperties,
    pulumi.Output<String>? region,
    pulumi.Output<DataSetRowLevelPermissionDataSet>? rowLevelPermissionDataSet,
    pulumi.Output<DataSetRowLevelPermissionTagConfiguration>? rowLevelPermissionTagConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? useAs,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      columnGroups = pulumi.Input.asOptionalInput<List<DataSetColumnGroup>>(columnGroups),
      columnLevelPermissionRules = pulumi.Input.asOptionalInput<List<DataSetColumnLevelPermissionRule>>(columnLevelPermissionRules),
      dataSetId = pulumi.Input.asOptionalInput<String>(dataSetId),
      dataSetUsageConfiguration = pulumi.Input.asOptionalInput<DataSetDataSetUsageConfiguration>(dataSetUsageConfiguration),
      fieldFolders = pulumi.Input.asOptionalInput<List<DataSetFieldFolder>>(fieldFolders),
      importMode = pulumi.Input.asOptionalInput<String>(importMode),
      logicalTableMaps = pulumi.Input.asOptionalInput<List<DataSetLogicalTableMap>>(logicalTableMaps),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputColumns = pulumi.Input.asOptionalInput<List<DataSetOutputColumn>>(outputColumns),
      permissions = pulumi.Input.asOptionalInput<List<DataSetPermission>>(permissions),
      physicalTableMaps = pulumi.Input.asOptionalInput<List<DataSetPhysicalTableMap>>(physicalTableMaps),
      refreshProperties = pulumi.Input.asOptionalInput<DataSetRefreshProperties>(refreshProperties),
      region = pulumi.Input.asOptionalInput<String>(region),
      rowLevelPermissionDataSet = pulumi.Input.asOptionalInput<DataSetRowLevelPermissionDataSet>(rowLevelPermissionDataSet),
      rowLevelPermissionTagConfiguration = pulumi.Input.asOptionalInput<DataSetRowLevelPermissionTagConfiguration>(rowLevelPermissionTagConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      useAs = pulumi.Input.asOptionalInput<String>(useAs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'columnGroups': ?pulumi.Input.mapOptionalInputValue<List<DataSetColumnGroup>, List<Map<String, dynamic>>>(columnGroups, (value) => pulumi.Input.encodeList<DataSetColumnGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columnLevelPermissionRules': ?pulumi.Input.mapOptionalInputValue<List<DataSetColumnLevelPermissionRule>, List<Map<String, dynamic>>>(columnLevelPermissionRules, (value) => pulumi.Input.encodeList<DataSetColumnLevelPermissionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSetId': ?dataSetId,
      'dataSetUsageConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSetDataSetUsageConfiguration, Map<String, dynamic>>(dataSetUsageConfiguration, (value) => value.toMap()),
      'fieldFolders': ?pulumi.Input.mapOptionalInputValue<List<DataSetFieldFolder>, List<Map<String, dynamic>>>(fieldFolders, (value) => pulumi.Input.encodeList<DataSetFieldFolder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'importMode': ?importMode,
      'logicalTableMaps': ?pulumi.Input.mapOptionalInputValue<List<DataSetLogicalTableMap>, List<Map<String, dynamic>>>(logicalTableMaps, (value) => pulumi.Input.encodeList<DataSetLogicalTableMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'outputColumns': ?pulumi.Input.mapOptionalInputValue<List<DataSetOutputColumn>, List<Map<String, dynamic>>>(outputColumns, (value) => pulumi.Input.encodeList<DataSetOutputColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<DataSetPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<DataSetPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'physicalTableMaps': ?pulumi.Input.mapOptionalInputValue<List<DataSetPhysicalTableMap>, List<Map<String, dynamic>>>(physicalTableMaps, (value) => pulumi.Input.encodeList<DataSetPhysicalTableMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'refreshProperties': ?pulumi.Input.mapOptionalInputValue<DataSetRefreshProperties, Map<String, dynamic>>(refreshProperties, (value) => value.toMap()),
      'region': ?region,
      'rowLevelPermissionDataSet': ?pulumi.Input.mapOptionalInputValue<DataSetRowLevelPermissionDataSet, Map<String, dynamic>>(rowLevelPermissionDataSet, (value) => value.toMap()),
      'rowLevelPermissionTagConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSetRowLevelPermissionTagConfiguration, Map<String, dynamic>>(rowLevelPermissionTagConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'useAs': ?useAs,
    };
  }

  factory DataSetState.fromMap(Map<String, dynamic> map) {
    return DataSetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      columnGroups: map['columnGroups'] == null ? null : pulumi.Output.create<List<DataSetColumnGroup>>(pulumi.Input.decodeList<DataSetColumnGroup>(map['columnGroups'], (value) => DataSetColumnGroup.fromMap((value as Map).cast<String, dynamic>()))),
      columnLevelPermissionRules: map['columnLevelPermissionRules'] == null ? null : pulumi.Output.create<List<DataSetColumnLevelPermissionRule>>(pulumi.Input.decodeList<DataSetColumnLevelPermissionRule>(map['columnLevelPermissionRules'], (value) => DataSetColumnLevelPermissionRule.fromMap((value as Map).cast<String, dynamic>()))),
      dataSetId: map['dataSetId'] == null ? null : pulumi.Output.create<String>(map['dataSetId'] as String),
      dataSetUsageConfiguration: map['dataSetUsageConfiguration'] == null ? null : pulumi.Output.create<DataSetDataSetUsageConfiguration>(DataSetDataSetUsageConfiguration.fromMap((map['dataSetUsageConfiguration'] as Map).cast<String, dynamic>())),
      fieldFolders: map['fieldFolders'] == null ? null : pulumi.Output.create<List<DataSetFieldFolder>>(pulumi.Input.decodeList<DataSetFieldFolder>(map['fieldFolders'], (value) => DataSetFieldFolder.fromMap((value as Map).cast<String, dynamic>()))),
      importMode: map['importMode'] == null ? null : pulumi.Output.create<String>(map['importMode'] as String),
      logicalTableMaps: map['logicalTableMaps'] == null ? null : pulumi.Output.create<List<DataSetLogicalTableMap>>(pulumi.Input.decodeList<DataSetLogicalTableMap>(map['logicalTableMaps'], (value) => DataSetLogicalTableMap.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputColumns: map['outputColumns'] == null ? null : pulumi.Output.create<List<DataSetOutputColumn>>(pulumi.Input.decodeList<DataSetOutputColumn>(map['outputColumns'], (value) => DataSetOutputColumn.fromMap((value as Map).cast<String, dynamic>()))),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<DataSetPermission>>(pulumi.Input.decodeList<DataSetPermission>(map['permissions'], (value) => DataSetPermission.fromMap((value as Map).cast<String, dynamic>()))),
      physicalTableMaps: map['physicalTableMaps'] == null ? null : pulumi.Output.create<List<DataSetPhysicalTableMap>>(pulumi.Input.decodeList<DataSetPhysicalTableMap>(map['physicalTableMaps'], (value) => DataSetPhysicalTableMap.fromMap((value as Map).cast<String, dynamic>()))),
      refreshProperties: map['refreshProperties'] == null ? null : pulumi.Output.create<DataSetRefreshProperties>(DataSetRefreshProperties.fromMap((map['refreshProperties'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rowLevelPermissionDataSet: map['rowLevelPermissionDataSet'] == null ? null : pulumi.Output.create<DataSetRowLevelPermissionDataSet>(DataSetRowLevelPermissionDataSet.fromMap((map['rowLevelPermissionDataSet'] as Map).cast<String, dynamic>())),
      rowLevelPermissionTagConfiguration: map['rowLevelPermissionTagConfiguration'] == null ? null : pulumi.Output.create<DataSetRowLevelPermissionTagConfiguration>(DataSetRowLevelPermissionTagConfiguration.fromMap((map['rowLevelPermissionTagConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      useAs: map['useAs'] == null ? null : pulumi.Output.create<String>(map['useAs'] as String),
    );
  }
}

