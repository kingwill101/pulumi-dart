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
  const TaskPropertiesResponse({
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
      completionDate: pulumi.Input.fromValue(map['completionDate'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      isEditable: pulumi.Input.fromValue(map['isEditable'] as bool),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}

