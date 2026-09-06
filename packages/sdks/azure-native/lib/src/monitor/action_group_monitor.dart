import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group_args.dart';
import 'arm_role_receiver_response.dart';
import 'automation_runbook_receiver_response.dart';
import 'azure_app_push_receiver_response.dart';
import 'azure_function_receiver_response.dart';
import 'email_receiver_response.dart';
import 'event_hub_receiver_response.dart';
import 'incident_receiver_response.dart';
import 'itsm_receiver_response.dart';
import 'logic_app_receiver_response.dart';
import 'managed_service_identity_response.dart';
import 'sms_receiver_response.dart';
import 'system_data_response.dart';
import 'voice_receiver_response.dart';
import 'webhook_receiver_response.dart';

/// An action group resource.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2018-03-01, 2022-06-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:monitor:ActionGroup SampleActionGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/actionGroups/{actionGroupName}
/// ```
class ActionGroupMonitor extends pulumi.CustomResource {
  /// The list of ARM role receivers that are part of this action group. Roles are Azure RBAC roles and only built-in roles are supported.
  late final pulumi.Output<List<ArmRoleReceiverResponse>?> armRoleReceivers;
  /// The list of AutomationRunbook receivers that are part of this action group.
  late final pulumi.Output<List<AutomationRunbookReceiverResponse>?> automationRunbookReceivers;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The list of AzureAppPush receivers that are part of this action group.
  late final pulumi.Output<List<AzureAppPushReceiverResponse>?> azureAppPushReceivers;
  /// The list of azure function receivers that are part of this action group.
  late final pulumi.Output<List<AzureFunctionReceiverResponse>?> azureFunctionReceivers;
  /// The list of email receivers that are part of this action group.
  late final pulumi.Output<List<EmailReceiverResponse>?> emailReceivers;
  /// Indicates whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications.
  late final pulumi.Output<bool> enabled;
  /// The list of event hub receivers that are part of this action group.
  late final pulumi.Output<List<EventHubReceiverResponse>?> eventHubReceivers;
  /// The short name of the action group. This will be used in SMS messages.
  late final pulumi.Output<String> groupShortName;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The list of incident receivers that are part of this action group.
  late final pulumi.Output<List<IncidentReceiverResponse>?> incidentReceivers;
  /// The list of ITSM receivers that are part of this action group.
  late final pulumi.Output<List<ItsmReceiverResponse>?> itsmReceivers;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The list of logic app receivers that are part of this action group.
  late final pulumi.Output<List<LogicAppReceiverResponse>?> logicAppReceivers;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of SMS receivers that are part of this action group.
  late final pulumi.Output<List<SmsReceiverResponse>?> smsReceivers;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The list of voice receivers that are part of this action group.
  late final pulumi.Output<List<VoiceReceiverResponse>?> voiceReceivers;
  /// The list of webhook receivers that are part of this action group.
  late final pulumi.Output<List<WebhookReceiverResponse>?> webhookReceivers;

  /// Creates a new [ActionGroupMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionGroupMonitor]. {@macro pulumi_monitor_action_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionGroupMonitor(
    String name, {
    ActionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:ActionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    armRoleReceivers = registerOutput<List<ArmRoleReceiverResponse>?>('armRoleReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArmRoleReceiverResponse>(guardedValue, (value) => ArmRoleReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    automationRunbookReceivers = registerOutput<List<AutomationRunbookReceiverResponse>?>('automationRunbookReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomationRunbookReceiverResponse>(guardedValue, (value) => AutomationRunbookReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureAppPushReceivers = registerOutput<List<AzureAppPushReceiverResponse>?>('azureAppPushReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureAppPushReceiverResponse>(guardedValue, (value) => AzureAppPushReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureFunctionReceivers = registerOutput<List<AzureFunctionReceiverResponse>?>('azureFunctionReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureFunctionReceiverResponse>(guardedValue, (value) => AzureFunctionReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    emailReceivers = registerOutput<List<EmailReceiverResponse>?>('emailReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailReceiverResponse>(guardedValue, (value) => EmailReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    eventHubReceivers = registerOutput<List<EventHubReceiverResponse>?>('eventHubReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventHubReceiverResponse>(guardedValue, (value) => EventHubReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    groupShortName = registerOutput<String>('groupShortName');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incidentReceivers = registerOutput<List<IncidentReceiverResponse>?>('incidentReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IncidentReceiverResponse>(guardedValue, (value) => IncidentReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    itsmReceivers = registerOutput<List<ItsmReceiverResponse>?>('itsmReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ItsmReceiverResponse>(guardedValue, (value) => ItsmReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    logicAppReceivers = registerOutput<List<LogicAppReceiverResponse>?>('logicAppReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogicAppReceiverResponse>(guardedValue, (value) => LogicAppReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    smsReceivers = registerOutput<List<SmsReceiverResponse>?>('smsReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SmsReceiverResponse>(guardedValue, (value) => SmsReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    voiceReceivers = registerOutput<List<VoiceReceiverResponse>?>('voiceReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceReceiverResponse>(guardedValue, (value) => VoiceReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    webhookReceivers = registerOutput<List<WebhookReceiverResponse>?>('webhookReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookReceiverResponse>(guardedValue, (value) => WebhookReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ActionGroupMonitor] resource.
  ActionGroupMonitor.reference(String urn)
    : super(
        'azure-native:monitor:ActionGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    armRoleReceivers = registerOutput<List<ArmRoleReceiverResponse>?>('armRoleReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ArmRoleReceiverResponse>(guardedValue, (value) => ArmRoleReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    automationRunbookReceivers = registerOutput<List<AutomationRunbookReceiverResponse>?>('automationRunbookReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomationRunbookReceiverResponse>(guardedValue, (value) => AutomationRunbookReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureAppPushReceivers = registerOutput<List<AzureAppPushReceiverResponse>?>('azureAppPushReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureAppPushReceiverResponse>(guardedValue, (value) => AzureAppPushReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureFunctionReceivers = registerOutput<List<AzureFunctionReceiverResponse>?>('azureFunctionReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureFunctionReceiverResponse>(guardedValue, (value) => AzureFunctionReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    emailReceivers = registerOutput<List<EmailReceiverResponse>?>('emailReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailReceiverResponse>(guardedValue, (value) => EmailReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    eventHubReceivers = registerOutput<List<EventHubReceiverResponse>?>('eventHubReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventHubReceiverResponse>(guardedValue, (value) => EventHubReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    groupShortName = registerOutput<String>('groupShortName');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    incidentReceivers = registerOutput<List<IncidentReceiverResponse>?>('incidentReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IncidentReceiverResponse>(guardedValue, (value) => IncidentReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    itsmReceivers = registerOutput<List<ItsmReceiverResponse>?>('itsmReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ItsmReceiverResponse>(guardedValue, (value) => ItsmReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    logicAppReceivers = registerOutput<List<LogicAppReceiverResponse>?>('logicAppReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogicAppReceiverResponse>(guardedValue, (value) => LogicAppReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    smsReceivers = registerOutput<List<SmsReceiverResponse>?>('smsReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SmsReceiverResponse>(guardedValue, (value) => SmsReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    voiceReceivers = registerOutput<List<VoiceReceiverResponse>?>('voiceReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceReceiverResponse>(guardedValue, (value) => VoiceReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    webhookReceivers = registerOutput<List<WebhookReceiverResponse>?>('webhookReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookReceiverResponse>(guardedValue, (value) => WebhookReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
