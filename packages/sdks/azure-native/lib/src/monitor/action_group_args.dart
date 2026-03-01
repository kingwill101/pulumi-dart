// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_role_receiver.dart';
import 'automation_runbook_receiver.dart';
import 'azure_app_push_receiver.dart';
import 'azure_function_receiver.dart';
import 'email_receiver.dart';
import 'event_hub_receiver.dart';
import 'incident_receiver.dart';
import 'itsm_receiver.dart';
import 'logic_app_receiver.dart';
import 'managed_service_identity.dart';
import 'sms_receiver.dart';
import 'voice_receiver.dart';
import 'webhook_receiver.dart';

/// {@template pulumi_monitor_action_group_args_doc}
/// The set of arguments for ActionGroup.
/// {@endtemplate}
/// {@macro pulumi_monitor_action_group_args_doc}
class ActionGroupArgs {
  /// The name of the action group.
  final pulumi.Input<String>? actionGroupName;
  /// The list of ARM role receivers that are part of this action group. Roles are Azure RBAC roles and only built-in roles are supported.
  final pulumi.Input<List<ArmRoleReceiver>>? armRoleReceivers;
  /// The list of AutomationRunbook receivers that are part of this action group.
  final pulumi.Input<List<AutomationRunbookReceiver>>? automationRunbookReceivers;
  /// The list of AzureAppPush receivers that are part of this action group.
  final pulumi.Input<List<AzureAppPushReceiver>>? azureAppPushReceivers;
  /// The list of azure function receivers that are part of this action group.
  final pulumi.Input<List<AzureFunctionReceiver>>? azureFunctionReceivers;
  /// The list of email receivers that are part of this action group.
  final pulumi.Input<List<EmailReceiver>>? emailReceivers;
  /// Indicates whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications.
  final pulumi.Input<bool> enabled;
  /// The list of event hub receivers that are part of this action group.
  final pulumi.Input<List<EventHubReceiver>>? eventHubReceivers;
  /// The short name of the action group. This will be used in SMS messages.
  final pulumi.Input<String> groupShortName;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The list of incident receivers that are part of this action group.
  final pulumi.Input<List<IncidentReceiver>>? incidentReceivers;
  /// The list of ITSM receivers that are part of this action group.
  final pulumi.Input<List<ItsmReceiver>>? itsmReceivers;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The list of logic app receivers that are part of this action group.
  final pulumi.Input<List<LogicAppReceiver>>? logicAppReceivers;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The list of SMS receivers that are part of this action group.
  final pulumi.Input<List<SmsReceiver>>? smsReceivers;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// The list of voice receivers that are part of this action group.
  final pulumi.Input<List<VoiceReceiver>>? voiceReceivers;
  /// The list of webhook receivers that are part of this action group.
  final pulumi.Input<List<WebhookReceiver>>? webhookReceivers;

