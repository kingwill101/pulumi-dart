// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_set_column_group.dart';
import 'get_data_set_column_level_permission_rule.dart';
import 'get_data_set_data_set_usage_configuration.dart';
import 'get_data_set_field_folder.dart';
import 'get_data_set_logical_table_map.dart';
import 'get_data_set_permission.dart';
import 'get_data_set_physical_table_map.dart';
import 'get_data_set_row_level_permission_data_set.dart';
import 'get_data_set_row_level_permission_tag_configuration.dart';

/// Result data returned by getDataSet.
class GetDataSetResult {
  final String? arn;
  final String? awsAccountId;
  final List<GetDataSetColumnGroup>? columnGroups;
  final List<GetDataSetColumnLevelPermissionRule>? columnLevelPermissionRules;
  final String? dataSetId;
  final List<GetDataSetDataSetUsageConfiguration>? dataSetUsageConfigurations;
  final List<GetDataSetFieldFolder>? fieldFolders;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? importMode;
  final List<GetDataSetLogicalTableMap>? logicalTableMaps;
  final String? name;
  final List<GetDataSetPermission>? permissions;
  final List<GetDataSetPhysicalTableMap>? physicalTableMaps;
  final String? region;
  final List<GetDataSetRowLevelPermissionDataSet>? rowLevelPermissionDataSets;
  final List<GetDataSetRowLevelPermissionTagConfiguration>? rowLevelPermissionTagConfigurations;
  final Map<String, String>? tags;

  /// Creates a new [GetDataSetResult].
  /// [arn] Optional.
  /// [awsAccountId] Optional.
  /// [columnGroups] Optional.
  /// [columnLevelPermissionRules] Optional.
  /// [dataSetId] Optional.
  /// [dataSetUsageConfigurations] Optional.
  /// [fieldFolders] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [importMode] Optional.
  /// [logicalTableMaps] Optional.
  /// [name] Optional.
  /// [permissions] Optional.
  /// [physicalTableMaps] Optional.
  /// [region] Optional.
  /// [rowLevelPermissionDataSets] Optional.
  /// [rowLevelPermissionTagConfigurations] Optional.
  /// [tags] Optional.
  const GetDataSetResult({
    this.arn,
    this.awsAccountId,
    this.columnGroups,
    this.columnLevelPermissionRules,
    this.dataSetId,
    this.dataSetUsageConfigurations,
    this.fieldFolders,
    this.id,
    this.importMode,
    this.logicalTableMaps,
    this.name,
    this.permissions,
    this.physicalTableMaps,
    this.region,
    this.rowLevelPermissionDataSets,
    this.rowLevelPermissionTagConfigurations,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'columnGroups': ?(() { final guardedValue = columnGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetColumnGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'columnLevelPermissionRules': ?(() { final guardedValue = columnLevelPermissionRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetColumnLevelPermissionRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataSetId': ?dataSetId,
      'dataSetUsageConfigurations': ?(() { final guardedValue = dataSetUsageConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetDataSetUsageConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fieldFolders': ?(() { final guardedValue = fieldFolders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetFieldFolder, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'importMode': ?importMode,
      'logicalTableMaps': ?(() { final guardedValue = logicalTableMaps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetLogicalTableMap, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'physicalTableMaps': ?(() { final guardedValue = physicalTableMaps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetPhysicalTableMap, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'rowLevelPermissionDataSets': ?(() { final guardedValue = rowLevelPermissionDataSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetRowLevelPermissionDataSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rowLevelPermissionTagConfigurations': ?(() { final guardedValue = rowLevelPermissionTagConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSetRowLevelPermissionTagConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetDataSetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      columnGroups: (() { final guardedValue = map['columnGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetColumnGroup>(guardedValue, (value) => GetDataSetColumnGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      columnLevelPermissionRules: (() { final guardedValue = map['columnLevelPermissionRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetColumnLevelPermissionRule>(guardedValue, (value) => GetDataSetColumnLevelPermissionRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataSetId: (() { final guardedValue = map['dataSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSetUsageConfigurations: (() { final guardedValue = map['dataSetUsageConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetDataSetUsageConfiguration>(guardedValue, (value) => GetDataSetDataSetUsageConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      fieldFolders: (() { final guardedValue = map['fieldFolders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetFieldFolder>(guardedValue, (value) => GetDataSetFieldFolder.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importMode: (() { final guardedValue = map['importMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logicalTableMaps: (() { final guardedValue = map['logicalTableMaps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetLogicalTableMap>(guardedValue, (value) => GetDataSetLogicalTableMap.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetPermission>(guardedValue, (value) => GetDataSetPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      physicalTableMaps: (() { final guardedValue = map['physicalTableMaps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetPhysicalTableMap>(guardedValue, (value) => GetDataSetPhysicalTableMap.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rowLevelPermissionDataSets: (() { final guardedValue = map['rowLevelPermissionDataSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetRowLevelPermissionDataSet>(guardedValue, (value) => GetDataSetRowLevelPermissionDataSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      rowLevelPermissionTagConfigurations: (() { final guardedValue = map['rowLevelPermissionTagConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSetRowLevelPermissionTagConfiguration>(guardedValue, (value) => GetDataSetRowLevelPermissionTagConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
