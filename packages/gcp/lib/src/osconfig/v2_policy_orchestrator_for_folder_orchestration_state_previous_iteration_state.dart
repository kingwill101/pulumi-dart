// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestration_state_previous_iteration_state_error.dart';

class V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState {
  /// (Output)
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateError>?
      errors;

  /// (Output)
  /// Number of orchestration actions which failed so far. For more details,
  /// query the Cloud Logs.
  final String? failedActions;

  /// (Output)
  /// Finish time of the wave iteration.
  final String? finishTime;

  /// (Output)
  /// Overall number of actions done by the orchestrator so far.
  final String? performedActions;

  /// (Output)
  /// An estimated percentage of the progress. Number between 0 and 100.
  final double? progress;

  /// (Output)
  /// Handle to the Progressive Rollouts API rollout resource, which contains
  /// detailed information about a particular orchestration iteration.
  final String? rolloutResource;

  /// (Output)
  /// Start time of the wave iteration.
  final String? startTime;

  /// State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final String? state;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState].
  /// [errors] (Output)
  /// [failedActions] (Output)
  /// [finishTime] (Output)
  /// [performedActions] (Output)
  /// [progress] (Output)
  /// [rolloutResource] (Output)
  /// [startTime] (Output)
  /// [state] State of the orchestrator. Can be updated to change orchestrator behaviour.
  V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState({
    this.errors,
    this.failedActions,
    this.finishTime,
    this.performedActions,
    this.progress,
    this.rolloutResource,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorsValue = errors;
    if (errorsValue != null) {
      map['errors'] = pulumi.Input.encodeList<
          V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateError,
          Map<String, dynamic>>(errorsValue, (value) => value.toMap());
    }
    final failedActionsValue = failedActions;
    if (failedActionsValue != null) {
      map['failedActions'] = failedActionsValue;
    }
    final finishTimeValue = finishTime;
    if (finishTimeValue != null) {
      map['finishTime'] = finishTimeValue;
    }
    final performedActionsValue = performedActions;
    if (performedActionsValue != null) {
      map['performedActions'] = performedActionsValue;
    }
    final progressValue = progress;
    if (progressValue != null) {
      map['progress'] = progressValue;
    }
    final rolloutResourceValue = rolloutResource;
    if (rolloutResourceValue != null) {
      map['rolloutResource'] = rolloutResourceValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateError>(
              map['errors'],
              (value) =>
                  V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateError
                      .fromMap((value as Map).cast<String, dynamic>())),
      failedActions:
          map['failedActions'] == null ? null : map['failedActions'] as String,
      finishTime:
          map['finishTime'] == null ? null : map['finishTime'] as String,
      performedActions: map['performedActions'] == null
          ? null
          : map['performedActions'] as String,
      progress: map['progress'] == null ? null : map['progress'] as double,
      rolloutResource: map['rolloutResource'] == null
          ? null
          : map['rolloutResource'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
