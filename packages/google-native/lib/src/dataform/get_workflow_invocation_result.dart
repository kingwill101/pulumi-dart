// ignore_for_file: unused_element, unnecessary_cast

import 'interval_response.dart';
import 'invocation_config_response.dart';

/// Result data returned by getWorkflowInvocation.
class GetWorkflowInvocationResult {
  /// Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final String compilationResult;

  /// Immutable. If left unset, a default InvocationConfig will be used.
  final InvocationConfigResponse invocationConfig;

  /// This workflow invocation's timing details.
  final IntervalResponse invocationTiming;

  /// The workflow invocation's name.
  final String name;

  /// The resolved compilation result that was used to create this invocation. Will be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final String resolvedCompilationResult;

  /// This workflow invocation's current state.
  final String state;

  /// Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  final String workflowConfig;

  /// Creates a new [GetWorkflowInvocationResult].
  /// [compilationResult] Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  /// [invocationConfig] Immutable. If left unset, a default InvocationConfig will be used.
  /// [invocationTiming] This workflow invocation's timing details.
  /// [name] The workflow invocation's name.
  /// [resolvedCompilationResult] The resolved compilation result that was used to create this invocation. Will be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  /// [state] This workflow invocation's current state.
  /// [workflowConfig] Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  GetWorkflowInvocationResult({
    required this.compilationResult,
    required this.invocationConfig,
    required this.invocationTiming,
    required this.name,
    required this.resolvedCompilationResult,
    required this.state,
    required this.workflowConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compilationResult': compilationResult,
      'invocationConfig': invocationConfig.toMap(),
      'invocationTiming': invocationTiming.toMap(),
      'name': name,
      'resolvedCompilationResult': resolvedCompilationResult,
      'state': state,
      'workflowConfig': workflowConfig,
    };
  }

  factory GetWorkflowInvocationResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowInvocationResult(
      compilationResult: map['compilationResult'] as String,
      invocationConfig: InvocationConfigResponse.fromMap(
        (map['invocationConfig'] as Map).cast<String, dynamic>(),
      ),
      invocationTiming: IntervalResponse.fromMap(
        (map['invocationTiming'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      resolvedCompilationResult: map['resolvedCompilationResult'] as String,
      state: map['state'] as String,
      workflowConfig: map['workflowConfig'] as String,
    );
  }
}
