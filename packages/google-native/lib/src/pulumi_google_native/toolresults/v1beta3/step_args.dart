// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_toolresults_v1beta3.dart';
import 'multi_step.dart';
import 'outcome.dart';
import 'step_dimension_value_entry.dart';
import 'step_labels_entry.dart';
import 'step_state.dart';
import 'test_execution_step.dart';
import 'timestamp.dart';
import 'tool_execution_step.dart';

/// The set of arguments for Step.
class StepArgs {
  /// The time when the step status was set to complete. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  final pulumi.Input<Timestamp>? completionTime;

  /// The time when the step was created. - In response: always set - In create/update request: never set
  final pulumi.Input<Timestamp>? creationTime;

  /// A description of this tool For example: mvn clean package -D skipTests=true - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<String>? description;

  /// How much the device resource is used to perform the test. This is the device usage used for billing purpose, which is different from the run_duration, for example, infrastructure failure won't be charged for device usage. PRECONDITION_FAILED will be returned if one attempts to set a device_usage on a step which already has this field set. - In response: present if previously set. - In create request: optional - In update request: optional
  final pulumi.Input<DurationToolresultsV1beta3>? deviceUsageDuration;

  /// If the execution containing this step has any dimension_definition set, then this field allows the child to specify the values of the dimensions. The keys must exactly match the dimension_definition of the execution. For example, if the execution has `dimension_definition = ['attempt', 'device']` then a step must define values for those dimensions, eg. `dimension_value = ['attempt': '1', 'device': 'Nexus 6']` If a step does not participate in one dimension of the matrix, the value for that dimension should be empty string. For example, if one of the tests is executed by a runner which does not support retries, the step could have `dimension_value = ['attempt': '', 'device': 'Nexus 6']` If the step does not participate in any dimensions of the matrix, it may leave dimension_value unset. A PRECONDITION_FAILED will be returned if any of the keys do not exist in the dimension_definition of the execution. A PRECONDITION_FAILED will be returned if another step in this execution already has the same name and dimension_value, but differs on other data fields, for example, step field is different. A PRECONDITION_FAILED will be returned if dimension_value is set, and there is a dimension_definition in the execution which is not specified as one of the keys. - In response: present if set by create - In create request: optional - In update request: never set
  final pulumi.Input<List<StepDimensionValueEntry>>? dimensionValue;
  final pulumi.Input<String> executionId;

  /// Whether any of the outputs of this step are images whose thumbnails can be fetched with ListThumbnails. - In response: always set - In create/update request: never set
  final pulumi.Input<bool>? hasImages;
  final pulumi.Input<String> historyId;

  /// Arbitrary user-supplied key/value pairs that are associated with the step. Users are responsible for managing the key namespace such that keys don't accidentally collide. An INVALID_ARGUMENT will be returned if the number of labels exceeds 100 or if the length of any of the keys or values exceeds 100 characters. - In response: always set - In create request: optional - In update request: optional; any new key/value pair will be added to the map, and any new value for an existing key will update that key's value
  final pulumi.Input<List<StepLabelsEntry>>? labels;

  /// Details when multiple steps are run with the same configuration as a group. These details can be used identify which group this step is part of. It also identifies the groups 'primary step' which indexes all the group members. - In response: present if previously set. - In create request: optional, set iff this step was performed more than once. - In update request: optional
  final pulumi.Input<MultiStep>? multiStep;

  /// A short human-readable name to display in the UI. Maximum of 100 characters. For example: Clean build A PRECONDITION_FAILED will be returned upon creating a new step if it shares its name and dimension_value with an existing step. If two steps represent a similar action, but have different dimension values, they should share the same name. For instance, if the same set of tests is run on two different platforms, the two steps should have the same name. - In response: always set - In create request: always set - In update request: never set
  final pulumi.Input<String>? name;

  /// Classification of the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<Outcome>? outcome;
  final pulumi.Input<String>? project;

  /// A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  final pulumi.Input<String>? requestId;

  /// How long it took for this step to run. If unset, this is set to the difference between creation_time and completion_time when the step is set to the COMPLETE state. In some cases, it is appropriate to set this value separately: For instance, if a step is created, but the operation it represents is queued for a few minutes before it executes, it would be appropriate not to include the time spent queued in its run_duration. PRECONDITION_FAILED will be returned if one attempts to set a run_duration on a step which already has this field set. - In response: present if previously set; always present on COMPLETE step - In create request: optional - In update request: optional
  final pulumi.Input<DurationToolresultsV1beta3>? runDuration;

  /// The initial state is IN_PROGRESS. The only legal state transitions are * IN_PROGRESS -> COMPLETE A PRECONDITION_FAILED will be returned if an invalid transition is requested. It is valid to create Step with a state set to COMPLETE. The state can only be set to COMPLETE once. A PRECONDITION_FAILED will be returned if the state is set to COMPLETE multiple times. - In response: always set - In create/update request: optional
  final pulumi.Input<StepState>? state;

