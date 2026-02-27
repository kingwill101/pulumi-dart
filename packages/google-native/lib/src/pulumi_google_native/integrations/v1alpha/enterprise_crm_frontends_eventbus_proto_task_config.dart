// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_coordinate.dart';
import 'enterprise_crm_eventbus_proto_failure_policy.dart';
import 'enterprise_crm_eventbus_proto_next_task.dart';
import 'enterprise_crm_eventbus_proto_success_policy.dart';
import 'enterprise_crm_eventbus_proto_task_alert_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_rollback_strategy.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_external_task_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_json_validation_option.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_next_tasks_execution_policy.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_task_execution_strategy.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config_task_type.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_entity.dart';

/// The task configuration details. This is not the implementation of Task. There might be multiple TaskConfigs for the same Task.
class EnterpriseCrmFrontendsEventbusProtoTaskConfig {
  /// Alert configurations on error rate, warning rate, number of runs, durations, etc.
  final List<EnterpriseCrmEventbusProtoTaskAlertConfig>? alertConfigs;

  /// Auto-generated.
  final String? createTime;

  /// The creator's email address. Auto-generated from the user's email.
  final String? creatorEmail;

  /// User-provided description intended to give more business context about the task.
  final String? description;

  /// If this config contains a TypedTask, allow validation to succeed if an input is read from the output of another TypedTask whose output type is declared as a superclass of the requested input type. For instance, if the previous task declares an output of type Message, any task with this flag enabled will pass validation when attempting to read any proto Message type from the resultant Event parameter.
  final bool? disableStrictTypeValidation;

  /// Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final String? errorCatcherId;
  final EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType?
      externalTaskType;

  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for asynchronous calls to Eventbus alone (Post To Queue, Schedule etc.).
  final EnterpriseCrmEventbusProtoFailurePolicy? failurePolicy;

  /// The number of edges leading into this TaskConfig.
  final int? incomingEdgeCount;

  /// If set, overrides the option configured in the Task implementation class.
  final EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption?
      jsonValidationOption;

  /// User-provided label that is attached to this TaskConfig in the UI.
  final String? label;

  /// Auto-generated.
  final String? lastModifiedTime;

  /// The set of tasks that are next in line to be executed as per the execution graph defined for the parent event, specified by `event_config_id`. Each of these next tasks are executed only if the condition associated with them evaluates to true.
  final List<EnterpriseCrmEventbusProtoNextTask>? nextTasks;

  /// The policy dictating the execution of the next set of tasks for the current task.
  final EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy?
      nextTasksExecutionPolicy;

  /// The customized parameters the user can pass to this task.
  final Map<String, String>? parameters;

  /// Optional. Informs the front-end application where to draw this task config on the UI.
  final EnterpriseCrmEventbusProtoCoordinate? position;

  /// Optional. Standard filter expression evaluated before execution. Independent of other conditions and tasks. Can be used to enable rollout. e.g. "rollout(5)" will only allow 5% of incoming traffic to task.
  final String? precondition;

  /// Optional. User-provided label that is attached to precondition in the UI.
  final String? preconditionLabel;

  /// Optional. Contains information about what needs to be done upon failure (either a permanent error or after it has been retried too many times).
  final EnterpriseCrmFrontendsEventbusProtoRollbackStrategy? rollbackStrategy;

  /// Determines what action to take upon successful task completion.
  final EnterpriseCrmEventbusProtoSuccessPolicy? successPolicy;

  /// Optional. Determines the number of times the task will be retried on failure and with what retry strategy. This is applicable for synchronous calls to Eventbus alone (Post).
  final EnterpriseCrmEventbusProtoFailurePolicy? synchronousCallFailurePolicy;

  /// Copy of the task entity that this task config is an instance of.
  final EnterpriseCrmFrontendsEventbusProtoTaskEntity? taskEntity;

  /// The policy dictating the execution strategy of this task.
  final EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy?
      taskExecutionStrategy;

  /// The name for the task.
  final String? taskName;

  /// REQUIRED: the identifier of this task within its parent event config, specified by the client. This should be unique among all the tasks belong to the same event config. We use this field as the identifier to find next tasks (via field `next_tasks.task_number`).
  final String? taskNumber;

  /// A string template that allows user to configure task parameters (with either literal default values or tokens which will be resolved at execution time) for the task. It will eventually replace the old "parameters" field.
  final String? taskSpec;

