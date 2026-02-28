// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_state.dart';
import 'outcome.dart';
import 'specification.dart';
import 'timestamp.dart';

/// {@template pulumi_toolresults_v1beta3_execution_args_doc}
/// The set of arguments for Execution.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_execution_args_doc}
class ExecutionArgs {
  /// The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  final pulumi.Input<Timestamp>? completionTime;
  /// The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  final pulumi.Input<Timestamp>? creationTime;
  /// The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  final pulumi.Input<List<Map<String, dynamic>>>? dimensionDefinitions;
  /// A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  final pulumi.Input<String>? executionId;
  final pulumi.Input<String> historyId;
  /// Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<Outcome>? outcome;
  final pulumi.Input<String>? project;
  /// A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  final pulumi.Input<String>? requestId;
  /// Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  final pulumi.Input<Specification>? specification;
  /// The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  final pulumi.Input<ExecutionState>? state;
  /// TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  final pulumi.Input<String>? testExecutionMatrixId;

  /// Creates a new [ExecutionArgs].
  /// [completionTime] The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  /// [creationTime] The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  /// [dimensionDefinitions] The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  /// [executionId] A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  /// [historyId] Required.
  /// [outcome] Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  /// [project] Optional.
  /// [requestId] A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  /// [specification] Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  /// [state] The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  /// [testExecutionMatrixId] TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  ExecutionArgs({
    Timestamp? completionTime,
    Timestamp? creationTime,
    List<Map<String, dynamic>>? dimensionDefinitions,
    String? executionId,
    required String historyId,
    Outcome? outcome,
    String? project,
    String? requestId,
    Specification? specification,
    ExecutionState? state,
    String? testExecutionMatrixId,
  }) :
      completionTime = pulumi.Input.asOptionalInput<Timestamp>(completionTime),
      creationTime = pulumi.Input.asOptionalInput<Timestamp>(creationTime),
      dimensionDefinitions = pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(dimensionDefinitions),
      executionId = pulumi.Input.asOptionalInput<String>(executionId),
      historyId = pulumi.Input.asInput<String>(historyId),
      outcome = pulumi.Input.asOptionalInput<Outcome>(outcome),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      specification = pulumi.Input.asOptionalInput<Specification>(specification),
      state = pulumi.Input.asOptionalInput<ExecutionState>(state),
      testExecutionMatrixId = pulumi.Input.asOptionalInput<String>(testExecutionMatrixId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': ?pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(completionTime, (value) => value.toMap()),
      'creationTime': ?pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(creationTime, (value) => value.toMap()),
      'dimensionDefinitions': ?dimensionDefinitions,
      'executionId': ?executionId,
      'historyId': historyId,
      'outcome': ?pulumi.Input.mapOptionalInputValue<Outcome, Map<String, dynamic>>(outcome, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'specification': ?pulumi.Input.mapOptionalInputValue<Specification, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<ExecutionState, String>(state, (value) => value.value),
      'testExecutionMatrixId': ?testExecutionMatrixId,
    };
  }

  factory ExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs(
      completionTime: map['completionTime'] == null ? null : Timestamp.fromMap((map['completionTime'] as Map).cast<String, dynamic>()),
      creationTime: map['creationTime'] == null ? null : Timestamp.fromMap((map['creationTime'] as Map).cast<String, dynamic>()),
      dimensionDefinitions: map['dimensionDefinitions'] == null ? null : (map['dimensionDefinitions'] as List).cast<Map<String, dynamic>>(),
      executionId: map['executionId'] == null ? null : map['executionId'] as String,
      historyId: map['historyId'] as String,
      outcome: map['outcome'] == null ? null : Outcome.fromMap((map['outcome'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      specification: map['specification'] == null ? null : Specification.fromMap((map['specification'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : ExecutionState.fromValue(map['state'] as String),
      testExecutionMatrixId: map['testExecutionMatrixId'] == null ? null : map['testExecutionMatrixId'] as String,
    );
  }
}