  /// A unique identifier within a Execution for this Step. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response: always set - In create/update request: never set
  final pulumi.Input<String>? stepId;

  /// An execution of a test runner.
  final pulumi.Input<TestExecutionStep>? testExecutionStep;

  /// An execution of a tool (used for steps we don't explicitly support).
  final pulumi.Input<ToolExecutionStep>? toolExecutionStep;

  StepArgs({
    this.completionTime,
    this.creationTime,
    this.description,
    this.deviceUsageDuration,
    this.dimensionValue,
    required this.executionId,
    this.hasImages,
    required this.historyId,
    this.labels,
    this.multiStep,
    this.name,
    this.outcome,
    this.project,
    this.requestId,
    this.runDuration,
    this.state,
    this.stepId,
    this.testExecutionStep,
    this.toolExecutionStep,
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
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final deviceUsageDurationValue = deviceUsageDuration;
    if (deviceUsageDurationValue != null) {
      map['deviceUsageDuration'] = pulumi.Input.mapOptionalInputValue<
              DurationToolresultsV1beta3, Map<String, dynamic>>(
          deviceUsageDurationValue, (value) => value.toMap());
    }
    final dimensionValueValue = dimensionValue;
    if (dimensionValueValue != null) {
      map['dimensionValue'] = pulumi.Input.mapOptionalInputValue<
              List<StepDimensionValueEntry>, List<Map<String, dynamic>>>(
          dimensionValueValue,
          (value) => pulumi.Input.encodeList<StepDimensionValueEntry,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['executionId'] = executionId;
    final hasImagesValue = hasImages;
    if (hasImagesValue != null) {
      map['hasImages'] = hasImagesValue;
    }
    map['historyId'] = historyId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = pulumi.Input.mapOptionalInputValue<List<StepLabelsEntry>,
              List<Map<String, dynamic>>>(
          labelsValue,
          (value) =>
              pulumi.Input.encodeList<StepLabelsEntry, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final multiStepValue = multiStep;
    if (multiStepValue != null) {
      map['multiStep'] =
          pulumi.Input.mapOptionalInputValue<MultiStep, Map<String, dynamic>>(
              multiStepValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
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
    final runDurationValue = runDuration;
    if (runDurationValue != null) {
      map['runDuration'] = pulumi.Input.mapOptionalInputValue<
          DurationToolresultsV1beta3,
          Map<String, dynamic>>(runDurationValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = pulumi.Input.mapOptionalInputValue<StepState, String>(
          stateValue, (value) => value.value);
    }
    final stepIdValue = stepId;
    if (stepIdValue != null) {
      map['stepId'] = stepIdValue;
    }
    final testExecutionStepValue = testExecutionStep;
    if (testExecutionStepValue != null) {
      map['testExecutionStep'] = pulumi.Input.mapOptionalInputValue<
              TestExecutionStep, Map<String, dynamic>>(
          testExecutionStepValue, (value) => value.toMap());
    }
    final toolExecutionStepValue = toolExecutionStep;
    if (toolExecutionStepValue != null) {
      map['toolExecutionStep'] = pulumi.Input.mapOptionalInputValue<
              ToolExecutionStep, Map<String, dynamic>>(
          toolExecutionStepValue, (value) => value.toMap());
    }
    return map;
  }

  factory StepArgs.fromMap(Map<String, dynamic> map) {
    return StepArgs(
      completionTime:
          pulumi.Input.asOptionalInput<Timestamp>(map['completionTime']),
      creationTime:
          pulumi.Input.asOptionalInput<Timestamp>(map['creationTime']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      deviceUsageDuration:
          pulumi.Input.asOptionalInput<DurationToolresultsV1beta3>(
              map['deviceUsageDuration']),
      dimensionValue:
          pulumi.Input.asOptionalInput<List<StepDimensionValueEntry>>(
              map['dimensionValue']),
      executionId: pulumi.Input.asInput<String>(map['executionId']),
      hasImages: pulumi.Input.asOptionalInput<bool>(map['hasImages']),
      historyId: pulumi.Input.asInput<String>(map['historyId']),
      labels:
          pulumi.Input.asOptionalInput<List<StepLabelsEntry>>(map['labels']),
      multiStep: pulumi.Input.asOptionalInput<MultiStep>(map['multiStep']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      outcome: pulumi.Input.asOptionalInput<Outcome>(map['outcome']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      runDuration: pulumi.Input.asOptionalInput<DurationToolresultsV1beta3>(
          map['runDuration']),
      state: pulumi.Input.asOptionalInput<StepState>(map['state']),
      stepId: pulumi.Input.asOptionalInput<String>(map['stepId']),
      testExecutionStep: pulumi.Input.asOptionalInput<TestExecutionStep>(
          map['testExecutionStep']),
      toolExecutionStep: pulumi.Input.asOptionalInput<ToolExecutionStep>(
          map['toolExecutionStep']),
    );
  }
}
