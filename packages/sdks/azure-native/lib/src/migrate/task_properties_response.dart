// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Task Properties class.
class TaskPropertiesResponse {
  /// Task completion Date
  final pulumi.Input<String> completionDate;
  /// Task Description
  final pulumi.Input<String>? description;
  /// Task Dislay Name
  final pulumi.Input<String> displayName;
  /// Indicates whether the task is editable.
  final pulumi.Input<bool> isEditable;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Task Scope
  final pulumi.Input<String> scope;
  /// associated Wave Id
  final pulumi.Input<String> scopeId;
  /// Task Stage
  final pulumi.Input<String>? stage;
  /// Task Status
  final pulumi.Input<String> status;
  /// Task Type
  final pulumi.Input<String> taskType;

  /// Creates a new [TaskPropertiesResponse].
  /// [completionDate] Task completion Date
  /// [description] Task Description
  /// [displayName] Task Dislay Name
  /// [isEditable] Indicates whether the task is editable.
  /// [provisioningState] The status of the last operation.
  /// [scope] Task Scope
  /// [scopeId] associated Wave Id
  /// [stage] Task Stage
  /// [status] Task Status
  /// [taskType] Task Type
  TaskPropertiesResponse({
    required this.completionDate,
    this.description,
    required this.displayName,
    required this.isEditable,
    required this.provisioningState,
    required this.scope,
    required this.scopeId,
    this.stage,
    required this.status,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionDate': completionDate,
      'description': ?description,
      'displayName': displayName,
      'isEditable': isEditable,
      'provisioningState': provisioningState,
      'scope': scope,
      'scopeId': scopeId,
      'stage': ?stage,
      'status': status,
      'taskType': taskType,
    };
  }

  factory TaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TaskPropertiesResponse(
      completionDate: (map['completionDate'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      isEditable: (map['isEditable'] as bool).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      scope: (map['scope'] as String).input(),
      scopeId: (map['scopeId'] as String).input(),
      stage: map['stage'] == null ? null : (map['stage'] as String).input(),
      status: (map['status'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

