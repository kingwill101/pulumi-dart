// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_active_directory_app.dart';
import 'database_info.dart';
import 'mi_sql_connection_info.dart';

/// {@template pulumi_datamigration_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_datamigration_project_args_doc}
class ProjectArgs {
  /// Field that defines the Azure active directory application info, used to connect to the target Azure resource
  final pulumi.Input<AzureActiveDirectoryApp>? azureAuthenticationInfo;
  /// List of DatabaseInfo
  final pulumi.Input<List<DatabaseInfo>>? databasesInfo;
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  final pulumi.Input<String>? location;
  /// Name of the project
  final pulumi.Input<String>? projectName;
  /// Name of the service
  final pulumi.Input<String> serviceName;
  /// Information for connecting to source
  final pulumi.Input<MiSqlConnectionInfo>? sourceConnectionInfo;
  /// Source platform for the project
  final pulumi.Input<String> sourcePlatform;
  final pulumi.Input<Map<String, String>>? tags;
  /// Information for connecting to target
  final pulumi.Input<MiSqlConnectionInfo>? targetConnectionInfo;
  /// Target platform for the project
  final pulumi.Input<String> targetPlatform;

  /// Creates a new [ProjectArgs].
  /// [azureAuthenticationInfo] Field that defines the Azure active directory application info, used to connect to the target Azure resource
  /// [databasesInfo] List of DatabaseInfo
  /// [groupName] Name of the resource group
  /// [location] Optional.
  /// [projectName] Name of the project
  /// [serviceName] Name of the service
  /// [sourceConnectionInfo] Information for connecting to source
  /// [sourcePlatform] Source platform for the project
  /// [tags] Optional.
  /// [targetConnectionInfo] Information for connecting to target
  /// [targetPlatform] Target platform for the project
  ProjectArgs({
    this.azureAuthenticationInfo,
    this.databasesInfo,
    required this.groupName,
    this.location,
    this.projectName,
    required this.serviceName,
    this.sourceConnectionInfo,
    required this.sourcePlatform,
    this.tags,
    this.targetConnectionInfo,
    required this.targetPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAuthenticationInfo': ?pulumi.Input.mapOptionalInputValue<AzureActiveDirectoryApp, Map<String, dynamic>>(azureAuthenticationInfo, (value) => value.toMap()),
      'databasesInfo': ?pulumi.Input.mapOptionalInputValue<List<DatabaseInfo>, List<Map<String, dynamic>>>(databasesInfo, (value) => pulumi.Input.encodeList<DatabaseInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupName': groupName,
      'location': ?location,
      'projectName': ?projectName,
      'serviceName': serviceName,
      'sourceConnectionInfo': ?pulumi.Input.mapOptionalInputValue<MiSqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'sourcePlatform': sourcePlatform,
      'tags': ?tags,
      'targetConnectionInfo': ?pulumi.Input.mapOptionalInputValue<MiSqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
      'targetPlatform': targetPlatform,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      azureAuthenticationInfo: map['azureAuthenticationInfo'] == null ? null : (AzureActiveDirectoryApp.fromMap((map['azureAuthenticationInfo']! as Map).cast<String, dynamic>())).input(),
      databasesInfo: map['databasesInfo'] == null ? null : (pulumi.Input.decodeList<DatabaseInfo>(map['databasesInfo']!, (value) => DatabaseInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      groupName: (map['groupName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName']! as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      sourceConnectionInfo: map['sourceConnectionInfo'] == null ? null : (MiSqlConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())).input(),
      sourcePlatform: (map['sourcePlatform'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetConnectionInfo: map['targetConnectionInfo'] == null ? null : (MiSqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())).input(),
      targetPlatform: (map['targetPlatform'] as String).input(),
    );
  }
}

