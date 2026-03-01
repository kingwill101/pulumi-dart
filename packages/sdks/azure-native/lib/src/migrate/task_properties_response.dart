// ignore_for_file: unused_element, unnecessary_cast


/// Task Properties class.
class TaskPropertiesResponse {
  /// Task completion Date
  final String completionDate;
  /// Task Description
  final String? description;
  /// Task Dislay Name
  final String displayName;
  /// Indicates whether the task is editable.
  final bool isEditable;
  /// The status of the last operation.
  final String provisioningState;
  /// Task Scope
  final String scope;
  /// associated Wave Id
  final String scopeId;
  /// Task Stage
  final String? stage;
  /// Task Status
  final String status;
  /// Task Type
  final String taskType;

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
      completionDate: map['completionDate'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      isEditable: map['isEditable'] as bool,
      provisioningState: map['provisioningState'] as String,
      scope: map['scope'] as String,
      scopeId: map['scopeId'] as String,
      stage: map['stage'] == null ? null : map['stage'] as String,
      status: map['status'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

