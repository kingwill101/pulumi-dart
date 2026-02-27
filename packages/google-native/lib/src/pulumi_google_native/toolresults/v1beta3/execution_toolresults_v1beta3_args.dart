// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_state_toolresults_v1beta3.dart';
import 'outcome.dart';
import 'specification.dart';
import 'timestamp.dart';

/// The set of arguments for Execution.
class ExecutionToolresultsV1beta3Args {
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
  final pulumi.Input<ExecutionStateToolresultsV1beta3>? state;

  /// TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  final pulumi.Input<String>? testExecutionMatrixId;

  ExecutionToolresultsV1beta3Args({
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
          pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(
              completionTimeValue, (value) => value.toMap());
    }
    final creationTimeValue = creationTime;
    if (creationTimeValue != null) {
      map['creationTime'] =
          pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(
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
          pulumi.Input.mapOptionalInputValue<Outcome, Map<String, dynamic>>(
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
      map['specification'] = pulumi.Input.mapOptionalInputValue<Specification,
          Map<String, dynamic>>(specificationValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = pulumi.Input.mapOptionalInputValue<
          ExecutionStateToolresultsV1beta3,
          String>(stateValue, (value) => value.value);
    }
    final testExecutionMatrixIdValue = testExecutionMatrixId;
    if (testExecutionMatrixIdValue != null) {
      map['testExecutionMatrixId'] = testExecutionMatrixIdValue;
    }
    return map;
  }

  factory ExecutionToolresultsV1beta3Args.fromMap(Map<String, dynamic> map) {
    return ExecutionToolresultsV1beta3Args(
      completionTime:
          pulumi.Input.asOptionalInput<Timestamp>(map['completionTime']),
      creationTime:
          pulumi.Input.asOptionalInput<Timestamp>(map['creationTime']),
      dimensionDefinitions:
          pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
              map['dimensionDefinitions']),
      executionId: pulumi.Input.asOptionalInput<String>(map['executionId']),
      historyId: pulumi.Input.asInput<String>(map['historyId']),
      outcome: pulumi.Input.asOptionalInput<Outcome>(map['outcome']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      specification:
          pulumi.Input.asOptionalInput<Specification>(map['specification']),
      state: pulumi.Input.asOptionalInput<ExecutionStateToolresultsV1beta3>(
          map['state']),
      testExecutionMatrixId:
          pulumi.Input.asOptionalInput<String>(map['testExecutionMatrixId']),
    );
  }
}
