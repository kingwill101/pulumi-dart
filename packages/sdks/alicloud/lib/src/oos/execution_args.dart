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
    this.description,
    this.loopMode,
    this.mode,
    this.parameters,
    this.parentExecutionId,
    this.safetyCheck,
    this.templateContent,
    required this.templateName,
    this.templateVersion,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loopMode: (() {
        final guardedValue = map['loopMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parentExecutionId: (() {
        final guardedValue = map['parentExecutionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      safetyCheck: (() {
        final guardedValue = map['safetyCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateContent: (() {
        final guardedValue = map['templateContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
      templateVersion: (() {
        final guardedValue = map['templateVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
