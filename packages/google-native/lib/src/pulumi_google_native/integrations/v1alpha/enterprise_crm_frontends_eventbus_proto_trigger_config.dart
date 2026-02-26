// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enterprise_crm_eventbus_proto_cloud_scheduler_config.dart';
import 'enterprise_crm_eventbus_proto_coordinate.dart';
import 'enterprise_crm_eventbus_proto_next_task.dart';
import 'enterprise_crm_eventbus_proto_trigger_criteria.dart';
import 'enterprise_crm_eventbus_proto_workflow_alert_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config_next_tasks_execution_policy.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config_trigger_type.dart';

/// Configuration detail of a trigger. Next available id: 20
class EnterpriseCrmFrontendsEventbusProtoTriggerConfig {
  /// An alert threshold configuration for the [trigger + client + workflow] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + workflow] when published.
  final List<EnterpriseCrmEventbusProtoWorkflowAlertConfig>? alertConfig;
  final EnterpriseCrmEventbusProtoCloudSchedulerConfig? cloudSchedulerConfig;

  /// User-provided description intended to give more business context about the task.
  final String? description;

  /// The list of client ids which are enabled to execute the workflow using this trigger. In other words, these clients have the workflow execution privledges for this trigger. For API trigger, the client id in the incoming request is validated against the list of enabled clients. For non-API triggers, one workflow execution is triggered on behalf of each enabled client.
  final List<String> enabledClients;

  /// Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final String? errorCatcherId;

  /// The user created label for a particular trigger.
  final String? label;

  /// Dictates how next tasks will be executed.
  final EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy?
      nextTasksExecutionPolicy;

  /// Optional. If set to true, any upcoming requests for this trigger config will be paused and the executions will be resumed later when the flag is reset. The workflow to which this trigger config belongs has to be in ACTIVE status for the executions to be paused or resumed.
  final bool? pauseWorkflowExecutions;

  /// Optional. Informs the front-end application where to draw this trigger config on the UI.
  final EnterpriseCrmEventbusProtoCoordinate? position;

  /// Configurable properties of the trigger, not to be confused with workflow parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Cloud Pubsub triggers.
  final Map<String, String>? properties;

  /// Set of tasks numbers from where the workflow execution is started by this trigger. If this is empty, then workflow is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same workflow execution graph).
  final List<EnterpriseCrmEventbusProtoNextTask>? startTasks;

  /// Optional. When set, Eventbus will run the task specified in the trigger_criteria and validate the result using the trigger_criteria.condition, and only execute the workflow when result is true.
  final EnterpriseCrmEventbusProtoTriggerCriteria? triggerCriteria;

  /// The backend trigger ID.
  final String? triggerId;

  /// Optional. Name of the trigger This is added to identify the type of trigger. This is avoid the logic on triggerId to identify the trigger_type and push the same to monitoring.
  final String? triggerName;

  /// A number to uniquely identify each trigger config within the workflow on UI.
  final String triggerNumber;
  final EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType?
      triggerType;

  EnterpriseCrmFrontendsEventbusProtoTriggerConfig({
    this.alertConfig,
    this.cloudSchedulerConfig,
    this.description,
    required this.enabledClients,
    this.errorCatcherId,
    this.label,
    this.nextTasksExecutionPolicy,
    this.pauseWorkflowExecutions,
    this.position,
    this.properties,
    this.startTasks,
    this.triggerCriteria,
    this.triggerId,
    this.triggerName,
    required this.triggerNumber,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alertConfigValue = alertConfig;
    if (alertConfigValue != null) {
      map['alertConfig'] = Input.encodeList<
          EnterpriseCrmEventbusProtoWorkflowAlertConfig,
          Map<String, dynamic>>(alertConfigValue, (value) => value.toMap());
    }
    final cloudSchedulerConfigValue = cloudSchedulerConfig;
    if (cloudSchedulerConfigValue != null) {
      map['cloudSchedulerConfig'] = cloudSchedulerConfigValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['enabledClients'] = enabledClients;
    final errorCatcherIdValue = errorCatcherId;
    if (errorCatcherIdValue != null) {
      map['errorCatcherId'] = errorCatcherIdValue;
    }
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final nextTasksExecutionPolicyValue = nextTasksExecutionPolicy;
    if (nextTasksExecutionPolicyValue != null) {
      map['nextTasksExecutionPolicy'] = nextTasksExecutionPolicyValue.value;
    }
    final pauseWorkflowExecutionsValue = pauseWorkflowExecutions;
    if (pauseWorkflowExecutionsValue != null) {
      map['pauseWorkflowExecutions'] = pauseWorkflowExecutionsValue;
    }
    final positionValue = position;
    if (positionValue != null) {
      map['position'] = positionValue.toMap();
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final startTasksValue = startTasks;
    if (startTasksValue != null) {
      map['startTasks'] = Input.encodeList<EnterpriseCrmEventbusProtoNextTask,
          Map<String, dynamic>>(startTasksValue, (value) => value.toMap());
    }
    final triggerCriteriaValue = triggerCriteria;
    if (triggerCriteriaValue != null) {
      map['triggerCriteria'] = triggerCriteriaValue.toMap();
    }
    final triggerIdValue = triggerId;
    if (triggerIdValue != null) {
      map['triggerId'] = triggerIdValue;
    }
    final triggerNameValue = triggerName;
    if (triggerNameValue != null) {
      map['triggerName'] = triggerNameValue;
    }
    map['triggerNumber'] = triggerNumber;
    final triggerTypeValue = triggerType;
    if (triggerTypeValue != null) {
      map['triggerType'] = triggerTypeValue.value;
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTriggerConfig(
      alertConfig: map['alertConfig'] == null
          ? null
          : Input.decodeList<EnterpriseCrmEventbusProtoWorkflowAlertConfig>(
              map['alertConfig'],
              (value) => EnterpriseCrmEventbusProtoWorkflowAlertConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cloudSchedulerConfig: map['cloudSchedulerConfig'] == null
          ? null
          : EnterpriseCrmEventbusProtoCloudSchedulerConfig.fromMap(
              (map['cloudSchedulerConfig'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      enabledClients: (map['enabledClients'] as List).cast<String>(),
      errorCatcherId: map['errorCatcherId'] == null
          ? null
          : map['errorCatcherId'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      nextTasksExecutionPolicy: map['nextTasksExecutionPolicy'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy
              .fromValue(map['nextTasksExecutionPolicy'] as String),
      pauseWorkflowExecutions: map['pauseWorkflowExecutions'] == null
          ? null
          : map['pauseWorkflowExecutions'] as bool,
      position: map['position'] == null
          ? null
          : EnterpriseCrmEventbusProtoCoordinate.fromMap(
              (map['position'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      startTasks: map['startTasks'] == null
          ? null
          : Input.decodeList<EnterpriseCrmEventbusProtoNextTask>(
              map['startTasks'],
              (value) => EnterpriseCrmEventbusProtoNextTask.fromMap(
                  (value as Map).cast<String, dynamic>())),
      triggerCriteria: map['triggerCriteria'] == null
          ? null
          : EnterpriseCrmEventbusProtoTriggerCriteria.fromMap(
              (map['triggerCriteria'] as Map).cast<String, dynamic>()),
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
      triggerName:
          map['triggerName'] == null ? null : map['triggerName'] as String,
      triggerNumber: map['triggerNumber'] as String,
      triggerType: map['triggerType'] == null
          ? null
          : EnterpriseCrmFrontendsEventbusProtoTriggerConfigTriggerType
              .fromValue(map['triggerType'] as String),
    );
  }
}
