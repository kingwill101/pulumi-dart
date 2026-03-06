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
  const ExecutionState({
    this.counters,
    this.createDate,
    this.description,
    this.endDate,
    this.executedBy,
    this.isParent,
    this.loopMode,
    this.mode,
    this.outputs,
    this.parameters,
    this.parentExecutionId,
    this.ramRole,
    this.safetyCheck,
    this.startDate,
    this.status,
    this.statusMessage,
    this.templateContent,
    this.templateId,
    this.templateName,
    this.templateVersion,
    this.updateDate,
  });

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
      counters: (() { final guardedValue = map['counters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createDate: (() { final guardedValue = map['createDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executedBy: (() { final guardedValue = map['executedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isParent: (() { final guardedValue = map['isParent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loopMode: (() { final guardedValue = map['loopMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentExecutionId: (() { final guardedValue = map['parentExecutionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ramRole: (() { final guardedValue = map['ramRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      safetyCheck: (() { final guardedValue = map['safetyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateContent: (() { final guardedValue = map['templateContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateVersion: (() { final guardedValue = map['templateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateDate: (() { final guardedValue = map['updateDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

