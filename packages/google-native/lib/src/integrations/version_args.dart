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

/// {@template pulumi_integrations_v1alpha_version_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_version_args_doc}
class VersionArgs {
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

  /// Creates a new [VersionArgs].
  /// [cloudLoggingDetails] Optional. Cloud Logging details for the integration version
  /// [createSampleIntegrations] Optional. Optional. Indicates if sample workflow should be created.
  /// [databasePersistencePolicy] Optional. Flag to disable database persistence for execution data, including event execution info, execution export info, execution metadata index and execution param index.
  /// [description] Optional. The integration description.
  /// [errorCatcherConfigs] Optional. Error Catch Task configuration for the integration. It's optional.
  /// [integrationId] Required.
  /// [integrationParameters] Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  /// [integrationParametersInternal] Optional. Parameters that are expected to be passed to the integration when an event is triggered. This consists of all the parameters that are expected in the integration execution. This gives the user the ability to provide default values, add information like PII and also provide data types of each parameter.
  /// [lastModifierEmail] Optional. The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [location] Optional.
  /// [lockHolder] Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  /// [newIntegration] Set this flag to true, if draft version is to be created for a brand new integration. False, if the request is for an existing integration. For backward compatibility reasons, even if this flag is set to `false` and no existing integration is found, a new draft integration will still be created.
  /// [origin] Optional. The origin that indicates where this integration is coming from.
  /// [parentTemplateId] Optional. The id of the template which was used to create this integration_version.
  /// [productId] Required.
  /// [project] Optional.
  /// [runAsServiceAccount] Optional. The run-as service account email, if set and auth config is not configured, that will be used to generate auth token to be used in Connector task, Rest caller task and Cloud function task.
  /// [snapshotNumber] Optional. An increasing sequence that is set when a new snapshot is created. The last created snapshot can be identified by [workflow_name, org_id latest(snapshot_number)]. However, last created snapshot need not be same as the HEAD. So users should always use "HEAD" tag to identify the head.
  /// [taskConfigs] Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  /// [taskConfigsInternal] Optional. Task configuration for the integration. It's optional, but the integration doesn't do anything without task_configs.
  /// [teardown] Optional. Contains a graph of tasks that will be executed before putting the event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or failure, similar to "finally" in code.
  /// [triggerConfigs] Optional. Trigger configurations.
  /// [triggerConfigsInternal] Optional. Trigger configurations.
  /// [userLabel] Optional. A user-defined label that annotates an integration version. Typically, this is only set when the integration version is created.
  VersionArgs({
    GoogleCloudIntegrationsV1alphaCloudLoggingDetails? cloudLoggingDetails,
    bool? createSampleIntegrations,
    VersionDatabasePersistencePolicy? databasePersistencePolicy,
    String? description,
    List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>? errorCatcherConfigs,
    required String integrationId,
    List<GoogleCloudIntegrationsV1alphaIntegrationParameter>?
        integrationParameters,
    EnterpriseCrmFrontendsEventbusProtoWorkflowParameters?
        integrationParametersInternal,
    String? lastModifierEmail,
    String? location,
    String? lockHolder,
    bool? newIntegration,
    VersionOrigin? origin,
    String? parentTemplateId,
    required String productId,
    String? project,
    String? runAsServiceAccount,
    String? snapshotNumber,
    List<GoogleCloudIntegrationsV1alphaTaskConfig>? taskConfigs,
    List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>? taskConfigsInternal,
    EnterpriseCrmEventbusProtoTeardown? teardown,
    List<GoogleCloudIntegrationsV1alphaTriggerConfig>? triggerConfigs,
    List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>?
        triggerConfigsInternal,
    String? userLabel,
  })  : cloudLoggingDetails = pulumi.Input.asOptionalInput<
                GoogleCloudIntegrationsV1alphaCloudLoggingDetails>(
            cloudLoggingDetails),
        createSampleIntegrations =
            pulumi.Input.asOptionalInput<bool>(createSampleIntegrations),
        databasePersistencePolicy =
            pulumi.Input.asOptionalInput<VersionDatabasePersistencePolicy>(
                databasePersistencePolicy),
        description = pulumi.Input.asOptionalInput<String>(description),
        errorCatcherConfigs = pulumi.Input.asOptionalInput<
                List<GoogleCloudIntegrationsV1alphaErrorCatcherConfig>>(
            errorCatcherConfigs),
        integrationId = pulumi.Input.asInput<String>(integrationId),
        integrationParameters = pulumi.Input.asOptionalInput<
                List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>(
            integrationParameters),
        integrationParametersInternal = pulumi.Input.asOptionalInput<
                EnterpriseCrmFrontendsEventbusProtoWorkflowParameters>(
            integrationParametersInternal),
        lastModifierEmail =
            pulumi.Input.asOptionalInput<String>(lastModifierEmail),
        location = pulumi.Input.asOptionalInput<String>(location),
        lockHolder = pulumi.Input.asOptionalInput<String>(lockHolder),
        newIntegration = pulumi.Input.asOptionalInput<bool>(newIntegration),
        origin = pulumi.Input.asOptionalInput<VersionOrigin>(origin),
        parentTemplateId =
            pulumi.Input.asOptionalInput<String>(parentTemplateId),
        productId = pulumi.Input.asInput<String>(productId),
        project = pulumi.Input.asOptionalInput<String>(project),
        runAsServiceAccount =
            pulumi.Input.asOptionalInput<String>(runAsServiceAccount),
        snapshotNumber = pulumi.Input.asOptionalInput<String>(snapshotNumber),
        taskConfigs = pulumi.Input.asOptionalInput<
            List<GoogleCloudIntegrationsV1alphaTaskConfig>>(taskConfigs),
        taskConfigsInternal = pulumi.Input.asOptionalInput<
                List<EnterpriseCrmFrontendsEventbusProtoTaskConfig>>(
            taskConfigsInternal),
        teardown =
            pulumi.Input.asOptionalInput<EnterpriseCrmEventbusProtoTeardown>(
                teardown),
        triggerConfigs = pulumi.Input.asOptionalInput<
            List<GoogleCloudIntegrationsV1alphaTriggerConfig>>(triggerConfigs),
        triggerConfigsInternal = pulumi.Input.asOptionalInput<
                List<EnterpriseCrmFrontendsEventbusProtoTriggerConfig>>(
            triggerConfigsInternal),
        userLabel = pulumi.Input.asOptionalInput<String>(userLabel);

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

