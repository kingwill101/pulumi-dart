// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExecutionsExecution {
  /// The category of template. Valid: `AlarmTrigger`, `EventTrigger`, `Other` and `TimerTrigger`.
  final pulumi.Input<String> category;
  /// The counters of OOS Execution.
  final pulumi.Input<String> counters;
  /// The time when the execution was created.
  final pulumi.Input<String> createDate;
  /// The time when the execution was ended.
  final pulumi.Input<String> endDate;
  /// The user who execute the template.
  final pulumi.Input<String> executedBy;
  /// ID of the OOS Executions.
  final pulumi.Input<String> executionId;
  /// ID of the OOS Executions.
  final pulumi.Input<String> id;
  /// Whether to include subtasks.
  final pulumi.Input<bool> isParent;
  /// The mode of OOS Execution. Valid: `Automatic`, `Debug`.
  final pulumi.Input<String> mode;
  /// The outputs of OOS Executions.
  final pulumi.Input<String> outputs;
  /// The parameters required by the template
  final pulumi.Input<String> parameters;
  /// The id of parent OOS Execution.
  final pulumi.Input<String> parentExecutionId;
  /// The role that executes the current template.
  final pulumi.Input<String> ramRole;
  /// The time when the template was started.
  final pulumi.Input<String> startDate;
  /// The Status of OOS Execution. Valid: `Cancelled`, `Failed`, `Queued`, `Running`, `Started`, `Success`, `Waiting`.
  final pulumi.Input<String> status;
  /// The message of status.
  final pulumi.Input<String> statusMessage;
  /// The reason of status.
  final pulumi.Input<String> statusReason;
  /// The id of execution template.
  final pulumi.Input<String> templateId;
  /// The name of execution template.
  final pulumi.Input<String> templateName;
  /// The version of execution template.
  final pulumi.Input<String> templateVersion;
  /// The time when the template was updated.
  final pulumi.Input<String> updateDate;

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
      category: pulumi.Input.fromValue(map['category'] as String),
      counters: pulumi.Input.fromValue(map['counters'] as String),
      createDate: pulumi.Input.fromValue(map['createDate'] as String),
      endDate: pulumi.Input.fromValue(map['endDate'] as String),
      executedBy: pulumi.Input.fromValue(map['executedBy'] as String),
      executionId: pulumi.Input.fromValue(map['executionId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isParent: pulumi.Input.fromValue(map['isParent'] as bool),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      outputs: pulumi.Input.fromValue(map['outputs'] as String),
      parameters: pulumi.Input.fromValue(map['parameters'] as String),
      parentExecutionId: pulumi.Input.fromValue(map['parentExecutionId'] as String),
      ramRole: pulumi.Input.fromValue(map['ramRole'] as String),
      startDate: pulumi.Input.fromValue(map['startDate'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      statusReason: pulumi.Input.fromValue(map['statusReason'] as String),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
      templateVersion: pulumi.Input.fromValue(map['templateVersion'] as String),
      updateDate: pulumi.Input.fromValue(map['updateDate'] as String),
    );
  }
}

