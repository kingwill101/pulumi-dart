// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_set_column_group/data_set_column_group.dart';
import '../data_set_column_level_permission_rule/data_set_column_level_permission_rule.dart';
import '../data_set_data_set_usage_configuration/data_set_data_set_usage_configuration.dart';
import '../data_set_field_folder/data_set_field_folder.dart';
import '../data_set_logical_table_map/data_set_logical_table_map.dart';
import '../data_set_permission/data_set_permission.dart';
import '../data_set_physical_table_map/data_set_physical_table_map.dart';
import '../data_set_refresh_properties/data_set_refresh_properties.dart';
import '../data_set_row_level_permission_data_set/data_set_row_level_permission_data_set.dart';
import '../data_set_row_level_permission_tag_configuration/data_set_row_level_permission_tag_configuration.dart';

/// The set of arguments for DataSet.
class DataSetArgs2 {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported. See column_groups.
  final Input<List<DataSetColumnGroup>>? columnGroups;

  /// A set of 1 or more definitions of a [ColumnLevelPermissionRule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html). See column_level_permission_rules.
  final Input<List<DataSetColumnLevelPermissionRule>>?
      columnLevelPermissionRules;

  /// Identifier for the data set.
  final Input<String> dataSetId;

  /// The usage configuration to apply to child datasets that reference this dataset as a source. See data_set_usage_configuration.
  final Input<DataSetDataSetUsageConfiguration>? dataSetUsageConfiguration;

  /// The folder that contains fields and nested subfolders for your dataset. See field_folders.
  final Input<List<DataSetFieldFolder>>? fieldFolders;

  /// Indicates whether you want to import the data into SPICE. Valid values are `SPICE` and `DIRECT_QUERY`.
  final Input<String> importMode;

  /// Configures the combination and transformation of the data from the physical tables. Maximum of 1 entry. See logical_table_map.
  final Input<List<DataSetLogicalTableMap>>? logicalTableMaps;

  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// A set of resource permissions on the data source. Maximum of 64 items. See permissions.
  final Input<List<DataSetPermission>>? permissions;

  /// Declares the physical tables that are available in the underlying data sources. See physical_table_map.
  final Input<List<DataSetPhysicalTableMap>>? physicalTableMaps;

  /// The refresh properties for the data set. **NOTE**: Only valid when `import_mode` is set to `SPICE`. See refresh_properties.
  final Input<DataSetRefreshProperties>? refreshProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The row-level security configuration for the data that you want to create. See row_level_permission_data_set.
  final Input<DataSetRowLevelPermissionDataSet>? rowLevelPermissionDataSet;

