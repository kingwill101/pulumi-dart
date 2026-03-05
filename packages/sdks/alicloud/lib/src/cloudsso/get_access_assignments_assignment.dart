// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessAssignmentsAssignment {
  /// Access configuration ID.
  final pulumi.Input<String> accessConfigurationId;
  /// The name of the access configuration.
  final pulumi.Input<String> accessConfigurationName;
  /// Directory ID.
  final pulumi.Input<String> directoryId;
  /// The ID of the Access Assignment.
  final pulumi.Input<String> id;
  /// The ID of the access assignment.
  final pulumi.Input<String> principalId;
  /// Cloud SSO identity name.
  final pulumi.Input<String> principalName;
  /// Create the identity type of the access assignment, which can be a user or a user group.
  final pulumi.Input<String> principalType;
  /// The ID of the target to create the resource range.
  final pulumi.Input<String> targetId;
  /// Task target name.
  final pulumi.Input<String> targetName;
  /// The path name of the task target in the resource directory.
  final pulumi.Input<String> targetPathName;
  /// The type of the resource range target to be accessed. Only a single RD primary account or member account can be specified in the first phase.
  final pulumi.Input<String> targetType;

  /// Creates a new [GetAccessAssignmentsAssignment].
  /// [accessConfigurationId] Access configuration ID.
  /// [accessConfigurationName] The name of the access configuration.
  /// [directoryId] Directory ID.
  /// [id] The ID of the Access Assignment.
  /// [principalId] The ID of the access assignment.
  /// [principalName] Cloud SSO identity name.
  /// [principalType] Create the identity type of the access assignment, which can be a user or a user group.
  /// [targetId] The ID of the target to create the resource range.
  /// [targetName] Task target name.
  /// [targetPathName] The path name of the task target in the resource directory.
  /// [targetType] The type of the resource range target to be accessed. Only a single RD primary account or member account can be specified in the first phase.
  GetAccessAssignmentsAssignment({
    required this.accessConfigurationId,
    required this.accessConfigurationName,
    required this.directoryId,
    required this.id,
    required this.principalId,
    required this.principalName,
    required this.principalType,
    required this.targetId,
    required this.targetName,
    required this.targetPathName,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': accessConfigurationId,
      'accessConfigurationName': accessConfigurationName,
      'directoryId': directoryId,
      'id': id,
      'principalId': principalId,
      'principalName': principalName,
      'principalType': principalType,
      'targetId': targetId,
      'targetName': targetName,
      'targetPathName': targetPathName,
      'targetType': targetType,
    };
  }

  factory GetAccessAssignmentsAssignment.fromMap(Map<String, dynamic> map) {
    return GetAccessAssignmentsAssignment(
      accessConfigurationId: pulumi.Input.fromValue(map['accessConfigurationId'] as String),
      accessConfigurationName: pulumi.Input.fromValue(map['accessConfigurationName'] as String),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalName: pulumi.Input.fromValue(map['principalName'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
      targetPathName: pulumi.Input.fromValue(map['targetPathName'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}

