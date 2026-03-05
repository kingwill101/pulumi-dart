// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_column_group.dart';
import 'data_set_column_level_permission_rule.dart';
import 'data_set_data_set_usage_configuration.dart';
import 'data_set_field_folder.dart';
import 'data_set_logical_table_map.dart';
import 'data_set_permission.dart';
import 'data_set_physical_table_map.dart';
import 'data_set_refresh_properties.dart';
import 'data_set_row_level_permission_data_set.dart';
import 'data_set_row_level_permission_tag_configuration.dart';

/// {@template pulumi_quicksight_data_set_data_set_args_doc}
/// The set of arguments for DataSet.
/// {@endtemplate}
/// {@macro pulumi_quicksight_data_set_data_set_args_doc}
class DataSetArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported. See column_groups.
  final pulumi.Input<List<DataSetColumnGroup>>? columnGroups;
  /// A set of 1 or more definitions of a [ColumnLevelPermissionRule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html). See column_level_permission_rules.
  final pulumi.Input<List<DataSetColumnLevelPermissionRule>>? columnLevelPermissionRules;
  /// Identifier for the data set.
  final pulumi.Input<String> dataSetId;
  /// The usage configuration to apply to child datasets that reference this dataset as a source. See data_set_usage_configuration.
  final pulumi.Input<DataSetDataSetUsageConfiguration>? dataSetUsageConfiguration;
  /// The folder that contains fields and nested subfolders for your dataset. See field_folders.
  final pulumi.Input<List<DataSetFieldFolder>>? fieldFolders;
  /// Indicates whether you want to import the data into SPICE. Valid values are `SPICE` and `DIRECT_QUERY`.
  final pulumi.Input<String> importMode;
  /// Configures the combination and transformation of the data from the physical tables. Maximum of 1 entry. See logical_table_map.
  final pulumi.Input<List<DataSetLogicalTableMap>>? logicalTableMaps;
  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
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
  /// Specifies the purpose of the data set. The only valid value is `RLS_RULES`, which designates this data set as a Row Level Security (RLS) rules dataset. An RLS rules dataset is used to control access to data at the row level in QuickSight analyses and dashboards. See the [AWS documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSet.html#API_CreateDataSet_RequestSyntax) for details.
  final pulumi.Input<String>? useAs;

  /// Creates a new [DataSetArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [columnGroups] Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported. See column_groups.
  /// [columnLevelPermissionRules] A set of 1 or more definitions of a [ColumnLevelPermissionRule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html). See column_level_permission_rules.
  /// [dataSetId] Identifier for the data set.
  /// [dataSetUsageConfiguration] The usage configuration to apply to child datasets that reference this dataset as a source. See data_set_usage_configuration.
  /// [fieldFolders] The folder that contains fields and nested subfolders for your dataset. See field_folders.
  /// [importMode] Indicates whether you want to import the data into SPICE. Valid values are `SPICE` and `DIRECT_QUERY`.
  /// [logicalTableMaps] Configures the combination and transformation of the data from the physical tables. Maximum of 1 entry. See logical_table_map.
  /// [name] Display name for the dataset.
  /// [permissions] A set of resource permissions on the data source. Maximum of 64 items. See permissions.
  /// [physicalTableMaps] Declares the physical tables that are available in the underlying data sources. See physical_table_map.
  /// [refreshProperties] The refresh properties for the data set. **NOTE**: Only valid when `import_mode` is set to `SPICE`. See refresh_properties.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rowLevelPermissionDataSet] The row-level security configuration for the data that you want to create. See row_level_permission_data_set.
  /// [rowLevelPermissionTagConfiguration] The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only. See row_level_permission_tag_configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [useAs] Specifies the purpose of the data set. The only valid value is `RLS_RULES`, which designates this data set as a Row Level Security (RLS) rules dataset. An RLS rules dataset is used to control access to data at the row level in QuickSight analyses and dashboards. See the [AWS documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSet.html#API_CreateDataSet_RequestSyntax) for details.
  DataSetArgs({
    this.awsAccountId,
    this.columnGroups,
    this.columnLevelPermissionRules,
    required this.dataSetId,
    this.dataSetUsageConfiguration,
    this.fieldFolders,
    required this.importMode,
    this.logicalTableMaps,
    this.name,
    this.permissions,
    this.physicalTableMaps,
    this.refreshProperties,
    this.region,
    this.rowLevelPermissionDataSet,
    this.rowLevelPermissionTagConfiguration,
    this.tags,
    this.useAs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'columnGroups': ?pulumi.Input.mapOptionalInputValue<List<DataSetColumnGroup>, List<Map<String, dynamic>>>(columnGroups, (value) => pulumi.Input.encodeList<DataSetColumnGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'columnLevelPermissionRules': ?pulumi.Input.mapOptionalInputValue<List<DataSetColumnLevelPermissionRule>, List<Map<String, dynamic>>>(columnLevelPermissionRules, (value) => pulumi.Input.encodeList<DataSetColumnLevelPermissionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSetId': dataSetId,
      'dataSetUsageConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSetDataSetUsageConfiguration, Map<String, dynamic>>(dataSetUsageConfiguration, (value) => value.toMap()),
      'fieldFolders': ?pulumi.Input.mapOptionalInputValue<List<DataSetFieldFolder>, List<Map<String, dynamic>>>(fieldFolders, (value) => pulumi.Input.encodeList<DataSetFieldFolder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'importMode': importMode,
      'logicalTableMaps': ?pulumi.Input.mapOptionalInputValue<List<DataSetLogicalTableMap>, List<Map<String, dynamic>>>(logicalTableMaps, (value) => pulumi.Input.encodeList<DataSetLogicalTableMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<DataSetPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<DataSetPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'physicalTableMaps': ?pulumi.Input.mapOptionalInputValue<List<DataSetPhysicalTableMap>, List<Map<String, dynamic>>>(physicalTableMaps, (value) => pulumi.Input.encodeList<DataSetPhysicalTableMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'refreshProperties': ?pulumi.Input.mapOptionalInputValue<DataSetRefreshProperties, Map<String, dynamic>>(refreshProperties, (value) => value.toMap()),
      'region': ?region,
      'rowLevelPermissionDataSet': ?pulumi.Input.mapOptionalInputValue<DataSetRowLevelPermissionDataSet, Map<String, dynamic>>(rowLevelPermissionDataSet, (value) => value.toMap()),
      'rowLevelPermissionTagConfiguration': ?pulumi.Input.mapOptionalInputValue<DataSetRowLevelPermissionTagConfiguration, Map<String, dynamic>>(rowLevelPermissionTagConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'useAs': ?useAs,
    };
  }

  factory DataSetArgs.fromMap(Map<String, dynamic> map) {
    return DataSetArgs(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      columnGroups: (() { final guardedValue = map['columnGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetColumnGroup>(guardedValue, (value) => DataSetColumnGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      columnLevelPermissionRules: (() { final guardedValue = map['columnLevelPermissionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetColumnLevelPermissionRule>(guardedValue, (value) => DataSetColumnLevelPermissionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataSetId: pulumi.Input.fromValue(map['dataSetId'] as String),
      dataSetUsageConfiguration: (() { final guardedValue = map['dataSetUsageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetDataSetUsageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fieldFolders: (() { final guardedValue = map['fieldFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetFieldFolder>(guardedValue, (value) => DataSetFieldFolder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      importMode: pulumi.Input.fromValue(map['importMode'] as String),
      logicalTableMaps: (() { final guardedValue = map['logicalTableMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetLogicalTableMap>(guardedValue, (value) => DataSetLogicalTableMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetPermission>(guardedValue, (value) => DataSetPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      physicalTableMaps: (() { final guardedValue = map['physicalTableMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataSetPhysicalTableMap>(guardedValue, (value) => DataSetPhysicalTableMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      refreshProperties: (() { final guardedValue = map['refreshProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetRefreshProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowLevelPermissionDataSet: (() { final guardedValue = map['rowLevelPermissionDataSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetRowLevelPermissionDataSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rowLevelPermissionTagConfiguration: (() { final guardedValue = map['rowLevelPermissionTagConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSetRowLevelPermissionTagConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      useAs: (() { final guardedValue = map['useAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

