// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plan_association_rules_config_info.dart';

/// Result data returned by getBackupPlanAssociation.
class GetBackupPlanAssociationResult {
  final String backupPlan;
  final String backupPlanAssociationId;
  final String createTime;
  final String dataSource;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String lastSuccessfulBackupConsistencyTime;
  final String location;
  final String name;
  final String? project;
  final String resource;
  final String resourceType;
  final List<GetBackupPlanAssociationRulesConfigInfo> rulesConfigInfos;
  final String updateTime;

  /// Creates a new [GetBackupPlanAssociationResult].
  /// [backupPlan] Required.
  /// [backupPlanAssociationId] Required.
  /// [createTime] Required.
  /// [dataSource] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastSuccessfulBackupConsistencyTime] Required.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [resource] Required.
  /// [resourceType] Required.
  /// [rulesConfigInfos] Required.
  /// [updateTime] Required.
  GetBackupPlanAssociationResult({
    required this.backupPlan,
    required this.backupPlanAssociationId,
    required this.createTime,
    required this.dataSource,
    required this.id,
    required this.lastSuccessfulBackupConsistencyTime,
    required this.location,
    required this.name,
    this.project,
    required this.resource,
    required this.resourceType,
    required this.rulesConfigInfos,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'backupPlanAssociationId': backupPlanAssociationId,
      'createTime': createTime,
      'dataSource': dataSource,
      'id': id,
      'lastSuccessfulBackupConsistencyTime': lastSuccessfulBackupConsistencyTime,
      'location': location,
      'name': name,
      'project': ?project,
      'resource': resource,
      'resourceType': resourceType,
      'rulesConfigInfos': pulumi.Input.encodeList<GetBackupPlanAssociationRulesConfigInfo, Map<String, dynamic>>(rulesConfigInfos, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetBackupPlanAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationResult(
      backupPlan: map['backupPlan'] as String,
      backupPlanAssociationId: map['backupPlanAssociationId'] as String,
      createTime: map['createTime'] as String,
      dataSource: map['dataSource'] as String,
      id: map['id'] as String,
      lastSuccessfulBackupConsistencyTime: map['lastSuccessfulBackupConsistencyTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resource: map['resource'] as String,
      resourceType: map['resourceType'] as String,
      rulesConfigInfos: pulumi.Input.decodeList<GetBackupPlanAssociationRulesConfigInfo>(map['rulesConfigInfos'], (value) => GetBackupPlanAssociationRulesConfigInfo.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}

