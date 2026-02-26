// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enterprise_crm_eventbus_proto_teardown.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_trigger_config.dart';
import 'enterprise_crm_frontends_eventbus_proto_workflow_parameters.dart';
import 'google_cloud_integrations_v1alpha_cloud_logging_details.dart';
import 'google_cloud_integrations_v1alpha_error_catcher_config.dart';
import 'google_cloud_integrations_v1alpha_integration_parameter.dart';
import 'google_cloud_integrations_v1alpha_task_config.dart';
import 'google_cloud_integrations_v1alpha_trigger_config.dart';
import 'version_database_persistence_policy.dart';
import 'version_origin.dart';

/// The set of arguments for Version.
class VersionArgs9 {
  /// Optional. Cloud Logging details for the integration version
  final Input<GoogleCloudIntegrationsV1alphaCloudLoggingDetails>?
      cloudLoggingDetails;

  /// Optional. Optional. Indicates if sample workflow should be created.
  final Input<bool>? createSampleIntegrations;

  /// Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  final Input<VersionDatabasePersistencePolicy>? databasePersistencePolicy;

  /// Optional. The integration description.
  final Input<String>? description;

  /// Optional. Error Catch Task configuration for the integration. It's optional.
  final Input<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>?
      errorCatcherConfigs;
  final Input<String> integrationId;

  /// Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final Input<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>?
      integrationParameters;

  /// Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final Input<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>?
      integrationParametersInternal;

  /// Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final Input<String>? lastModifierEmail;
  final Input<String>? location;

  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final Input<String>? lockHolder;

  /// Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an existing integration. For backward compatibility reasons, even if this flag is set to `false` and no existing integration is found, a new draft integration will still be created.
  final Input<bool>? newIntegration;

  /// Optional. The origin that indicates where this integration is coming from.
  final Input<VersionOrigin>? origin;

  /// Optional. The id of the template which was used to create this integration_version.
  final Input<String>? parentTemplateId;
  final Input<String> productId;
  final Input<String>? project;

  /// Optional. The run-as service account email, if set and auth config is not configured, that will be used to generate auth token to be used in Connector task, Rest caller task and Cloud function task.
  final Input<String>? runAsServiceAccount;

  /// Optional. An increasing sequence that is set when a new snapshot is created. The last created snapshot can be identified by [workflow_name, org_id latest(snapshot_number)]. However, last created snapshot need not be same as the HEAD. So users should always use "HEAD" tag to identify the head.
  final Input<String>? snapshotNumber;

  /// Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  final Input<List<GoogleCloudIntegrationsV1alphaTaskConfig>>? taskConfigs;

  /// Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  final Input<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>?
      taskConfigsInternal;

  /// Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  final Input<EnterpriseCrmEventbusProtoTeardown>? teardown;

  /// Optional. Trigger configurations.
  final Input<List<GoogleCloudIntegrationsV1alphaTriggerConfig>>?
      triggerConfigs;

  /// Optional. Trigger configurations.
  final Input<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>?
      triggerConfigsInternal;

  /// Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  final Input<String>? userLabel;

