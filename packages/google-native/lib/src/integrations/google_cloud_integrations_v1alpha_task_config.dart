// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_coordinate.dart';
import 'google_cloud_integrations_v1alpha_failure_policy.dart';
import 'google_cloud_integrations_v1alpha_next_task.dart';
import 'google_cloud_integrations_v1alpha_success_policy.dart';
import 'google_cloud_integrations_v1alpha_task_config_external_task_type.dart';
import 'google_cloud_integrations_v1alpha_task_config_json_validation_option.dart';
import 'google_cloud_integrations_v1alpha_task_config_next_tasks_execution_policy.dart';
import 'google_cloud_integrations_v1alpha_task_config_task_execution_strategy.dart';

/// The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.
class GoogleCloudIntegrationsV1alphaTaskConfig {
  /// Optional. User-provided description intended to give additional business context about the task.
  final String? description;

  /// Optional. User-provided label that is attached to this TaskConfig in the UI.
  final String? displayName;

  /// Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final String? errorCatcherId;

  /// Optional. External task type of the task
  final GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType?
  externalTaskType;

  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  final GoogleCloudIntegrationsV1alphaFailurePolicy? failurePolicy;

  /// Optional. If set, overrides the option configured in the Task implementation class.
  final GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption?
  jsonValidationOption;

  /// Optional. The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  final List<GoogleCloudIntegrationsV1alphaNextTask>? nextTasks;

  /// Optional. The policy dictating the execution of the next set of tasks for the current task.
  final GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy?
  nextTasksExecutionPolicy;

  /// Optional. The customized parameters the user can pass to this task.
  final Map<String, String>? parameters;

  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final GoogleCloudIntegrationsV1alphaCoordinate? position;

  /// Optional. Determines what action to take upon successful task completion.
  final GoogleCloudIntegrationsV1alphaSuccessPolicy? successPolicy;

  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  final GoogleCloudIntegrationsV1alphaFailurePolicy?
  synchronousCallFailurePolicy;

  /// Optional. The name for the task.
  final String? task;

  /// Optional. The policy dictating the execution strategy of this task.
  final GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy?
  taskExecutionStrategy;

  /// The identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_id`).
  final String taskId;

  /// Optional. Used to define task-template name if task is of type task-template
  final String? taskTemplate;

  /// Creates a new [GoogleCloudIntegrationsV1alphaTaskConfig].
  /// [description] Optional. User-provided description intended to give additional business context about the task.
  /// [displayName] Optional. User-provided label that is attached to this TaskConfig in the UI.
  /// [errorCatcherId] Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  /// [externalTaskType] Optional. External task type of the task
  /// [failurePolicy] Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  /// [jsonValidationOption] Optional. If set, overrides the option configured in the Task implementation class.
  /// [nextTasks] Optional. The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  /// [nextTasksExecutionPolicy] Optional. The policy dictating the execution of the next set of tasks for the current task.
  /// [parameters] Optional. The customized parameters the user can pass to this task.
  /// [position] Optional. Informs the front-end application where to draw this error catcher config on the UI.
  /// [successPolicy] Optional. Determines what action to take upon successful task completion.
  /// [synchronousCallFailurePolicy] Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  /// [task] Optional. The name for the task.
  /// [taskExecutionStrategy] Optional. The policy dictating the execution strategy of this task.
  /// [taskId] The identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_id`).
  /// [taskTemplate] Optional. Used to define task-template name if task is of type task-template
  GoogleCloudIntegrationsV1alphaTaskConfig({
    this.description,
    this.displayName,
    this.errorCatcherId,
    this.externalTaskType,
    this.failurePolicy,
    this.jsonValidationOption,
    this.nextTasks,
    this.nextTasksExecutionPolicy,
    this.parameters,
    this.position,
    this.successPolicy,
    this.synchronousCallFailurePolicy,
    this.task,
    this.taskExecutionStrategy,
    required this.taskId,
    this.taskTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'errorCatcherId': ?errorCatcherId,
      'externalTaskType': ?externalTaskType == null
          ? null
          : externalTaskType!.value,
      'failurePolicy': ?failurePolicy == null ? null : failurePolicy!.toMap(),
      'jsonValidationOption': ?jsonValidationOption == null
          ? null
          : jsonValidationOption!.value,
      'nextTasks': ?nextTasks == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudIntegrationsV1alphaNextTask,
              Map<String, dynamic>
            >(nextTasks!, (value) => value.toMap()),
      'nextTasksExecutionPolicy': ?nextTasksExecutionPolicy == null
          ? null
          : nextTasksExecutionPolicy!.value,
      'parameters': ?parameters,
      'position': ?position == null ? null : position!.toMap(),
      'successPolicy': ?successPolicy == null ? null : successPolicy!.toMap(),
      'synchronousCallFailurePolicy': ?synchronousCallFailurePolicy == null
          ? null
          : synchronousCallFailurePolicy!.toMap(),
      'task': ?task,
      'taskExecutionStrategy': ?taskExecutionStrategy == null
          ? null
          : taskExecutionStrategy!.value,
      'taskId': taskId,
      'taskTemplate': ?taskTemplate,
    };
  }

  factory GoogleCloudIntegrationsV1alphaTaskConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaTaskConfig(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      errorCatcherId: map['errorCatcherId'] == null
          ? null
          : map['errorCatcherId'] as String,
      externalTaskType: map['externalTaskType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaTaskConfigExternalTaskType.fromValue(
              map['externalTaskType'] as String,
            ),
      failurePolicy: map['failurePolicy'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaFailurePolicy.fromMap(
              (map['failurePolicy'] as Map).cast<String, dynamic>(),
            ),
      jsonValidationOption: map['jsonValidationOption'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaTaskConfigJsonValidationOption.fromValue(
              map['jsonValidationOption'] as String,
            ),
      nextTasks: map['nextTasks'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaNextTask>(
              map['nextTasks'],
              (value) => GoogleCloudIntegrationsV1alphaNextTask.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      nextTasksExecutionPolicy: map['nextTasksExecutionPolicy'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaTaskConfigNextTasksExecutionPolicy.fromValue(
              map['nextTasksExecutionPolicy'] as String,
            ),
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      position: map['position'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaCoordinate.fromMap(
              (map['position'] as Map).cast<String, dynamic>(),
            ),
      successPolicy: map['successPolicy'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaSuccessPolicy.fromMap(
              (map['successPolicy'] as Map).cast<String, dynamic>(),
            ),
      synchronousCallFailurePolicy: map['synchronousCallFailurePolicy'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaFailurePolicy.fromMap(
              (map['synchronousCallFailurePolicy'] as Map)
                  .cast<String, dynamic>(),
            ),
      task: map['task'] == null ? null : map['task'] as String,
      taskExecutionStrategy: map['taskExecutionStrategy'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy.fromValue(
              map['taskExecutionStrategy'] as String,
            ),
      taskId: map['taskId'] as String,
      taskTemplate: map['taskTemplate'] == null
          ? null
          : map['taskTemplate'] as String,
    );
  }
}
