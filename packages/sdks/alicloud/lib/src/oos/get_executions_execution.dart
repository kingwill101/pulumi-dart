// ignore_for_file: unused_element, unnecessary_cast


class GetExecutionsExecution {
  /// The category of template. Valid: `AlarmTrigger`, `EventTrigger`, `Other` and `TimerTrigger`.
  final String category;
  /// The counters of OOS Execution.
  final String counters;
  /// The time when the execution was created.
  final String createDate;
  /// The time when the execution was ended.
  final String endDate;
  /// The user who execute the template.
  final String executedBy;
  /// ID of the OOS Executions.
  final String executionId;
  /// ID of the OOS Executions.
  final String id;
  /// Whether to include subtasks.
  final bool isParent;
  /// The mode of OOS Execution. Valid: `Automatic`, `Debug`.
  final String mode;
  /// The outputs of OOS Executions.
  final String outputs;
  /// The parameters required by the template
  final String parameters;
  /// The id of parent OOS Execution.
  final String parentExecutionId;
  /// The role that executes the current template.
  final String ramRole;
  /// The time when the template was started.
  final String startDate;
  /// The Status of OOS Execution. Valid: `Cancelled`, `Failed`, `Queued`, `Running`, `Started`, `Success`, `Waiting`.
  final String status;
  /// The message of status.
  final String statusMessage;
  /// The reason of status.
  final String statusReason;
  /// The id of execution template.
  final String templateId;
  /// The name of execution template.
  final String templateName;
  /// The version of execution template.
  final String templateVersion;
  /// The time when the template was updated.
  final String updateDate;

  /// Creates a new [GetExecutionsExecution].
  /// [category] The category of template. Valid: `AlarmTrigger`, `EventTrigger`, `Other` and `TimerTrigger`.
  /// [counters] The counters of OOS Execution.
  /// [createDate] The time when the execution was created.
  /// [endDate] The time when the execution was ended.
  /// [executedBy] The user who execute the template.
  /// [executionId] ID of the OOS Executions.
  /// [id] ID of the OOS Executions.
  /// [isParent] Whether to include subtasks.
  /// [mode] The mode of OOS Execution. Valid: `Automatic`, `Debug`.
  /// [outputs] The outputs of OOS Executions.
  /// [parameters] The parameters required by the template
  /// [parentExecutionId] The id of parent OOS Execution.
  /// [ramRole] The role that executes the current template.
  /// [startDate] The time when the template was started.
  /// [status] The Status of OOS Execution. Valid: `Cancelled`, `Failed`, `Queued`, `Running`, `Started`, `Success`, `Waiting`.
  /// [statusMessage] The message of status.
  /// [statusReason] The reason of status.
  /// [templateId] The id of execution template.
  /// [templateName] The name of execution template.
  /// [templateVersion] The version of execution template.
  /// [updateDate] The time when the template was updated.
  GetExecutionsExecution({
    required this.category,
    required this.counters,
    required this.createDate,
    required this.endDate,
    required this.executedBy,
    required this.executionId,
    required this.id,
    required this.isParent,
    required this.mode,
    required this.outputs,
    required this.parameters,
    required this.parentExecutionId,
    required this.ramRole,
    required this.startDate,
    required this.status,
    required this.statusMessage,
    required this.statusReason,
    required this.templateId,
    required this.templateName,
    required this.templateVersion,
    required this.updateDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'counters': counters,
      'createDate': createDate,
      'endDate': endDate,
      'executedBy': executedBy,
      'executionId': executionId,
      'id': id,
      'isParent': isParent,
      'mode': mode,
      'outputs': outputs,
      'parameters': parameters,
      'parentExecutionId': parentExecutionId,
      'ramRole': ramRole,
      'startDate': startDate,
      'status': status,
      'statusMessage': statusMessage,
      'statusReason': statusReason,
      'templateId': templateId,
      'templateName': templateName,
      'templateVersion': templateVersion,
      'updateDate': updateDate,
    };
  }

  factory GetExecutionsExecution.fromMap(Map<String, dynamic> map) {
    return GetExecutionsExecution(
      category: map['category'] as String,
      counters: map['counters'] as String,
      createDate: map['createDate'] as String,
      endDate: map['endDate'] as String,
      executedBy: map['executedBy'] as String,
      executionId: map['executionId'] as String,
      id: map['id'] as String,
      isParent: map['isParent'] as bool,
      mode: map['mode'] as String,
      outputs: map['outputs'] as String,
      parameters: map['parameters'] as String,
      parentExecutionId: map['parentExecutionId'] as String,
      ramRole: map['ramRole'] as String,
      startDate: map['startDate'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      statusReason: map['statusReason'] as String,
      templateId: map['templateId'] as String,
      templateName: map['templateName'] as String,
      templateVersion: map['templateVersion'] as String,
      updateDate: map['updateDate'] as String,
    );
  }
}

