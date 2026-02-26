// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'execution_state3.dart';
import 'outcome.dart';
import 'specification.dart';
import 'timestamp.dart';

/// The set of arguments for Execution.
class ExecutionArgs4 {
  /// The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  final Input<Timestamp>? completionTime;

  /// The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  final Input<Timestamp>? creationTime;

  /// The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  final Input<List<Map<String, dynamic>>>? dimensionDefinitions;

  /// A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  final Input<String>? executionId;
  final Input<String> historyId;

  /// Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  final Input<Outcome>? outcome;
  final Input<String>? project;

  /// A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  final Input<String>? requestId;

  /// Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  final Input<Specification>? specification;

  /// The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  final Input<ExecutionState3>? state;

  /// TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  final Input<String>? testExecutionMatrixId;

  ExecutionArgs4({
    this.completionTime,
    this.creationTime,
    this.dimensionDefinitions,
    this.executionId,
    required this.historyId,
    this.outcome,
    this.project,
    this.requestId,
    this.specification,
    this.state,
    this.testExecutionMatrixId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final completionTimeValue = completionTime;
    if (completionTimeValue != null) {
      map['completionTime'] =
          Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(
              completionTimeValue, (value) => value.toMap());
    }
    final creationTimeValue = creationTime;
    if (creationTimeValue != null) {
      map['creationTime'] =
          Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(
              creationTimeValue, (value) => value.toMap());
    }
    final dimensionDefinitionsValue = dimensionDefinitions;
    if (dimensionDefinitionsValue != null) {
      map['dimensionDefinitions'] = dimensionDefinitionsValue;
    }
    final executionIdValue = executionId;
    if (executionIdValue != null) {
      map['executionId'] = executionIdValue;
    }
    map['historyId'] = historyId;
    final outcomeValue = outcome;
    if (outcomeValue != null) {
      map['outcome'] =
          Input.mapOptionalInputValue<Outcome, Map<String, dynamic>>(
              outcomeValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final specificationValue = specification;
    if (specificationValue != null) {
      map['specification'] =
          Input.mapOptionalInputValue<Specification, Map<String, dynamic>>(
              specificationValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<ExecutionState3, String>(
          stateValue, (value) => value.value);
    }
    final testExecutionMatrixIdValue = testExecutionMatrixId;
    if (testExecutionMatrixIdValue != null) {
      map['testExecutionMatrixId'] = testExecutionMatrixIdValue;
    }
    return map;
  }

  factory ExecutionArgs4.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs4(
      completionTime: Input.asOptionalInput<Timestamp>(map['completionTime']),
      creationTime: Input.asOptionalInput<Timestamp>(map['creationTime']),
      dimensionDefinitions: Input.asOptionalInput<List<Map<String, dynamic>>>(
          map['dimensionDefinitions']),
      executionId: Input.asOptionalInput<String>(map['executionId']),
      historyId: Input.asInput<String>(map['historyId']),
      outcome: Input.asOptionalInput<Outcome>(map['outcome']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      specification: Input.asOptionalInput<Specification>(map['specification']),
      state: Input.asOptionalInput<ExecutionState3>(map['state']),
      testExecutionMatrixId:
          Input.asOptionalInput<String>(map['testExecutionMatrixId']),
    );
  }
}
