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
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The list of incident receivers that are part of this action group.
  late final pulumi.Output<List<IncidentReceiverResponse>?> incidentReceivers;
  /// The list of ITSM receivers that are part of this action group.
  late final pulumi.Output<List<ItsmReceiverResponse>?> itsmReceivers;
  /// Resource location
  late final pulumi.Output<String> location;
  /// The list of logic app receivers that are part of this action group.
  late final pulumi.Output<List<LogicAppReceiverResponse>?> logicAppReceivers;
  /// Azure resource name
  late final pulumi.Output<String> name;
  /// The list of SMS receivers that are part of this action group.
  late final pulumi.Output<List<SmsReceiverResponse>?> smsReceivers;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type
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
    this.armRoleReceivers = registerOutput<List<ArmRoleReceiverResponse>?>('armRoleReceivers');
    this.automationRunbookReceivers = registerOutput<List<AutomationRunbookReceiverResponse>?>('automationRunbookReceivers');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.azureAppPushReceivers = registerOutput<List<AzureAppPushReceiverResponse>?>('azureAppPushReceivers');
    this.azureFunctionReceivers = registerOutput<List<AzureFunctionReceiverResponse>?>('azureFunctionReceivers');
    this.emailReceivers = registerOutput<List<EmailReceiverResponse>?>('emailReceivers');
    this.enabled = registerOutput<bool>('enabled');
    this.eventHubReceivers = registerOutput<List<EventHubReceiverResponse>?>('eventHubReceivers');
    this.groupShortName = registerOutput<String>('groupShortName');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.incidentReceivers = registerOutput<List<IncidentReceiverResponse>?>('incidentReceivers');
    this.itsmReceivers = registerOutput<List<ItsmReceiverResponse>?>('itsmReceivers');
    this.location = registerOutput<String>('location');
    this.logicAppReceivers = registerOutput<List<LogicAppReceiverResponse>?>('logicAppReceivers');
    this.name = registerOutput<String>('name');
    this.smsReceivers = registerOutput<List<SmsReceiverResponse>?>('smsReceivers');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.voiceReceivers = registerOutput<List<VoiceReceiverResponse>?>('voiceReceivers');
    this.webhookReceivers = registerOutput<List<WebhookReceiverResponse>?>('webhookReceivers');
  }
}