  /// Creates a new [ActionGroupArgs].
  /// [actionGroupName] The name of the action group.
  /// [armRoleReceivers] The list of ARM role receivers that are part of this action group. Roles are Azure RBAC roles and only built-in roles are supported.
  /// [automationRunbookReceivers] The list of AutomationRunbook receivers that are part of this action group.
  /// [azureAppPushReceivers] The list of AzureAppPush receivers that are part of this action group.
  /// [azureFunctionReceivers] The list of azure function receivers that are part of this action group.
  /// [emailReceivers] The list of email receivers that are part of this action group.
  /// [enabled] Indicates whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications.
  /// [eventHubReceivers] The list of event hub receivers that are part of this action group.
  /// [groupShortName] The short name of the action group. This will be used in SMS messages.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [incidentReceivers] The list of incident receivers that are part of this action group.
  /// [itsmReceivers] The list of ITSM receivers that are part of this action group.
  /// [location] Resource location
  /// [logicAppReceivers] The list of logic app receivers that are part of this action group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [smsReceivers] The list of SMS receivers that are part of this action group.
  /// [tags] Resource tags
  /// [voiceReceivers] The list of voice receivers that are part of this action group.
  /// [webhookReceivers] The list of webhook receivers that are part of this action group.
  ActionGroupArgs({
    pulumi.Output<String>? actionGroupName,
    pulumi.Output<List<ArmRoleReceiver>>? armRoleReceivers,
    pulumi.Output<List<AutomationRunbookReceiver>>? automationRunbookReceivers,
    pulumi.Output<List<AzureAppPushReceiver>>? azureAppPushReceivers,
    pulumi.Output<List<AzureFunctionReceiver>>? azureFunctionReceivers,
    pulumi.Output<List<EmailReceiver>>? emailReceivers,
    required pulumi.Output<bool> enabled,
    pulumi.Output<List<EventHubReceiver>>? eventHubReceivers,
    required pulumi.Output<String> groupShortName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<List<IncidentReceiver>>? incidentReceivers,
    pulumi.Output<List<ItsmReceiver>>? itsmReceivers,
    pulumi.Output<String>? location,
    pulumi.Output<List<LogicAppReceiver>>? logicAppReceivers,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<SmsReceiver>>? smsReceivers,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<VoiceReceiver>>? voiceReceivers,
    pulumi.Output<List<WebhookReceiver>>? webhookReceivers,
  }) :
      actionGroupName = pulumi.Input.asOptionalInput<String>(actionGroupName),
      armRoleReceivers = pulumi.Input.asOptionalInput<List<ArmRoleReceiver>>(armRoleReceivers),
      automationRunbookReceivers = pulumi.Input.asOptionalInput<List<AutomationRunbookReceiver>>(automationRunbookReceivers),
      azureAppPushReceivers = pulumi.Input.asOptionalInput<List<AzureAppPushReceiver>>(azureAppPushReceivers),
      azureFunctionReceivers = pulumi.Input.asOptionalInput<List<AzureFunctionReceiver>>(azureFunctionReceivers),
      emailReceivers = pulumi.Input.asOptionalInput<List<EmailReceiver>>(emailReceivers),
      enabled = pulumi.Input.asInput<bool>(enabled),
      eventHubReceivers = pulumi.Input.asOptionalInput<List<EventHubReceiver>>(eventHubReceivers),
      groupShortName = pulumi.Input.asInput<String>(groupShortName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      incidentReceivers = pulumi.Input.asOptionalInput<List<IncidentReceiver>>(incidentReceivers),
      itsmReceivers = pulumi.Input.asOptionalInput<List<ItsmReceiver>>(itsmReceivers),
      location = pulumi.Input.asOptionalInput<String>(location),
      logicAppReceivers = pulumi.Input.asOptionalInput<List<LogicAppReceiver>>(logicAppReceivers),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      smsReceivers = pulumi.Input.asOptionalInput<List<SmsReceiver>>(smsReceivers),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      voiceReceivers = pulumi.Input.asOptionalInput<List<VoiceReceiver>>(voiceReceivers),
      webhookReceivers = pulumi.Input.asOptionalInput<List<WebhookReceiver>>(webhookReceivers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroupName': ?actionGroupName,
      'armRoleReceivers': ?pulumi.Input.mapOptionalInputValue<List<ArmRoleReceiver>, List<Map<String, dynamic>>>(armRoleReceivers, (value) => pulumi.Input.encodeList<ArmRoleReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'automationRunbookReceivers': ?pulumi.Input.mapOptionalInputValue<List<AutomationRunbookReceiver>, List<Map<String, dynamic>>>(automationRunbookReceivers, (value) => pulumi.Input.encodeList<AutomationRunbookReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureAppPushReceivers': ?pulumi.Input.mapOptionalInputValue<List<AzureAppPushReceiver>, List<Map<String, dynamic>>>(azureAppPushReceivers, (value) => pulumi.Input.encodeList<AzureAppPushReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'azureFunctionReceivers': ?pulumi.Input.mapOptionalInputValue<List<AzureFunctionReceiver>, List<Map<String, dynamic>>>(azureFunctionReceivers, (value) => pulumi.Input.encodeList<AzureFunctionReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emailReceivers': ?pulumi.Input.mapOptionalInputValue<List<EmailReceiver>, List<Map<String, dynamic>>>(emailReceivers, (value) => pulumi.Input.encodeList<EmailReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'eventHubReceivers': ?pulumi.Input.mapOptionalInputValue<List<EventHubReceiver>, List<Map<String, dynamic>>>(eventHubReceivers, (value) => pulumi.Input.encodeList<EventHubReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupShortName': groupShortName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'incidentReceivers': ?pulumi.Input.mapOptionalInputValue<List<IncidentReceiver>, List<Map<String, dynamic>>>(incidentReceivers, (value) => pulumi.Input.encodeList<IncidentReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'itsmReceivers': ?pulumi.Input.mapOptionalInputValue<List<ItsmReceiver>, List<Map<String, dynamic>>>(itsmReceivers, (value) => pulumi.Input.encodeList<ItsmReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'logicAppReceivers': ?pulumi.Input.mapOptionalInputValue<List<LogicAppReceiver>, List<Map<String, dynamic>>>(logicAppReceivers, (value) => pulumi.Input.encodeList<LogicAppReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'smsReceivers': ?pulumi.Input.mapOptionalInputValue<List<SmsReceiver>, List<Map<String, dynamic>>>(smsReceivers, (value) => pulumi.Input.encodeList<SmsReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'voiceReceivers': ?pulumi.Input.mapOptionalInputValue<List<VoiceReceiver>, List<Map<String, dynamic>>>(voiceReceivers, (value) => pulumi.Input.encodeList<VoiceReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookReceivers': ?pulumi.Input.mapOptionalInputValue<List<WebhookReceiver>, List<Map<String, dynamic>>>(webhookReceivers, (value) => pulumi.Input.encodeList<WebhookReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return ActionGroupArgs(
      actionGroupName: map['actionGroupName'] == null ? null : pulumi.Output.create<String>(map['actionGroupName'] as String),
      armRoleReceivers: map['armRoleReceivers'] == null ? null : pulumi.Output.create<List<ArmRoleReceiver>>(pulumi.Input.decodeList<ArmRoleReceiver>(map['armRoleReceivers'], (value) => ArmRoleReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      automationRunbookReceivers: map['automationRunbookReceivers'] == null ? null : pulumi.Output.create<List<AutomationRunbookReceiver>>(pulumi.Input.decodeList<AutomationRunbookReceiver>(map['automationRunbookReceivers'], (value) => AutomationRunbookReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      azureAppPushReceivers: map['azureAppPushReceivers'] == null ? null : pulumi.Output.create<List<AzureAppPushReceiver>>(pulumi.Input.decodeList<AzureAppPushReceiver>(map['azureAppPushReceivers'], (value) => AzureAppPushReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      azureFunctionReceivers: map['azureFunctionReceivers'] == null ? null : pulumi.Output.create<List<AzureFunctionReceiver>>(pulumi.Input.decodeList<AzureFunctionReceiver>(map['azureFunctionReceivers'], (value) => AzureFunctionReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      emailReceivers: map['emailReceivers'] == null ? null : pulumi.Output.create<List<EmailReceiver>>(pulumi.Input.decodeList<EmailReceiver>(map['emailReceivers'], (value) => EmailReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      eventHubReceivers: map['eventHubReceivers'] == null ? null : pulumi.Output.create<List<EventHubReceiver>>(pulumi.Input.decodeList<EventHubReceiver>(map['eventHubReceivers'], (value) => EventHubReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      groupShortName: pulumi.Output.create<String>(map['groupShortName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      incidentReceivers: map['incidentReceivers'] == null ? null : pulumi.Output.create<List<IncidentReceiver>>(pulumi.Input.decodeList<IncidentReceiver>(map['incidentReceivers'], (value) => IncidentReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      itsmReceivers: map['itsmReceivers'] == null ? null : pulumi.Output.create<List<ItsmReceiver>>(pulumi.Input.decodeList<ItsmReceiver>(map['itsmReceivers'], (value) => ItsmReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logicAppReceivers: map['logicAppReceivers'] == null ? null : pulumi.Output.create<List<LogicAppReceiver>>(pulumi.Input.decodeList<LogicAppReceiver>(map['logicAppReceivers'], (value) => LogicAppReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      smsReceivers: map['smsReceivers'] == null ? null : pulumi.Output.create<List<SmsReceiver>>(pulumi.Input.decodeList<SmsReceiver>(map['smsReceivers'], (value) => SmsReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      voiceReceivers: map['voiceReceivers'] == null ? null : pulumi.Output.create<List<VoiceReceiver>>(pulumi.Input.decodeList<VoiceReceiver>(map['voiceReceivers'], (value) => VoiceReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      webhookReceivers: map['webhookReceivers'] == null ? null : pulumi.Output.create<List<WebhookReceiver>>(pulumi.Input.decodeList<WebhookReceiver>(map['webhookReceivers'], (value) => WebhookReceiver.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

