// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_teardown.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameters.dart';
import 'google_cloud_integrations_v1alpha_error_catcher_config.dart';
import 'templates_version_database_persistence_policy.dart';

/// The set of arguments for TemplatesVersion.
class TemplatesVersionArgs {
  /// Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  final pulumi.Input<TemplatesVersionDatabasePersistencePolicy>?
      databasePersistencePolicy;

  /// Optional. The templateversion description. Permitted format is alphanumeric with underscores and no spaces.
  final pulumi.Input<String>? description;

  /// Optional. Error Catch Task configuration for the IntegrationTemplateVersion. It's optional.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>?
      errorCatcherConfigs;
  final pulumi.Input<String> integrationtemplateId;

  /// Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lastModifierEmail;
  final pulumi.Input<String>? location;

  /// Optional. ID of the IntegrationVersion that was used to create this IntegrationTemplateVersion
  final pulumi.Input<String>? parentIntegrationVersionId;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Optional. Task configuration for the IntegrationTemplateVersion. It's optional, but the IntegrationTemplateVersion doesn't do anything without task_configs.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>?
      taskConfigs;

  /// Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  final pulumi.Input<EnterpriseCrmEventbusProtoTeardown>? teardown;

  /// Optional. Parameters that are expected to be passed to the IntegrationTemplateVersion when an event is triggered. This consists of all the parameters that are expected in the IntegrationTemplateVersion execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>?
      templateParameters;

  /// Optional. Trigger configurations.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>?
      triggerConfigs;

  /// Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  final pulumi.Input<String>? userLabel;

  TemplatesVersionArgs({
    this.databasePersistencePolicy,
    this.description,
    this.errorCatcherConfigs,
    required this.integrationtemplateId,
    this.lastModifierEmail,
    this.location,
    this.parentIntegrationVersionId,
    required this.productId,
    this.project,
    this.taskConfigs,
    this.teardown,
    this.templateParameters,
    this.triggerConfigs,
    this.userLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databasePersistencePolicyValue = databasePersistencePolicy;
    if (databasePersistencePolicyValue != null) {
      map['databasePersistencePolicy'] = pulumi.Input.mapOptionalInputValue<
          TemplatesVersionDatabasePersistencePolicy,
          String>(databasePersistencePolicyValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final errorCatcherConfigsValue = errorCatcherConfigs;
    if (errorCatcherConfigsValue != null) {
      map['errorCatcherConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>,
              List<Map<String, dynamic>>>(
          errorCatcherConfigsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudIntegrationsV1alphaErrorCatcherConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['integrationtemplateId'] = integrationtemplateId;
    final lastModifierEmailValue = lastModifierEmail;
    if (lastModifierEmailValue != null) {
      map['lastModifierEmail'] = lastModifierEmailValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parentIntegrationVersionIdValue = parentIntegrationVersionId;
    if (parentIntegrationVersionIdValue != null) {
      map['parentIntegrationVersionId'] = parentIntegrationVersionIdValue;
    }
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final taskConfigsValue = taskConfigs;
    if (taskConfigsValue != null) {
      map['taskConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>,
              List<Map<String, dynamic>>>(
          taskConfigsValue,
          (value) => pulumi.Input.encodeList<
              EnterpriseCrmFrontendsEventbusProtoTaskConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final teardownValue = teardown;
    if (teardownValue != null) {
      map['teardown'] = pulumi.Input.mapOptionalInputValue<
          EnterpriseCrmEventbusProtoTeardown,
          Map<String, dynamic>>(teardownValue, (value) => value.toMap());
    }
    final templateParametersValue = templateParameters;
    if (templateParametersValue != null) {
      map['templateParameters'] = pulumi.Input.mapOptionalInputValue<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameters,
              Map<String, dynamic>>(
          templateParametersValue, (value) => value.toMap());
    }
    final triggerConfigsValue = triggerConfigs;
    if (triggerConfigsValue != null) {
      map['triggerConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>,
              List<Map<String, dynamic>>>(
          triggerConfigsValue,
          (value) => pulumi.Input.encodeList<
              EnterpriseCrmFrontendsEventbusProtoTriggerConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final userLabelValue = userLabel;
    if (userLabelValue != null) {
      map['userLabel'] = userLabelValue;
    }
    return map;
  }

  factory TemplatesVersionArgs.fromMap(Map<String, dynamic> map) {
    return TemplatesVersionArgs(
      databasePersistencePolicy: pulumi.Input.asOptionalInput<
              TemplatesVersionDatabasePersistencePolicy>(
          map['databasePersistencePolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      errorCatcherConfigs: pulumi.Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>(
          map['errorCatcherConfigs']),
      integrationtemplateId:
          pulumi.Input.asInput<String>(map['integrationtemplateId']),
      lastModifierEmail:
          pulumi.Input.asOptionalInput<String>(map['lastModifierEmail']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      parentIntegrationVersionId: pulumi.Input.asOptionalInput<String>(
          map['parentIntegrationVersionId']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      taskConfigs: pulumi.Input.asOptionalInput<
              List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>(
          map['taskConfigs']),
      teardown:
          pulumi.Input.asOptionalInput<EnterpriseCrmEventbusProtoTeardown>(
              map['teardown']),
      templateParameters: pulumi.Input.asOptionalInput<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>(
          map['templateParameters']),
      triggerConfigs: pulumi.Input.asOptionalInput<
              List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>(
          map['triggerConfigs']),
      userLabel: pulumi.Input.asOptionalInput<String>(map['userLabel']),
    );
  }
}
