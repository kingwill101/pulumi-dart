// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_data_set_column_group/get_data_set_column_group.dart';
import '../get_data_set_column_level_permission_rule/get_data_set_column_level_permission_rule.dart';
import '../get_data_set_data_set_usage_configuration/get_data_set_data_set_usage_configuration.dart';
import '../get_data_set_field_folder/get_data_set_field_folder.dart';
import '../get_data_set_logical_table_map/get_data_set_logical_table_map.dart';
import '../get_data_set_permission/get_data_set_permission.dart';
import '../get_data_set_physical_table_map/get_data_set_physical_table_map.dart';
import '../get_data_set_row_level_permission_data_set/get_data_set_row_level_permission_data_set.dart';
import '../get_data_set_row_level_permission_tag_configuration/get_data_set_row_level_permission_tag_configuration.dart';

/// Result data returned by getDataSet.
class GetDataSetResult {
  final String arn;
  final String awsAccountId;
  final List<GetDataSetColumnGroup> columnGroups;
  final List<GetDataSetColumnLevelPermissionRule> columnLevelPermissionRules;
  final String dataSetId;
  final List<GetDataSetDataSetUsageConfiguration> dataSetUsageConfigurations;
  final List<GetDataSetFieldFolder> fieldFolders;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String importMode;
  final List<GetDataSetLogicalTableMap> logicalTableMaps;
  final String name;
  final List<GetDataSetPermission> permissions;
  final List<GetDataSetPhysicalTableMap> physicalTableMaps;
  final String region;
  final List<GetDataSetRowLevelPermissionDataSet> rowLevelPermissionDataSets;
  final List<GetDataSetRowLevelPermissionTagConfiguration>
      rowLevelPermissionTagConfigurations;
  final Map<String, String> tags;

  GetDataSetResult({
    required this.arn,
    required this.awsAccountId,
    required this.columnGroups,
    required this.columnLevelPermissionRules,
    required this.dataSetId,
    required this.dataSetUsageConfigurations,
    required this.fieldFolders,
    required this.id,
    required this.importMode,
    required this.logicalTableMaps,
    required this.name,
    required this.permissions,
    required this.physicalTableMaps,
    required this.region,
    required this.rowLevelPermissionDataSets,
    required this.rowLevelPermissionTagConfigurations,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['awsAccountId'] = awsAccountId;
    map['columnGroups'] =
        Input.encodeList<GetDataSetColumnGroup, Map<String, dynamic>>(
            columnGroups, (value) => value.toMap());
    map['columnLevelPermissionRules'] = Input.encodeList<
            GetDataSetColumnLevelPermissionRule, Map<String, dynamic>>(
        columnLevelPermissionRules, (value) => value.toMap());
    map['dataSetId'] = dataSetId;
    map['dataSetUsageConfigurations'] = Input.encodeList<
            GetDataSetDataSetUsageConfiguration, Map<String, dynamic>>(
        dataSetUsageConfigurations, (value) => value.toMap());
    map['fieldFolders'] =
        Input.encodeList<GetDataSetFieldFolder, Map<String, dynamic>>(
            fieldFolders, (value) => value.toMap());
    map['id'] = id;
    map['importMode'] = importMode;
    map['logicalTableMaps'] =
        Input.encodeList<GetDataSetLogicalTableMap, Map<String, dynamic>>(
            logicalTableMaps, (value) => value.toMap());
    map['name'] = name;
    map['permissions'] =
        Input.encodeList<GetDataSetPermission, Map<String, dynamic>>(
            permissions, (value) => value.toMap());
    map['physicalTableMaps'] =
        Input.encodeList<GetDataSetPhysicalTableMap, Map<String, dynamic>>(
            physicalTableMaps, (value) => value.toMap());
    map['region'] = region;
    map['rowLevelPermissionDataSets'] = Input.encodeList<
            GetDataSetRowLevelPermissionDataSet, Map<String, dynamic>>(
        rowLevelPermissionDataSets, (value) => value.toMap());
    map['rowLevelPermissionTagConfigurations'] = Input.encodeList<
            GetDataSetRowLevelPermissionTagConfiguration, Map<String, dynamic>>(
        rowLevelPermissionTagConfigurations, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory GetDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetDataSetResult(
      arn: map['arn'] as String,
      awsAccountId: map['awsAccountId'] as String,
      columnGroups: Input.decodeList<GetDataSetColumnGroup>(
          map['columnGroups'],
          (value) => GetDataSetColumnGroup.fromMap(
              (value as Map).cast<String, dynamic>())),
      columnLevelPermissionRules:
          Input.decodeList<GetDataSetColumnLevelPermissionRule>(
              map['columnLevelPermissionRules'],
              (value) => GetDataSetColumnLevelPermissionRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataSetId: map['dataSetId'] as String,
      dataSetUsageConfigurations:
          Input.decodeList<GetDataSetDataSetUsageConfiguration>(
              map['dataSetUsageConfigurations'],
              (value) => GetDataSetDataSetUsageConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fieldFolders: Input.decodeList<GetDataSetFieldFolder>(
          map['fieldFolders'],
          (value) => GetDataSetFieldFolder.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      importMode: map['importMode'] as String,
      logicalTableMaps: Input.decodeList<GetDataSetLogicalTableMap>(
          map['logicalTableMaps'],
          (value) => GetDataSetLogicalTableMap.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      permissions: Input.decodeList<GetDataSetPermission>(
          map['permissions'],
          (value) => GetDataSetPermission.fromMap(
              (value as Map).cast<String, dynamic>())),
      physicalTableMaps: Input.decodeList<GetDataSetPhysicalTableMap>(
          map['physicalTableMaps'],
          (value) => GetDataSetPhysicalTableMap.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      rowLevelPermissionDataSets:
          Input.decodeList<GetDataSetRowLevelPermissionDataSet>(
              map['rowLevelPermissionDataSets'],
              (value) => GetDataSetRowLevelPermissionDataSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rowLevelPermissionTagConfigurations:
          Input.decodeList<GetDataSetRowLevelPermissionTagConfiguration>(
              map['rowLevelPermissionTagConfigurations'],
              (value) => GetDataSetRowLevelPermissionTagConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
