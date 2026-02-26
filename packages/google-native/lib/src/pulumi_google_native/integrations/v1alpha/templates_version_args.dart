// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enterprise_crm_eventbus_proto_teardown.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameters.dart';
import 'google_cloud_integrations_v1alpha_error_catcher_config.dart';
import 'templates_version_database_persistence_policy.dart';

/// The set of arguments for TemplatesVersion.
class TemplatesVersionArgs {
  /// Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  final Input<TemplatesVersionDatabasePersistencePolicy>?
      databasePersistencePolicy;

  /// Optional. The templateversion description. Permitted format is alphanumeric with underscores and no spaces.
  final Input<String>? description;

  /// Optional. Error Catch Task configuration for the IntegrationTemplateVersion. It's optional.
  final Input<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>?
      errorCatcherConfigs;
  final Input<String> integrationtemplateId;

  /// Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final Input<String>? lastModifierEmail;
  final Input<String>? location;

  /// Optional. ID of the IntegrationVersion that was used to create this IntegrationTemplateVersion
  final Input<String>? parentIntegrationVersionId;
  final Input<String> productId;
  final Input<String>? project;

  /// Optional. Task configuration for the IntegrationTemplateVersion. It's optional, but the IntegrationTemplateVersion doesn't do anything without task_configs.
  final Input<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>? taskConfigs;

  /// Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  final Input<EnterpriseCrmEventbusProtoTeardown>? teardown;

  /// Optional. Parameters that are expected to be passed to the IntegrationTemplateVersion when an event is triggered. This consists of all the parameters that are expected in the IntegrationTemplateVersion execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final Input<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>?
      templateParameters;

  /// Optional. Trigger configurations.
  final Input<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>?
      triggerConfigs;

  /// Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  final Input<String>? userLabel;

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
      map['databasePersistencePolicy'] = Input.mapOptionalInputValue<
          TemplatesVersionDatabasePersistencePolicy,
          String>(databasePersistencePolicyValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final errorCatcherConfigsValue = errorCatcherConfigs;
    if (errorCatcherConfigsValue != null) {
      map['errorCatcherConfigs'] = Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>,
              List<Map<String, dynamic>>>(
          errorCatcherConfigsValue,
          (value) => Input.encodeList<
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
      map['taskConfigs'] = Input.mapOptionalInputValue<
              List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>,
              List<Map<String, dynamic>>>(
          taskConfigsValue,
          (value) => Input.encodeList<
              EnterpriseCrmFrontendsEventbusProtoTaskConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final teardownValue = teardown;
    if (teardownValue != null) {
      map['teardown'] = Input.mapOptionalInputValue<
          EnterpriseCrmEventbusProtoTeardown,
          Map<String, dynamic>>(teardownValue, (value) => value.toMap());
    }
    final templateParametersValue = templateParameters;
    if (templateParametersValue != null) {
      map['templateParameters'] = Input.mapOptionalInputValue<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameters,
              Map<String, dynamic>>(
          templateParametersValue, (value) => value.toMap());
    }
    final triggerConfigsValue = triggerConfigs;
    if (triggerConfigsValue != null) {
      map['triggerConfigs'] = Input.mapOptionalInputValue<
              List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>,
              List<Map<String, dynamic>>>(
          triggerConfigsValue,
          (value) => Input.encodeList<
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
      databasePersistencePolicy:
          Input.asOptionalInput<TemplatesVersionDatabasePersistencePolicy>(
              map['databasePersistencePolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      errorCatcherConfigs: Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>(
          map['errorCatcherConfigs']),
      integrationtemplateId:
          Input.asInput<String>(map['integrationtemplateId']),
      lastModifierEmail:
          Input.asOptionalInput<String>(map['lastModifierEmail']),
      location: Input.asOptionalInput<String>(map['location']),
      parentIntegrationVersionId:
          Input.asOptionalInput<String>(map['parentIntegrationVersionId']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      taskConfigs: Input.asOptionalInput<
              List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>(
          map['taskConfigs']),
      teardown: Input.asOptionalInput<EnterpriseCrmEventbusProtoTeardown>(
          map['teardown']),
      templateParameters: Input.asOptionalInput<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>(
          map['templateParameters']),
      triggerConfigs: Input.asOptionalInput<
              List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>(
          map['triggerConfigs']),
      userLabel: Input.asOptionalInput<String>(map['userLabel']),
    );
  }
}
