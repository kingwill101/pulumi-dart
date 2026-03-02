// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataworks_project_project_args_doc}
/// The set of arguments for Project.
/// {@endtemplate}
/// {@macro pulumi_dataworks_project_project_args_doc}
class ProjectArgs {
  /// Workspace Description
  final pulumi.Input<String>? description;
  /// Is Development Environment Enabled
  final pulumi.Input<bool>? devEnvironmentEnabled;
  /// Is Development Role Disabled
  final pulumi.Input<bool>? devRoleDisabled;
  /// Workspace Display Name
  final pulumi.Input<String> displayName;
  /// Create PAI Workspace Together
  final pulumi.Input<bool> paiTaskEnabled;
  /// Workspace Name
  final pulumi.Input<String> projectName;
  /// Aliyun Resource Group Id
  final pulumi.Input<String>? resourceGroupId;
  /// Workspace Status
  final pulumi.Input<String>? status;
  /// Aliyun Resource Tag
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectArgs].
  /// [description] Workspace Description
  /// [devEnvironmentEnabled] Is Development Environment Enabled
  /// [devRoleDisabled] Is Development Role Disabled
  /// [displayName] Workspace Display Name
  /// [paiTaskEnabled] Create PAI Workspace Together
  /// [projectName] Workspace Name
  /// [resourceGroupId] Aliyun Resource Group Id
  /// [status] Workspace Status
  /// [tags] Aliyun Resource Tag
  ProjectArgs({
    this.description,
    this.devEnvironmentEnabled,
    this.devRoleDisabled,
    required this.displayName,
    required this.paiTaskEnabled,
    required this.projectName,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'devEnvironmentEnabled': ?devEnvironmentEnabled,
      'devRoleDisabled': ?devRoleDisabled,
      'displayName': displayName,
      'paiTaskEnabled': paiTaskEnabled,
      'projectName': projectName,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ProjectArgs.fromMap(Map<String, dynamic> map) {
    return ProjectArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      devEnvironmentEnabled: map['devEnvironmentEnabled'] == null ? null : (map['devEnvironmentEnabled'] as bool).input(),
      devRoleDisabled: map['devRoleDisabled'] == null ? null : (map['devRoleDisabled'] as bool).input(),
      displayName: (map['displayName'] as String).input(),
      paiTaskEnabled: (map['paiTaskEnabled'] as bool).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

