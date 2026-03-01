// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// Workspace Description
  final pulumi.Input<String>? description;
  /// Is Development Environment Enabled
  final pulumi.Input<bool>? devEnvironmentEnabled;
  /// Is Development Role Disabled
  final pulumi.Input<bool>? devRoleDisabled;
  /// Workspace Display Name
  final pulumi.Input<String>? displayName;
  /// Create PAI Workspace Together
  final pulumi.Input<bool>? paiTaskEnabled;
  /// Workspace Name
  final pulumi.Input<String>? projectName;
  /// Aliyun Resource Group Id
  final pulumi.Input<String>? resourceGroupId;
  /// Workspace Status
  final pulumi.Input<String>? status;
  /// Aliyun Resource Tag
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProjectState].
  /// [description] Workspace Description
  /// [devEnvironmentEnabled] Is Development Environment Enabled
  /// [devRoleDisabled] Is Development Role Disabled
  /// [displayName] Workspace Display Name
  /// [paiTaskEnabled] Create PAI Workspace Together
  /// [projectName] Workspace Name
  /// [resourceGroupId] Aliyun Resource Group Id
  /// [status] Workspace Status
  /// [tags] Aliyun Resource Tag
  ProjectState({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? devEnvironmentEnabled,
    pulumi.Output<bool>? devRoleDisabled,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? paiTaskEnabled,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      devEnvironmentEnabled = pulumi.Input.asOptionalInput<bool>(devEnvironmentEnabled),
      devRoleDisabled = pulumi.Input.asOptionalInput<bool>(devRoleDisabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      paiTaskEnabled = pulumi.Input.asOptionalInput<bool>(paiTaskEnabled),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'devEnvironmentEnabled': ?devEnvironmentEnabled,
      'devRoleDisabled': ?devRoleDisabled,
      'displayName': ?displayName,
      'paiTaskEnabled': ?paiTaskEnabled,
      'projectName': ?projectName,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      devEnvironmentEnabled: map['devEnvironmentEnabled'] == null ? null : pulumi.Output.create<bool>(map['devEnvironmentEnabled'] as bool),
      devRoleDisabled: map['devRoleDisabled'] == null ? null : pulumi.Output.create<bool>(map['devRoleDisabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      paiTaskEnabled: map['paiTaskEnabled'] == null ? null : pulumi.Output.create<bool>(map['paiTaskEnabled'] as bool),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