  VersionArgs9({
    this.cloudLoggingDetails,
    this.createSampleIntegrations,
    this.databasePersistencePolicy,
    this.description,
    this.errorCatcherConfigs,
    required this.integrationId,
    this.integrationParameters,
    this.integrationParametersInternal,
    this.lastModifierEmail,
    this.location,
    this.lockHolder,
    this.newIntegration,
    this.origin,
    this.parentTemplateId,
    required this.productId,
    this.project,
    this.runAsServiceAccount,
    this.snapshotNumber,
    this.taskConfigs,
    this.taskConfigsInternal,
    this.teardown,
    this.triggerConfigs,
    this.triggerConfigsInternal,
    this.userLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudLoggingDetailsValue = cloudLoggingDetails;
    if (cloudLoggingDetailsValue != null) {
      map['cloudLoggingDetails'] = Input.mapOptionalInputValue<
              GoogleCloudIntegrationsV1alphaCloudLoggingDetails,
              Map<String, dynamic>>(
          cloudLoggingDetailsValue, (value) => value.toMap());
    }
    final createSampleIntegrationsValue = createSampleIntegrations;
    if (createSampleIntegrationsValue != null) {
      map['createSampleIntegrations'] = createSampleIntegrationsValue;
    }
    final databasePersistencePolicyValue = databasePersistencePolicy;
    if (databasePersistencePolicyValue != null) {
      map['databasePersistencePolicy'] =
          Input.mapOptionalInputValue<VersionDatabasePersistencePolicy, String>(
              databasePersistencePolicyValue, (value) => value.value);
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
    map['integrationId'] = integrationId;
    final integrationParametersValue = integrationParameters;
    if (integrationParametersValue != null) {
      map['integrationParameters'] = Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaIntegrationParameter>,
              List<Map<String, dynamic>>>(
          integrationParametersValue,
          (value) => Input.encodeList<
              GoogleCloudIntegrationsV1alphaIntegrationParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final integrationParametersInternalValue = integrationParametersInternal;
    if (integrationParametersInternalValue != null) {
      map['integrationParametersInternal'] = Input.mapOptionalInputValue<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameters,
              Map<String, dynamic>>(
          integrationParametersInternalValue, (value) => value.toMap());
    }
    final lastModifierEmailValue = lastModifierEmail;
    if (lastModifierEmailValue != null) {
      map['lastModifierEmail'] = lastModifierEmailValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final lockHolderValue = lockHolder;
    if (lockHolderValue != null) {
      map['lockHolder'] = lockHolderValue;
    }
    final newIntegrationValue = newIntegration;
    if (newIntegrationValue != null) {
      map['newIntegration'] = newIntegrationValue;
    }
    final originValue = origin;
    if (originValue != null) {
      map['origin'] = Input.mapOptionalInputValue<VersionOrigin, String>(
          originValue, (value) => value.value);
    }
    final parentTemplateIdValue = parentTemplateId;
    if (parentTemplateIdValue != null) {
      map['parentTemplateId'] = parentTemplateIdValue;
    }
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final runAsServiceAccountValue = runAsServiceAccount;
    if (runAsServiceAccountValue != null) {
      map['runAsServiceAccount'] = runAsServiceAccountValue;
    }
    final snapshotNumberValue = snapshotNumber;
    if (snapshotNumberValue != null) {
      map['snapshotNumber'] = snapshotNumberValue;
    }
    final taskConfigsValue = taskConfigs;
    if (taskConfigsValue != null) {
      map['taskConfigs'] = Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaTaskConfig>,
              List<Map<String, dynamic>>>(
          taskConfigsValue,
          (value) => Input.encodeList<GoogleCloudIntegrationsV1alphaTaskConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final taskConfigsInternalValue = taskConfigsInternal;
    if (taskConfigsInternalValue != null) {
      map['taskConfigsInternal'] = Input.mapOptionalInputValue<
              List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>,
              List<Map<String, dynamic>>>(
          taskConfigsInternalValue,
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
    final triggerConfigsValue = triggerConfigs;
    if (triggerConfigsValue != null) {
      map['triggerConfigs'] = Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaTriggerConfig>,
              List<Map<String, dynamic>>>(
          triggerConfigsValue,
          (value) => Input.encodeList<
              GoogleCloudIntegrationsV1alphaTriggerConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final triggerConfigsInternalValue = triggerConfigsInternal;
    if (triggerConfigsInternalValue != null) {
      map['triggerConfigsInternal'] = Input.mapOptionalInputValue<
              List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>,
              List<Map<String, dynamic>>>(
          triggerConfigsInternalValue,
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

  factory VersionArgs9.fromMap(Map<String, dynamic> map) {
    return VersionArgs9(
      cloudLoggingDetails: Input.asOptionalInput<
              GoogleCloudIntegrationsV1alphaCloudLoggingDetails>(
          map['cloudLoggingDetails']),
      createSampleIntegrations:
          Input.asOptionalInput<bool>(map['createSampleIntegrations']),
      databasePersistencePolicy:
          Input.asOptionalInput<VersionDatabasePersistencePolicy>(
              map['databasePersistencePolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      errorCatcherConfigs: Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>(
          map['errorCatcherConfigs']),
      integrationId: Input.asInput<String>(map['integrationId']),
      integrationParameters: Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>(
          map['integrationParameters']),
      integrationParametersInternal: Input.asOptionalInput<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>(
          map['integrationParametersInternal']),
      lastModifierEmail:
          Input.asOptionalInput<String>(map['lastModifierEmail']),
      location: Input.asOptionalInput<String>(map['location']),
      lockHolder: Input.asOptionalInput<String>(map['lockHolder']),
      newIntegration: Input.asOptionalInput<bool>(map['newIntegration']),
      origin: Input.asOptionalInput<VersionOrigin>(map['origin']),
      parentTemplateId: Input.asOptionalInput<String>(map['parentTemplateId']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
      runAsServiceAccount:
          Input.asOptionalInput<String>(map['runAsServiceAccount']),
      snapshotNumber: Input.asOptionalInput<String>(map['snapshotNumber']),
      taskConfigs:
          Input.asOptionalInput<List<GoogleCloudIntegrationsV1alphaTaskConfig>>(
              map['taskConfigs']),
      taskConfigsInternal: Input.asOptionalInput<
              List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>(
          map['taskConfigsInternal']),
      teardown: Input.asOptionalInput<EnterpriseCrmEventbusProtoTeardown>(
          map['teardown']),
      triggerConfigs: Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaTriggerConfig>>(
          map['triggerConfigs']),
      triggerConfigsInternal: Input.asOptionalInput<
              List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>(
          map['triggerConfigsInternal']),
      userLabel: Input.asOptionalInput<String>(map['userLabel']),
    );
  }
}
