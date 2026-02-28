// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_cloud_scheduler_config.dart';
import 'google_cloud_integrations_v1alpha_coordinate.dart';
import 'google_cloud_integrations_v1alpha_integration_alert_config.dart';
import 'google_cloud_integrations_v1alpha_next_task.dart';
import 'google_cloud_integrations_v1alpha_trigger_config_next_tasks_execution_policy.dart';
import 'google_cloud_integrations_v1alpha_trigger_config_trigger_type.dart';

/// Configuration detail of a trigger.
class GoogleCloudIntegrationsV1alphaTriggerConfig {
  /// Optional. An alert threshold configuration for the [trigger + client + integration] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + integration] when published.
  final List<GoogleCloudIntegrationsV1alphaIntegrationAlertConfig>? alertConfig;
  /// Optional. Cloud Scheduler Trigger related metadata
  final GoogleCloudIntegrationsV1alphaCloudSchedulerConfig? cloudSchedulerConfig;
  /// Optional. User-provided description intended to give additional business context about the task.
  final String? description;
  /// Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  final String? errorCatcherId;
  /// Optional. The user created label for a particular trigger.
  final String? label;
  /// Optional. Dictates how next tasks will be executed.
  final GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy? nextTasksExecutionPolicy;
  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final GoogleCloudIntegrationsV1alphaCoordinate? position;
  /// Optional. Configurable properties of the trigger, not to be confused with integration parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Pub/sub triggers.
  final Map<String, String>? properties;
  /// Optional. Set of tasks numbers from where the integration execution is started by this trigger. If this is empty, then integration is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same integration execution graph).
  final List<GoogleCloudIntegrationsV1alphaNextTask>? startTasks;
  /// Optional. Name of the trigger. Example: "API Trigger", "Cloud Pub Sub Trigger" When set will be sent out to monitoring dashabord for tracking purpose.
  final String? trigger;
  /// Optional. The backend trigger ID.
  final String? triggerId;
  /// A number to uniquely identify each trigger config within the integration on UI.
  final String triggerNumber;
  /// Optional. Type of trigger
  final GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType? triggerType;

  /// Creates a new [GoogleCloudIntegrationsV1alphaTriggerConfig].
  /// [alertConfig] Optional. An alert threshold configuration for the [trigger + client + integration] tuple. If these values are not specified in the trigger config, default values will be populated by the system. Note that there must be exactly one alert threshold configured per [client + trigger + integration] when published.
  /// [cloudSchedulerConfig] Optional. Cloud Scheduler Trigger related metadata
  /// [description] Optional. User-provided description intended to give additional business context about the task.
  /// [errorCatcherId] Optional. Optional Error catcher id of the error catch flow which will be executed when execution error happens in the task
  /// [label] Optional. The user created label for a particular trigger.
  /// [nextTasksExecutionPolicy] Optional. Dictates how next tasks will be executed.
  /// [position] Optional. Informs the front-end application where to draw this error catcher config on the UI.
  /// [properties] Optional. Configurable properties of the trigger, not to be confused with integration parameters. E.g. "name" is a property for API triggers and "subscription" is a property for Pub/sub triggers.
  /// [startTasks] Optional. Set of tasks numbers from where the integration execution is started by this trigger. If this is empty, then integration is executed with default start tasks. In the list of start tasks, none of two tasks can have direct ancestor-descendant relationships (i.e. in a same integration execution graph).
  /// [trigger] Optional. Name of the trigger. Example: "API Trigger", "Cloud Pub Sub Trigger" When set will be sent out to monitoring dashabord for tracking purpose.
  /// [triggerId] Optional. The backend trigger ID.
  /// [triggerNumber] A number to uniquely identify each trigger config within the integration on UI.
  /// [triggerType] Optional. Type of trigger
  GoogleCloudIntegrationsV1alphaTriggerConfig({
    this.alertConfig,
    this.cloudSchedulerConfig,
    this.description,
    this.errorCatcherId,
    this.label,
    this.nextTasksExecutionPolicy,
    this.position,
    this.properties,
    this.startTasks,
    this.trigger,
    this.triggerId,
    required this.triggerNumber,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfig': ?alertConfig == null ? null : pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaIntegrationAlertConfig, Map<String, dynamic>>(alertConfig!, (value) => value.toMap()),
      'cloudSchedulerConfig': ?cloudSchedulerConfig == null ? null : cloudSchedulerConfig!.toMap(),
      'description': ?description,
      'errorCatcherId': ?errorCatcherId,
      'label': ?label,
      'nextTasksExecutionPolicy': ?nextTasksExecutionPolicy == null ? null : nextTasksExecutionPolicy!.value,
      'position': ?position == null ? null : position!.toMap(),
      'properties': ?properties,
      'startTasks': ?startTasks == null ? null : pulumi.Input.encodeList<GoogleCloudIntegrationsV1alphaNextTask, Map<String, dynamic>>(startTasks!, (value) => value.toMap()),
      'trigger': ?trigger,
      'triggerId': ?triggerId,
      'triggerNumber': triggerNumber,
      'triggerType': ?triggerType == null ? null : triggerType!.value,
    };
  }

  factory GoogleCloudIntegrationsV1alphaTriggerConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaTriggerConfig(
      alertConfig: map['alertConfig'] == null ? null : pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaIntegrationAlertConfig>(map['alertConfig'], (value) => GoogleCloudIntegrationsV1alphaIntegrationAlertConfig.fromMap((value as Map).cast<String, dynamic>())),
      cloudSchedulerConfig: map['cloudSchedulerConfig'] == null ? null : GoogleCloudIntegrationsV1alphaCloudSchedulerConfig.fromMap((map['cloudSchedulerConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      errorCatcherId: map['errorCatcherId'] == null ? null : map['errorCatcherId'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      nextTasksExecutionPolicy: map['nextTasksExecutionPolicy'] == null ? null : GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy.fromValue(map['nextTasksExecutionPolicy'] as String),
      position: map['position'] == null ? null : GoogleCloudIntegrationsV1alphaCoordinate.fromMap((map['position'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      startTasks: map['startTasks'] == null ? null : pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaNextTask>(map['startTasks'], (value) => GoogleCloudIntegrationsV1alphaNextTask.fromMap((value as Map).cast<String, dynamic>())),
      trigger: map['trigger'] == null ? null : map['trigger'] as String,
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
      triggerNumber: map['triggerNumber'] as String,
      triggerType: map['triggerType'] == null ? null : GoogleCloudIntegrationsV1alphaTriggerConfigTriggerType.fromValue(map['triggerType'] as String),
    );
  }
}

