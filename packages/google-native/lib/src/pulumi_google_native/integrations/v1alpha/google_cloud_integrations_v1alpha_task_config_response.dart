// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_integrations_v1alpha_coordinate_response.dart';
import 'google_cloud_integrations_v1alpha_failure_policy_response.dart';
import 'google_cloud_integrations_v1alpha_next_task_response.dart';
import 'google_cloud_integrations_v1alpha_success_policy_response.dart';

/// The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.
class GoogleCloudIntegrationsV1alphaTaskConfigResponse {
  /// Optional. User-provided description intended to give additional business context about the task.
  final String description;

  /// Optional. User-provided label that is attached to this TaskConfig in the UI.
  final String displayName;

  /// Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final String errorCatcherId;

  /// Optional. External task type of the task
  final String externalTaskType;

  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  final GoogleCloudIntegrationsV1alphaFailurePolicyResponse failurePolicy;

  /// Optional. If set, overrides the option configured in the Task implementation class.
  final String jsonValidationOption;

  /// Optional. The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  final List<GoogleCloudIntegrationsV1alphaNextTaskResponse> nextTasks;

  /// Optional. The policy dictating the execution of the next set of tasks for the current task.
  final String nextTasksExecutionPolicy;

  /// Optional. The customized parameters the user can pass to this task.
  final Map<String, String> parameters;

  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final GoogleCloudIntegrationsV1alphaCoordinateResponse position;

  /// Optional. Determines what action to take upon successful task completion.
  final GoogleCloudIntegrationsV1alphaSuccessPolicyResponse successPolicy;

  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  final GoogleCloudIntegrationsV1alphaFailurePolicyResponse
      synchronousCallFailurePolicy;

  /// Optional. The name for the task.
  final String task;

  /// Optional. The policy dictating the execution strategy of this task.
  final String taskExecutionStrategy;

  /// The identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_id`).
  final String taskId;

  /// Optional. Used to define task-template name if task is of type task-template
  final String taskTemplate;

  GoogleCloudIntegrationsV1alphaTaskConfigResponse({
    required this.description,
    required this.displayName,
    required this.errorCatcherId,
    required this.externalTaskType,
    required this.failurePolicy,
    required this.jsonValidationOption,
    required this.nextTasks,
    required this.nextTasksExecutionPolicy,
    required this.parameters,
    required this.position,
    required this.successPolicy,
    required this.synchronousCallFailurePolicy,
    required this.task,
    required this.taskExecutionStrategy,
    required this.taskId,
    required this.taskTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['displayName'] = displayName;
    map['errorCatcherId'] = errorCatcherId;
    map['externalTaskType'] = externalTaskType;
    map['failurePolicy'] = failurePolicy.toMap();
    map['jsonValidationOption'] = jsonValidationOption;
    map['nextTasks'] = Input.encodeList<
        GoogleCloudIntegrationsV1alphaNextTaskResponse,
        Map<String, dynamic>>(nextTasks, (value) => value.toMap());
    map['nextTasksExecutionPolicy'] = nextTasksExecutionPolicy;
    map['parameters'] = parameters;
    map['position'] = position.toMap();
    map['successPolicy'] = successPolicy.toMap();
    map['synchronousCallFailurePolicy'] = synchronousCallFailurePolicy.toMap();
    map['task'] = task;
    map['taskExecutionStrategy'] = taskExecutionStrategy;
    map['taskId'] = taskId;
    map['taskTemplate'] = taskTemplate;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaTaskConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaTaskConfigResponse(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      errorCatcherId: map['errorCatcherId'] as String,
      externalTaskType: map['externalTaskType'] as String,
      failurePolicy:
          GoogleCloudIntegrationsV1alphaFailurePolicyResponse.fromMap(
              (map['failurePolicy'] as Map).cast<String, dynamic>()),
      jsonValidationOption: map['jsonValidationOption'] as String,
      nextTasks:
          Input.decodeList<GoogleCloudIntegrationsV1alphaNextTaskResponse>(
              map['nextTasks'],
              (value) => GoogleCloudIntegrationsV1alphaNextTaskResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nextTasksExecutionPolicy: map['nextTasksExecutionPolicy'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      position: GoogleCloudIntegrationsV1alphaCoordinateResponse.fromMap(
          (map['position'] as Map).cast<String, dynamic>()),
      successPolicy:
          GoogleCloudIntegrationsV1alphaSuccessPolicyResponse.fromMap(
              (map['successPolicy'] as Map).cast<String, dynamic>()),
      synchronousCallFailurePolicy:
          GoogleCloudIntegrationsV1alphaFailurePolicyResponse.fromMap(
              (map['synchronousCallFailurePolicy'] as Map)
                  .cast<String, dynamic>()),
      task: map['task'] as String,
      taskExecutionStrategy: map['taskExecutionStrategy'] as String,
      taskId: map['taskId'] as String,
      taskTemplate: map['taskTemplate'] as String,
    );
  }
}
