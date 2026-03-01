// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_execution_execution_args_doc}
/// The set of arguments for Execution.
/// {@endtemplate}
/// {@macro pulumi_oos_execution_execution_args_doc}
class ExecutionArgs {
  /// The description of OOS Execution.
  final pulumi.Input<String>? description;
  /// The loop mode of OOS Execution.
  final pulumi.Input<String>? loopMode;
  /// The mode of OOS Execution. Valid: `Automatic`, `Debug`. Default to `Automatic`.
  final pulumi.Input<String>? mode;
  /// The parameters required by the template. Default to `{}`.
  final pulumi.Input<String>? parameters;
  /// The id of parent execution.
  final pulumi.Input<String>? parentExecutionId;
  /// The mode of safety check.
  final pulumi.Input<String>? safetyCheck;
  /// The content of template. When the user selects an existing template to create and execute a task, it is not necessary to pass in this field.
  final pulumi.Input<String>? templateContent;
  /// The name of execution template.
  final pulumi.Input<String> templateName;
  /// The version of execution template.
  final pulumi.Input<String>? templateVersion;

  /// Creates a new [ExecutionArgs].
  /// [description] The description of OOS Execution.
  /// [loopMode] The loop mode of OOS Execution.
  /// [mode] The mode of OOS Execution. Valid: `Automatic`, `Debug`. Default to `Automatic`.
  /// [parameters] The parameters required by the template. Default to `{}`.
  /// [parentExecutionId] The id of parent execution.
  /// [safetyCheck] The mode of safety check.
  /// [templateContent] The content of template. When the user selects an existing template to create and execute a task, it is not necessary to pass in this field.
  /// [templateName] The name of execution template.
  /// [templateVersion] The version of execution template.
  ExecutionArgs({
    String? description,
    String? loopMode,
    String? mode,
    String? parameters,
    String? parentExecutionId,
    String? safetyCheck,
    String? templateContent,
    required String templateName,
    String? templateVersion,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      loopMode = pulumi.Input.asOptionalInput<String>(loopMode),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      parentExecutionId = pulumi.Input.asOptionalInput<String>(parentExecutionId),
      safetyCheck = pulumi.Input.asOptionalInput<String>(safetyCheck),
      templateContent = pulumi.Input.asOptionalInput<String>(templateContent),
      templateName = pulumi.Input.asInput<String>(templateName),
      templateVersion = pulumi.Input.asOptionalInput<String>(templateVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'loopMode': ?loopMode,
      'mode': ?mode,
      'parameters': ?parameters,
      'parentExecutionId': ?parentExecutionId,
      'safetyCheck': ?safetyCheck,
      'templateContent': ?templateContent,
      'templateName': templateName,
      'templateVersion': ?templateVersion,
    };
  }

  factory ExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      loopMode: map['loopMode'] == null ? null : map['loopMode'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      parentExecutionId: map['parentExecutionId'] == null ? null : map['parentExecutionId'] as String,
      safetyCheck: map['safetyCheck'] == null ? null : map['safetyCheck'] as String,
      templateContent: map['templateContent'] == null ? null : map['templateContent'] as String,
      templateName: map['templateName'] as String,
      templateVersion: map['templateVersion'] == null ? null : map['templateVersion'] as String,
    );
  }
}