  /// The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only. See row_level_permission_tag_configuration.
  final Input<DataSetRowLevelPermissionTagConfiguration>?
      rowLevelPermissionTagConfiguration;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies the purpose of the data set. The only valid value is `RLS_RULES`, which designates this data set as a Row Level Security (RLS) rules dataset. An RLS rules dataset is used to control access to data at the row level in QuickSight analyses and dashboards. See the [AWS documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSet.html#API_CreateDataSet_RequestSyntax) for details.
  final Input<String>? useAs;

  DataSetArgs2({
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
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final columnGroupsValue = columnGroups;
    if (columnGroupsValue != null) {
      map['columnGroups'] = Input.mapOptionalInputValue<
              List<DataSetColumnGroup>, List<Map<String, dynamic>>>(
          columnGroupsValue,
          (value) => Input.encodeList<DataSetColumnGroup, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final columnLevelPermissionRulesValue = columnLevelPermissionRules;
    if (columnLevelPermissionRulesValue != null) {
      map['columnLevelPermissionRules'] = Input.mapOptionalInputValue<
              List<DataSetColumnLevelPermissionRule>,
              List<Map<String, dynamic>>>(
          columnLevelPermissionRulesValue,
          (value) => Input.encodeList<DataSetColumnLevelPermissionRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['dataSetId'] = dataSetId;
    final dataSetUsageConfigurationValue = dataSetUsageConfiguration;
    if (dataSetUsageConfigurationValue != null) {
      map['dataSetUsageConfiguration'] = Input.mapOptionalInputValue<
              DataSetDataSetUsageConfiguration, Map<String, dynamic>>(
          dataSetUsageConfigurationValue, (value) => value.toMap());
    }
    final fieldFoldersValue = fieldFolders;
    if (fieldFoldersValue != null) {
      map['fieldFolders'] = Input.mapOptionalInputValue<
              List<DataSetFieldFolder>, List<Map<String, dynamic>>>(
          fieldFoldersValue,
          (value) => Input.encodeList<DataSetFieldFolder, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['importMode'] = importMode;
    final logicalTableMapsValue = logicalTableMaps;
    if (logicalTableMapsValue != null) {
      map['logicalTableMaps'] = Input.mapOptionalInputValue<
              List<DataSetLogicalTableMap>, List<Map<String, dynamic>>>(
          logicalTableMapsValue,
          (value) =>
              Input.encodeList<DataSetLogicalTableMap, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = Input.mapOptionalInputValue<List<DataSetPermission>,
              List<Map<String, dynamic>>>(
          permissionsValue,
          (value) => Input.encodeList<DataSetPermission, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final physicalTableMapsValue = physicalTableMaps;
    if (physicalTableMapsValue != null) {
      map['physicalTableMaps'] = Input.mapOptionalInputValue<
              List<DataSetPhysicalTableMap>, List<Map<String, dynamic>>>(
          physicalTableMapsValue,
          (value) =>
              Input.encodeList<DataSetPhysicalTableMap, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final refreshPropertiesValue = refreshProperties;
    if (refreshPropertiesValue != null) {
      map['refreshProperties'] = Input.mapOptionalInputValue<
              DataSetRefreshProperties, Map<String, dynamic>>(
          refreshPropertiesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rowLevelPermissionDataSetValue = rowLevelPermissionDataSet;
    if (rowLevelPermissionDataSetValue != null) {
      map['rowLevelPermissionDataSet'] = Input.mapOptionalInputValue<
              DataSetRowLevelPermissionDataSet, Map<String, dynamic>>(
          rowLevelPermissionDataSetValue, (value) => value.toMap());
    }
    final rowLevelPermissionTagConfigurationValue =
        rowLevelPermissionTagConfiguration;
    if (rowLevelPermissionTagConfigurationValue != null) {
      map['rowLevelPermissionTagConfiguration'] = Input.mapOptionalInputValue<
              DataSetRowLevelPermissionTagConfiguration, Map<String, dynamic>>(
          rowLevelPermissionTagConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final useAsValue = useAs;
    if (useAsValue != null) {
      map['useAs'] = useAsValue;
    }
    return map;
  }

  factory DataSetArgs2.fromMap(Map<String, dynamic> map) {
    return DataSetArgs2(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      columnGroups:
          Input.asOptionalInput<List<DataSetColumnGroup>>(map['columnGroups']),
      columnLevelPermissionRules:
          Input.asOptionalInput<List<DataSetColumnLevelPermissionRule>>(
              map['columnLevelPermissionRules']),
      dataSetId: Input.asInput<String>(map['dataSetId']),
      dataSetUsageConfiguration:
          Input.asOptionalInput<DataSetDataSetUsageConfiguration>(
              map['dataSetUsageConfiguration']),
      fieldFolders:
          Input.asOptionalInput<List<DataSetFieldFolder>>(map['fieldFolders']),
      importMode: Input.asInput<String>(map['importMode']),
      logicalTableMaps: Input.asOptionalInput<List<DataSetLogicalTableMap>>(
          map['logicalTableMaps']),
      name: Input.asOptionalInput<String>(map['name']),
      permissions:
          Input.asOptionalInput<List<DataSetPermission>>(map['permissions']),
      physicalTableMaps: Input.asOptionalInput<List<DataSetPhysicalTableMap>>(
          map['physicalTableMaps']),
      refreshProperties: Input.asOptionalInput<DataSetRefreshProperties>(
          map['refreshProperties']),
      region: Input.asOptionalInput<String>(map['region']),
      rowLevelPermissionDataSet:
          Input.asOptionalInput<DataSetRowLevelPermissionDataSet>(
              map['rowLevelPermissionDataSet']),
      rowLevelPermissionTagConfiguration:
          Input.asOptionalInput<DataSetRowLevelPermissionTagConfiguration>(
              map['rowLevelPermissionTagConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      useAs: Input.asOptionalInput<String>(map['useAs']),
    );
  }
}
