// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_coordinate_response.dart';
import 'enterprise_crm_eventbus_proto_failure_policy_response.dart';
import 'enterprise_crm_eventbus_proto_next_task_response.dart';
import 'enterprise_crm_eventbus_proto_success_policy_response.dart';
import 'enterprise_crm_eventbus_proto_task_alert_config_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_rollback_strategy_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_entity_response.dart';

/// The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.
class EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse {
  /// Alert configurations on error rate, warning rate, number of runs, durations, etc.
  final List<EnterpriseCrmEventbusProtoTaskAlertConfigResponse> alertConfigs;

  /// Auto-generated.
  final String createTime;

  /// The creator's email address. Auto-generated from the user's email.
  final String creatorEmail;

  /// User-provided description intended to give more business context about the task.
  final String description;

  /// If this config contains a TypedTask, allow validation to succeed if an input is read from the output of another TypedTask whose output type is declared as a superclass of the requested input type. For instance, if the previous task declares an output of type Message, any task with this flag enabled will pass validation when attempting to read any proto Message type from the resultant Event parameter.
  final bool disableStrictTypeValidation;

  /// Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final String errorCatcherId;
  final String externalTaskType;

  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  final EnterpriseCrmEventbusProtoFailurePolicyResponse failurePolicy;

  /// The number of edges leading into this TaskConfig.
  final int incomingEdgeCount;

  /// If set, overrides the option configured in the Task implementation class.
  final String jsonValidationOption;

  /// User-provided label that is attached to this TaskConfig in the UI.
  final String label;

  /// Auto-generated.
  final String lastModifiedTime;

  /// The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  final List<EnterpriseCrmEventbusProtoNextTaskResponse> nextTasks;

  /// The policy dictating the execution of the next set of tasks for the current task.
  final String nextTasksExecutionPolicy;

  /// The customized parameters the user can pass to this task.
  final Map<String, String> parameters;

  /// Optional. Informs the front-end application where to draw this task config on the UI.
  final EnterpriseCrmEventbusProtoCoordinateResponse position;

  /// Optional. Standard filter expression evaluated before execution. Independent of other conditions and tasks. Can be used to enable rollout. e.g. "rollout(5)" will only allow 5% of incoming traffic to task.
  final String precondition;

  /// Optional. User-provided label that is attached to precondition in the UI.
  final String preconditionLabel;

  /// Optional. Contains information about what needs to be done upon failure (either a permanent error or after it has been retried too many times).
  final EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse
      rollbackStrategy;

  /// Determines what action to take upon successful task completion.
  final EnterpriseCrmEventbusProtoSuccessPolicyResponse successPolicy;

  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  final EnterpriseCrmEventbusProtoFailurePolicyResponse
      synchronousCallFailurePolicy;

  /// Copy of the task entity that this task config is an instance of.
  final EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse taskEntity;

  /// The policy dictating the execution strategy of this task.
  final String taskExecutionStrategy;

  /// The name for the task.
  final String taskName;

  /// REQUIRED: the identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_number`).
  final String taskNumber;

  /// A string template that allows user to configure task parameters (with either literal default values or tokens which will be resolved at execution time) for the task. It will eventually replace the old "parameters" field.
  final String taskSpec;

  /// Used to define task-template name if task is of type task-template
  final String taskTemplateName;

  /// Defines the type of the task
  final String taskType;

  EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse({
    required this.alertConfigs,
    required this.createTime,
    required this.creatorEmail,
    required this.description,
    required this.disableStrictTypeValidation,
    required this.errorCatcherId,
    required this.externalTaskType,
    required this.failurePolicy,
    required this.incomingEdgeCount,
    required this.jsonValidationOption,
    required this.label,
    required this.lastModifiedTime,
    required this.nextTasks,
    required this.nextTasksExecutionPolicy,
    required this.parameters,
    required this.position,
    required this.precondition,
    required this.preconditionLabel,
    required this.rollbackStrategy,
    required this.successPolicy,
    required this.synchronousCallFailurePolicy,
    required this.taskEntity,
    required this.taskExecutionStrategy,
    required this.taskName,
    required this.taskNumber,
    required this.taskSpec,
    required this.taskTemplateName,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alertConfigs'] = pulumi.Input.encodeList<
        EnterpriseCrmEventbusProtoTaskAlertConfigResponse,
        Map<String, dynamic>>(alertConfigs, (value) => value.toMap());
    map['createTime'] = createTime;
    map['creatorEmail'] = creatorEmail;
    map['description'] = description;
    map['disableStrictTypeValidation'] = disableStrictTypeValidation;
    map['errorCatcherId'] = errorCatcherId;
    map['externalTaskType'] = externalTaskType;
    map['failurePolicy'] = failurePolicy.toMap();
    map['incomingEdgeCount'] = incomingEdgeCount;
    map['jsonValidationOption'] = jsonValidationOption;
    map['label'] = label;
    map['lastModifiedTime'] = lastModifiedTime;
    map['nextTasks'] = pulumi.Input.encodeList<
        EnterpriseCrmEventbusProtoNextTaskResponse,
        Map<String, dynamic>>(nextTasks, (value) => value.toMap());
    map['nextTasksExecutionPolicy'] = nextTasksExecutionPolicy;
    map['parameters'] = parameters;
    map['position'] = position.toMap();
    map['precondition'] = precondition;
    map['preconditionLabel'] = preconditionLabel;
    map['rollbackStrategy'] = rollbackStrategy.toMap();
    map['successPolicy'] = successPolicy.toMap();
    map['synchronousCallFailurePolicy'] = synchronousCallFailurePolicy.toMap();
    map['taskEntity'] = taskEntity.toMap();
    map['taskExecutionStrategy'] = taskExecutionStrategy;
    map['taskName'] = taskName;
    map['taskNumber'] = taskNumber;
    map['taskSpec'] = taskSpec;
    map['taskTemplateName'] = taskTemplateName;
    map['taskType'] = taskType;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTaskConfigResponse(
      alertConfigs: pulumi.Input.decodeList<
              EnterpriseCrmEventbusProtoTaskAlertConfigResponse>(
          map['alertConfigs'],
          (value) => EnterpriseCrmEventbusProtoTaskAlertConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      creatorEmail: map['creatorEmail'] as String,
      description: map['description'] as String,
      disableStrictTypeValidation: map['disableStrictTypeValidation'] as bool,
      errorCatcherId: map['errorCatcherId'] as String,
      externalTaskType: map['externalTaskType'] as String,
      failurePolicy: EnterpriseCrmEventbusProtoFailurePolicyResponse.fromMap(
          (map['failurePolicy'] as Map).cast<String, dynamic>()),
      incomingEdgeCount: map['incomingEdgeCount'] as int,
      jsonValidationOption: map['jsonValidationOption'] as String,
      label: map['label'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      nextTasks:
          pulumi.Input.decodeList<EnterpriseCrmEventbusProtoNextTaskResponse>(
              map['nextTasks'],
              (value) => EnterpriseCrmEventbusProtoNextTaskResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nextTasksExecutionPolicy: map['nextTasksExecutionPolicy'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      position: EnterpriseCrmEventbusProtoCoordinateResponse.fromMap(
          (map['position'] as Map).cast<String, dynamic>()),
      precondition: map['precondition'] as String,
      preconditionLabel: map['preconditionLabel'] as String,
      rollbackStrategy:
          EnterpriseCrmFrontendsEventbusProtoRollbackStrategyResponse.fromMap(
              (map['rollbackStrategy'] as Map).cast<String, dynamic>()),
      successPolicy: EnterpriseCrmEventbusProtoSuccessPolicyResponse.fromMap(
          (map['successPolicy'] as Map).cast<String, dynamic>()),
      synchronousCallFailurePolicy:
          EnterpriseCrmEventbusProtoFailurePolicyResponse.fromMap(
              (map['synchronousCallFailurePolicy'] as Map)
                  .cast<String, dynamic>()),
      taskEntity: EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse.fromMap(
          (map['taskEntity'] as Map).cast<String, dynamic>()),
      taskExecutionStrategy: map['taskExecutionStrategy'] as String,
      taskName: map['taskName'] as String,
      taskNumber: map['taskNumber'] as String,
      taskSpec: map['taskSpec'] as String,
      taskTemplateName: map['taskTemplateName'] as String,
      taskType: map['taskType'] as String,
    );
  }
}
