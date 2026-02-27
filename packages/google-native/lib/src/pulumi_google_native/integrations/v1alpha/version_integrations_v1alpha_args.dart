// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
class VersionIntegrationsV1alphaArgs {
  /// Optional. Cloud Logging details for the integration version
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCloudLoggingDetails>?
      cloudLoggingDetails;

  /// Optional. Optional. Indicates if sample workflow should be created.
  final pulumi.Input<bool>? createSampleIntegrations;

  /// Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  final pulumi.Input<VersionDatabasePersistencePolicy>?
      databasePersistencePolicy;

  /// Optional. The integration description.
  final pulumi.Input<String>? description;

  /// Optional. Error Catch Task configuration for the integration. It's optional.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>?
      errorCatcherConfigs;
  final pulumi.Input<String> integrationId;

  /// Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>?
      integrationParameters;

  /// Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>?
      integrationParametersInternal;

  /// Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lastModifierEmail;
  final pulumi.Input<String>? location;

  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lockHolder;

  /// Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an existing integration. For backward compatibility reasons, even if this flag is set to `false` and no existing integration is found, a new draft integration will still be created.
  final pulumi.Input<bool>? newIntegration;

  /// Optional. The origin that indicates where this integration is coming from.
  final pulumi.Input<VersionOrigin>? origin;

  /// Optional. The id of the template which was used to create this integration_version.
  final pulumi.Input<String>? parentTemplateId;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Optional. The run-as service account email, if set and auth config is not configured, that will be used to generate auth token to be used in Connector task, Rest caller task and Cloud function task.
  final pulumi.Input<String>? runAsServiceAccount;

  /// Optional. An increasing sequence that is set when a new snapshot is created. The last created snapshot can be identified by [workflow_name, org_id latest(snapshot_number)]. However, last created snapshot need not be same as the HEAD. So users should always use "HEAD" tag to identify the head.
  final pulumi.Input<String>? snapshotNumber;

  /// Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaTaskConfig>>?
      taskConfigs;

  /// Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>?
      taskConfigsInternal;

  /// Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  final pulumi.Input<EnterpriseCrmEventbusProtoTeardown>? teardown;

  /// Optional. Trigger configurations.
  final pulumi.Input<List<GoogleCloudIntegrationsV1alphaTriggerConfig>>?
      triggerConfigs;

  /// Optional. Trigger configurations.
  final pulumi.Input<List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>?
      triggerConfigsInternal;

  /// Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  final pulumi.Input<String>? userLabel;

  VersionIntegrationsV1alphaArgs({
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
      map['cloudLoggingDetails'] = pulumi.Input.mapOptionalInputValue<
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
      map['databasePersistencePolicy'] = pulumi.Input.mapOptionalInputValue<
          VersionDatabasePersistencePolicy,
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
    map['integrationId'] = integrationId;
    final integrationParametersValue = integrationParameters;
    if (integrationParametersValue != null) {
      map['integrationParameters'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaIntegrationParameter>,
              List<Map<String, dynamic>>>(
          integrationParametersValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudIntegrationsV1alphaIntegrationParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final integrationParametersInternalValue = integrationParametersInternal;
    if (integrationParametersInternalValue != null) {
      map['integrationParametersInternal'] = pulumi.Input.mapOptionalInputValue<
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
      map['origin'] = pulumi.Input.mapOptionalInputValue<VersionOrigin, String>(
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
      map['taskConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaTaskConfig>,
              List<Map<String, dynamic>>>(
          taskConfigsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudIntegrationsV1alphaTaskConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final taskConfigsInternalValue = taskConfigsInternal;
    if (taskConfigsInternalValue != null) {
      map['taskConfigsInternal'] = pulumi.Input.mapOptionalInputValue<
              List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>,
              List<Map<String, dynamic>>>(
          taskConfigsInternalValue,
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
    final triggerConfigsValue = triggerConfigs;
    if (triggerConfigsValue != null) {
      map['triggerConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaTriggerConfig>,
              List<Map<String, dynamic>>>(
          triggerConfigsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudIntegrationsV1alphaTriggerConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final triggerConfigsInternalValue = triggerConfigsInternal;
    if (triggerConfigsInternalValue != null) {
      map['triggerConfigsInternal'] = pulumi.Input.mapOptionalInputValue<
              List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>,
              List<Map<String, dynamic>>>(
          triggerConfigsInternalValue,
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

  factory VersionIntegrationsV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return VersionIntegrationsV1alphaArgs(
      cloudLoggingDetails: pulumi.Input.asOptionalInput<
              GoogleCloudIntegrationsV1alphaCloudLoggingDetails>(
          map['cloudLoggingDetails']),
      createSampleIntegrations:
          pulumi.Input.asOptionalInput<bool>(map['createSampleIntegrations']),
      databasePersistencePolicy:
          pulumi.Input.asOptionalInput<VersionDatabasePersistencePolicy>(
              map['databasePersistencePolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      errorCatcherConfigs: pulumi.Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>(
          map['errorCatcherConfigs']),
      integrationId: pulumi.Input.asInput<String>(map['integrationId']),
      integrationParameters: pulumi.Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>(
          map['integrationParameters']),
      integrationParametersInternal: pulumi.Input.asOptionalInput<
              EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>(
          map['integrationParametersInternal']),
      lastModifierEmail:
          pulumi.Input.asOptionalInput<String>(map['lastModifierEmail']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      lockHolder: pulumi.Input.asOptionalInput<String>(map['lockHolder']),
      newIntegration: pulumi.Input.asOptionalInput<bool>(map['newIntegration']),
      origin: pulumi.Input.asOptionalInput<VersionOrigin>(map['origin']),
      parentTemplateId:
          pulumi.Input.asOptionalInput<String>(map['parentTemplateId']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runAsServiceAccount:
          pulumi.Input.asOptionalInput<String>(map['runAsServiceAccount']),
      snapshotNumber:
          pulumi.Input.asOptionalInput<String>(map['snapshotNumber']),
      taskConfigs: pulumi.Input.asOptionalInput<
          List<GoogleCloudIntegrationsV1alphaTaskConfig>>(map['taskConfigs']),
      taskConfigsInternal: pulumi.Input.asOptionalInput<
              List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>(
          map['taskConfigsInternal']),
      teardown:
          pulumi.Input.asOptionalInput<EnterpriseCrmEventbusProtoTeardown>(
              map['teardown']),
      triggerConfigs: pulumi.Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaTriggerConfig>>(
          map['triggerConfigs']),
      triggerConfigsInternal: pulumi.Input.asOptionalInput<
              List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>(
          map['triggerConfigsInternal']),
      userLabel: pulumi.Input.asOptionalInput<String>(map['userLabel']),
    );
  }
}
