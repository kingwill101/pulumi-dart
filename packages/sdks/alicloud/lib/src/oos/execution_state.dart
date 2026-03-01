// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Execution resources.
class ExecutionState {
  /// The counters of OOS Execution.
  final pulumi.Input<String>? counters;
  /// The time when the execution was created.
  final pulumi.Input<String>? createDate;
  /// The description of OOS Execution.
  final pulumi.Input<String>? description;
  /// The time when the execution was ended.
  final pulumi.Input<String>? endDate;
  /// The user who execute the template.
  final pulumi.Input<String>? executedBy;
  /// Whether to include subtasks.
  final pulumi.Input<bool>? isParent;
  /// The loop mode of OOS Execution.
  final pulumi.Input<String>? loopMode;
  /// The mode of OOS Execution. Valid: `Automatic`, `Debug`. Default to `Automatic`.
  final pulumi.Input<String>? mode;
  /// The outputs of OOS Execution.
  final pulumi.Input<String>? outputs;
  /// The parameters required by the template. Default to `{}`.
  final pulumi.Input<String>? parameters;
  /// The id of parent execution.
  final pulumi.Input<String>? parentExecutionId;
  /// The role that executes the current template.
  final pulumi.Input<String>? ramRole;
  /// The mode of safety check.
  final pulumi.Input<String>? safetyCheck;
  /// The time when the execution was started.
  final pulumi.Input<String>? startDate;
  /// The status of OOS Execution.
  final pulumi.Input<String>? status;
  /// The message of status.
  final pulumi.Input<String>? statusMessage;
  /// The content of template. When the user selects an existing template to create and execute a task, it is not necessary to pass in this field.
  final pulumi.Input<String>? templateContent;
  /// The id of template.
  final pulumi.Input<String>? templateId;
  /// The name of execution template.
  final pulumi.Input<String>? templateName;
  /// The version of execution template.
  final pulumi.Input<String>? templateVersion;
  /// The time when the execution was updated.
  final pulumi.Input<String>? updateDate;

  /// Creates a new [ExecutionState].
  /// [counters] The counters of OOS Execution.
  /// [createDate] The time when the execution was created.
  /// [description] The description of OOS Execution.
  /// [endDate] The time when the execution was ended.
  /// [executedBy] The user who execute the template.
  /// [isParent] Whether to include subtasks.
  /// [loopMode] The loop mode of OOS Execution.
  /// [mode] The mode of OOS Execution. Valid: `Automatic`, `Debug`. Default to `Automatic`.
  /// [outputs] The outputs of OOS Execution.
  /// [parameters] The parameters required by the template. Default to `{}`.
  /// [parentExecutionId] The id of parent execution.
  /// [ramRole] The role that executes the current template.
  /// [safetyCheck] The mode of safety check.
  /// [startDate] The time when the execution was started.
  /// [status] The status of OOS Execution.
  /// [statusMessage] The message of status.
  /// [templateContent] The content of template. When the user selects an existing template to create and execute a task, it is not necessary to pass in this field.
  /// [templateId] The id of template.
  /// [templateName] The name of execution template.
  /// [templateVersion] The version of execution template.
  /// [updateDate] The time when the execution was updated.
  ExecutionState({
    pulumi.Output<String>? counters,
    pulumi.Output<String>? createDate,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? executedBy,
    pulumi.Output<bool>? isParent,
    pulumi.Output<String>? loopMode,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? outputs,
    pulumi.Output<String>? parameters,
    pulumi.Output<String>? parentExecutionId,
    pulumi.Output<String>? ramRole,
    pulumi.Output<String>? safetyCheck,
    pulumi.Output<String>? startDate,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusMessage,
    pulumi.Output<String>? templateContent,
    pulumi.Output<String>? templateId,
    pulumi.Output<String>? templateName,
    pulumi.Output<String>? templateVersion,
    pulumi.Output<String>? updateDate,
  }) :
      counters = pulumi.Input.asOptionalInput<String>(counters),
      createDate = pulumi.Input.asOptionalInput<String>(createDate),
      description = pulumi.Input.asOptionalInput<String>(description),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      executedBy = pulumi.Input.asOptionalInput<String>(executedBy),
      isParent = pulumi.Input.asOptionalInput<bool>(isParent),
      loopMode = pulumi.Input.asOptionalInput<String>(loopMode),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      outputs = pulumi.Input.asOptionalInput<String>(outputs),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      parentExecutionId = pulumi.Input.asOptionalInput<String>(parentExecutionId),
      ramRole = pulumi.Input.asOptionalInput<String>(ramRole),
      safetyCheck = pulumi.Input.asOptionalInput<String>(safetyCheck),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusMessage = pulumi.Input.asOptionalInput<String>(statusMessage),
      templateContent = pulumi.Input.asOptionalInput<String>(templateContent),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      templateName = pulumi.Input.asOptionalInput<String>(templateName),
      templateVersion = pulumi.Input.asOptionalInput<String>(templateVersion),
      updateDate = pulumi.Input.asOptionalInput<String>(updateDate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counters': ?counters,
      'createDate': ?createDate,
      'description': ?description,
      'endDate': ?endDate,
      'executedBy': ?executedBy,
      'isParent': ?isParent,
      'loopMode': ?loopMode,
      'mode': ?mode,
      'outputs': ?outputs,
      'parameters': ?parameters,
      'parentExecutionId': ?parentExecutionId,
      'ramRole': ?ramRole,
      'safetyCheck': ?safetyCheck,
      'startDate': ?startDate,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'templateContent': ?templateContent,
      'templateId': ?templateId,
      'templateName': ?templateName,
      'templateVersion': ?templateVersion,
      'updateDate': ?updateDate,
    };
  }

  factory ExecutionState.fromMap(Map<String, dynamic> map) {
    return ExecutionState(
      counters: map['counters'] == null ? null : pulumi.Output.create<String>(map['counters'] as String),
      createDate: map['createDate'] == null ? null : pulumi.Output.create<String>(map['createDate'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      executedBy: map['executedBy'] == null ? null : pulumi.Output.create<String>(map['executedBy'] as String),
      isParent: map['isParent'] == null ? null : pulumi.Output.create<bool>(map['isParent'] as bool),
      loopMode: map['loopMode'] == null ? null : pulumi.Output.create<String>(map['loopMode'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<String>(map['outputs'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<String>(map['parameters'] as String),
      parentExecutionId: map['parentExecutionId'] == null ? null : pulumi.Output.create<String>(map['parentExecutionId'] as String),
      ramRole: map['ramRole'] == null ? null : pulumi.Output.create<String>(map['ramRole'] as String),
      safetyCheck: map['safetyCheck'] == null ? null : pulumi.Output.create<String>(map['safetyCheck'] as String),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusMessage: map['statusMessage'] == null ? null : pulumi.Output.create<String>(map['statusMessage'] as String),
      templateContent: map['templateContent'] == null ? null : pulumi.Output.create<String>(map['templateContent'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
      templateVersion: map['templateVersion'] == null ? null : pulumi.Output.create<String>(map['templateVersion'] as String),
      updateDate: map['updateDate'] == null ? null : pulumi.Output.create<String>(map['updateDate'] as String),
    );
  }
}

