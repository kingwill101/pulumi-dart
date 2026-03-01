// ignore_for_file: unused_element, unnecessary_cast


class GetAccessAssignmentsAssignment {
  /// Access configuration ID.
  final String accessConfigurationId;
  /// The name of the access configuration.
  final String accessConfigurationName;
  /// Directory ID.
  final String directoryId;
  /// The ID of the Access Assignment.
  final String id;
  /// The ID of the access assignment.
  final String principalId;
  /// Cloud SSO identity name.
  final String principalName;
  /// Create the identity type of the access assignment, which can be a user or a user group.
  final String principalType;
  /// The ID of the target to create the resource range.
  final String targetId;
  /// Task target name.
  final String targetName;
  /// The path name of the task target in the resource directory.
  final String targetPathName;
  /// The type of the resource range target to be accessed. Only a single RD primary account or member account can be specified in the first phase.
  final String targetType;

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
      accessConfigurationId: map['accessConfigurationId'] as String,
      accessConfigurationName: map['accessConfigurationName'] as String,
      directoryId: map['directoryId'] as String,
      id: map['id'] as String,
      principalId: map['principalId'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      targetId: map['targetId'] as String,
      targetName: map['targetName'] as String,
      targetPathName: map['targetPathName'] as String,
      targetType: map['targetType'] as String,
    );
  }
}

