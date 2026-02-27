// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'invocation_config.dart';

/// The set of arguments for WorkflowInvocation.
class WorkflowInvocationArgs {
  /// Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final Input<String>? compilationResult;

  /// Immutable. If left unset, a default InvocationConfig will be used.
  final Input<InvocationConfig>? invocationConfig;
  final Input<String>? location;
  final Input<String>? project;
  final Input<String> repositoryId;

  /// Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  final Input<String>? workflowConfig;

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
      map['invocationConfig'] =
          Input.mapOptionalInputValue<InvocationConfig, Map<String, dynamic>>(
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
          Input.asOptionalInput<String>(map['compilationResult']),
      invocationConfig:
          Input.asOptionalInput<InvocationConfig>(map['invocationConfig']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      workflowConfig: Input.asOptionalInput<String>(map['workflowConfig']),
    );
  }
}