  factory VersionArgs.fromMap(Map<String, dynamic> map) {
    return VersionArgs(
      cloudLoggingDetails: map['cloudLoggingDetails'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaCloudLoggingDetails.fromMap(
              (map['cloudLoggingDetails'] as Map).cast<String, dynamic>()),
      createSampleIntegrations: map['createSampleIntegrations'] == null
          ? null
          : map['createSampleIntegrations'] as bool,
      databasePersistencePolicy: map['databasePersistencePolicy'] == null
          ? null
          : VersionDatabasePersistencePolicy.fromValue(
              map['databasePersistencePolicy'] as String),
      description:
          map['description'] == null ? null : map['description'] as String,
      errorCatcherConfigs: map['errorCatcherConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudIntegrationsV1alphaErrorCatcherConfig>(
              map['errorCatcherConfigs'],
              (value) =>
                  GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      integrationId: map['integrationId'] as String,
      integrationParameters: map['integrationParameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudIntegrationsV1alphaIntegrationParameter>(
              map['integrationParameters'],
              (value) =>
                  GoogleCloudIntegrationsV1alphaIntegrationParameter.fromMap(
                      (value as Map).cast<String, dynamic>())),
      integrationParametersInternal:
          map['integrationParametersInternal'] == null
              ? null
              : EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromMap(
                  (map['integrationParametersInternal'] as Map)
                      .cast<String, dynamic>()),
      lastModifierEmail: map['lastModifierEmail'] == null
          ? null
          : map['lastModifierEmail'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      lockHolder:
          map['lockHolder'] == null ? null : map['lockHolder'] as String,
      newIntegration:
          map['newIntegration'] == null ? null : map['newIntegration'] as bool,
      origin: map['origin'] == null
          ? null
          : VersionOrigin.fromValue(map['origin'] as String),
      parentTemplateId: map['parentTemplateId'] == null
          ? null
          : map['parentTemplateId'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runAsServiceAccount: map['runAsServiceAccount'] == null
          ? null
          : map['runAsServiceAccount'] as String,
      snapshotNumber: map['snapshotNumber'] == null
          ? null
          : map['snapshotNumber'] as String,
      taskConfigs: map['taskConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudIntegrationsV1alphaTaskConfig>(
              map['taskConfigs'],
              (value) => GoogleCloudIntegrationsV1alphaTaskConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      taskConfigsInternal: map['taskConfigsInternal'] == null
          ? null
          : pulumi.Input.decodeList<
                  EnterpriseCrmFrontendsEventbusProtoTaskConfig>(
              map['taskConfigsInternal'],
              (value) => EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      teardown: map['teardown'] == null
          ? null
          : EnterpriseCrmEventbusProtoTeardown.fromMap(
              (map['teardown'] as Map).cast<String, dynamic>()),
      triggerConfigs: map['triggerConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudIntegrationsV1alphaTriggerConfig>(
              map['triggerConfigs'],
              (value) => GoogleCloudIntegrationsV1alphaTriggerConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      triggerConfigsInternal: map['triggerConfigsInternal'] == null
          ? null
          : pulumi.Input.decodeList<
                  EnterpriseCrmFrontendsEventbusProtoTriggerConfig>(
              map['triggerConfigsInternal'],
              (value) =>
                  EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      userLabel: map['userLabel'] == null ? null : map['userLabel'] as String,
    );
  }
}