  /// Used to define task-template name if task is of type task-template
  final String? taskTemplateName;

  /// Defines the type of the task
  final EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType? taskType;

  EnterpriseCrmFrontendsEventbusProtoTaskConfig({
    this.alertConfigs,
    this.createTime,
    this.creatorEmail,
    this.description,
    this.disableStrictTypeValidation,
    this.errorCatcherId,
    this.externalTaskType,
    this.failurePolicy,
    this.incomingEdgeCount,
    this.jsonValidationOption,
    this.label,
    this.lastModifiedTime,
    this.nextTasks,
    this.nextTasksExecutionPolicy,
    this.parameters,
    this.position,
    this.precondition,
    this.preconditionLabel,
    this.rollbackStrategy,
    this.successPolicy,
    this.synchronousCallFailurePolicy,
    this.taskEntity,
    this.taskExecutionStrategy,
    this.taskName,
    this.taskNumber,
    this.taskSpec,
    this.taskTemplateName,
    this.taskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alertConfigsValue = alertConfigs;
    if (alertConfigsValue != null) {
      map['alertConfigs'] = pulumi.Input.encodeList<
          EnterpriseCrmEventbusProtoTaskAlertConfig,
          Map<String, dynamic>>(alertConfigsValue, (value) => value.toMap());
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final creatorEmailValue = creatorEmail;
    if (creatorEmailValue != null) {
      map['creatorEmail'] = creatorEmailValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableStrictTypeValidationValue = disableStrictTypeValidation;
    if (disableStrictTypeValidationValue != null) {
      map['disableStrictTypeValidation'] = disableStrictTypeValidationValue;
    }
    final errorCatcherIdValue = errorCatcherId;
    if (errorCatcherIdValue != null) {
      map['errorCatcherId'] = errorCatcherIdValue;
    }
    final externalTaskTypeValue = externalTaskType;
    if (externalTaskTypeValue != null) {
      map['externalTaskType'] = externalTaskTypeValue.value;
    }
    final failurePolicyValue = failurePolicy;
    if (failurePolicyValue != null) {
      map['failurePolicy'] = failurePolicyValue.toMap();
    }
    final incomingEdgeCountValue = incomingEdgeCount;
    if (incomingEdgeCountValue != null) {
      map['incomingEdgeCount'] = incomingEdgeCountValue;
    }
    final jsonValidationOptionValue = jsonValidationOption;
    if (jsonValidationOptionValue != null) {
      map['jsonValidationOption'] = jsonValidationOptionValue.value;
    }
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final lastModifiedTimeValue = lastModifiedTime;
    if (lastModifiedTimeValue != null) {
      map['lastModifiedTime'] = lastModifiedTimeValue;
    }
    final nextTasksValue = nextTasks;
    if (nextTasksValue != null) {
      map['nextTasks'] = pulumi.Input.encodeList<
          EnterpriseCrmEventbusProtoNextTask,
          Map<String, dynamic>>(nextTasksValue, (value) => value.toMap());
    }
    final nextTasksExecutionPolicyValue = nextTasksExecutionPolicy;
    if (nextTasksExecutionPolicyValue != null) {
      map['nextTasksExecutionPolicy'] = nextTasksExecutionPolicyValue.value;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final positionValue = position;
    if (positionValue != null) {
      map['position'] = positionValue.toMap();
    }
    final preconditionValue = precondition;
    if (preconditionValue != null) {
      map['precondition'] = preconditionValue;
    }
    final preconditionLabelValue = preconditionLabel;
    if (preconditionLabelValue != null) {
      map['preconditionLabel'] = preconditionLabelValue;
    }
    final rollbackStrategyValue = rollbackStrategy;
    if (rollbackStrategyValue != null) {
      map['rollbackStrategy'] = rollbackStrategyValue.toMap();
    }
    final successPolicyValue = successPolicy;
    if (successPolicyValue != null) {
      map['successPolicy'] = successPolicyValue.toMap();
    }
    final synchronousCallFailurePolicyValue = synchronousCallFailurePolicy;
    if (synchronousCallFailurePolicyValue != null) {
      map['synchronousCallFailurePolicy'] =
          synchronousCallFailurePolicyValue.toMap();
    }
    final taskEntityValue = taskEntity;
    if (taskEntityValue != null) {
      map['taskEntity'] = taskEntityValue.toMap();
    }
    final taskExecutionStrategyValue = taskExecutionStrategy;
    if (taskExecutionStrategyValue != null) {
      map['taskExecutionStrategy'] = taskExecutionStrategyValue.value;
    }
    final taskNameValue = taskName;
    if (taskNameValue != null) {
      map['taskName'] = taskNameValue;
    }
    final taskNumberValue = taskNumber;
    if (taskNumberValue != null) {
      map['taskNumber'] = taskNumberValue;
    }
    final taskSpecValue = taskSpec;
    if (taskSpecValue != null) {
      map['taskSpec'] = taskSpecValue;
    }
    final taskTemplateNameValue = taskTemplateName;
    if (taskTemplateNameValue != null) {
      map['taskTemplateName'] = taskTemplateNameValue;
    }
    final taskTypeValue = taskType;
    if (taskTypeValue != null) {
      map['taskType'] = taskTypeValue.value;
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTaskConfig(
      alertConfigs: map['alertConfigs'] == null
          ? null
          : pulumi.Input.decodeList<EnterpriseCrmEventbusProtoTaskAlertConfig>(
              map['alertConfigs'],
              (value) => EnterpriseCrmEventbusProtoTaskAlertConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      creatorEmail:
          map['creatorEmail'] == null ? null : map['creatorEmail'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      disableStrictTypeValidation: map['disableStrictTypeValidation'] == null
          ? null
          : map['disableStrictTypeValidation'] as bool,
      errorCatcherId: map['errorCatcherId'] == null
          ? null
          : map['errorCatcherId'] as String,
      externalTaskType: map['externalTaskType'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTaskConfigExternalTaskType
              .fromValue(map['externalTaskType'] as String),
      failurePolicy: map['failurePolicy'] == null
          ? null
          : EnterpriseCrmEventbusProtoFailurePolicy.fromMap(
              (map['failurePolicy'] as Map).cast<String, dynamic>()),
      incomingEdgeCount: map['incomingEdgeCount'] == null
          ? null
          : map['incomingEdgeCount'] as int,
      jsonValidationOption: map['jsonValidationOption'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTaskConfigJsonValidationOption
              .fromValue(map['jsonValidationOption'] as String),
      label: map['label'] == null ? null : map['label'] as String,
      lastModifiedTime: map['lastModifiedTime'] == null
          ? null
          : map['lastModifiedTime'] as String,
      nextTasks: map['nextTasks'] == null
          ? null
          : pulumi.Input.decodeList<EnterpriseCrmEventbusProtoNextTask>(
              map['nextTasks'],
              (value) => EnterpriseCrmEventbusProtoNextTask.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nextTasksExecutionPolicy: map['nextTasksExecutionPolicy'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy
              .fromValue(map['nextTasksExecutionPolicy'] as String),
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      position: map['position'] == null
          ? null
          : EnterpriseCrmEventbusProtoCoordinate.fromMap(
              (map['position'] as Map).cast<String, dynamic>()),
      precondition:
          map['precondition'] == null ? null : map['precondition'] as String,
      preconditionLabel: map['preconditionLabel'] == null
          ? null
          : map['preconditionLabel'] as String,
      rollbackStrategy: map['rollbackStrategy'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.fromMap(
              (map['rollbackStrategy'] as Map).cast<String, dynamic>()),
      successPolicy: map['successPolicy'] == null
          ? null
          : EnterpriseCrmEventbusProtoSuccessPolicy.fromMap(
              (map['successPolicy'] as Map).cast<String, dynamic>()),
      synchronousCallFailurePolicy: map['synchronousCallFailurePolicy'] == null
          ? null
          : EnterpriseCrmEventbusProtoFailurePolicy.fromMap(
              (map['synchronousCallFailurePolicy'] as Map)
                  .cast<String, dynamic>()),
      taskEntity: map['taskEntity'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTaskEntity.fromMap(
              (map['taskEntity'] as Map).cast<String, dynamic>()),
      taskExecutionStrategy: map['taskExecutionStrategy'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy
              .fromValue(map['taskExecutionStrategy'] as String),
      taskName: map['taskName'] == null ? null : map['taskName'] as String,
      taskNumber:
          map['taskNumber'] == null ? null : map['taskNumber'] as String,
      taskSpec: map['taskSpec'] == null ? null : map['taskSpec'] as String,
      taskTemplateName: map['taskTemplateName'] == null
          ? null
          : map['taskTemplateName'] as String,
      taskType: map['taskType'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskType.fromValue(
              map['taskType'] as String),
    );
  }
}
