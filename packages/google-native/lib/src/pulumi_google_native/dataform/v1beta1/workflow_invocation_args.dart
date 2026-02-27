// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_config.dart';

/// The set of arguments for WorkflowInvocation.
class WorkflowInvocationArgs {
  /// Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final pulumi.Input<String>? compilationResult;

  /// Immutable. If left unset, a default InvocationConfig will be used.
  final pulumi.Input<InvocationConfig>? invocationConfig;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  final pulumi.Input<String>? workflowConfig;

  WorkflowInvocationArgs({
    this.compilationResult,
    this.invocationConfig,
    this.location,
    this.project,
    required this.repositoryId,
    this.workflowConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final compilationResultValue = compilationResult;
    if (compilationResultValue != null) {
      map['compilationResult'] = compilationResultValue;
    }
    final invocationConfigValue = invocationConfig;
    if (invocationConfigValue != null) {
      map['invocationConfig'] = pulumi.Input.mapOptionalInputValue<
              InvocationConfig, Map<String, dynamic>>(
          invocationConfigValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    final workflowConfigValue = workflowConfig;
    if (workflowConfigValue != null) {
      map['workflowConfig'] = workflowConfigValue;
    }
    return map;
  }

  factory WorkflowInvocationArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowInvocationArgs(
      compilationResult:
          pulumi.Input.asOptionalInput<String>(map['compilationResult']),
      invocationConfig: pulumi.Input.asOptionalInput<InvocationConfig>(
          map['invocationConfig']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      workflowConfig:
          pulumi.Input.asOptionalInput<String>(map['workflowConfig']),
    );
  }
}
