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
  const ActionGroupArgs({
    this.actionGroupName,
    this.armRoleReceivers,
    this.automationRunbookReceivers,
    this.azureAppPushReceivers,
    this.azureFunctionReceivers,
    this.emailReceivers,
    required this.enabled,
    this.eventHubReceivers,
    required this.groupShortName,
    this.identity,
    this.incidentReceivers,
    this.itsmReceivers,
    this.location,
    this.logicAppReceivers,
    required this.resourceGroupName,
    this.smsReceivers,
    this.tags,
    this.voiceReceivers,
    this.webhookReceivers,
  });

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
      actionGroupName: (() { final guardedValue = map['actionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      armRoleReceivers: (() { final guardedValue = map['armRoleReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArmRoleReceiver>(guardedValue, (value) => ArmRoleReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      automationRunbookReceivers: (() { final guardedValue = map['automationRunbookReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutomationRunbookReceiver>(guardedValue, (value) => AutomationRunbookReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      azureAppPushReceivers: (() { final guardedValue = map['azureAppPushReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureAppPushReceiver>(guardedValue, (value) => AzureAppPushReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      azureFunctionReceivers: (() { final guardedValue = map['azureFunctionReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureFunctionReceiver>(guardedValue, (value) => AzureFunctionReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      emailReceivers: (() { final guardedValue = map['emailReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmailReceiver>(guardedValue, (value) => EmailReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      eventHubReceivers: (() { final guardedValue = map['eventHubReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventHubReceiver>(guardedValue, (value) => EventHubReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groupShortName: pulumi.Input.fromValue(map['groupShortName'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      incidentReceivers: (() { final guardedValue = map['incidentReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IncidentReceiver>(guardedValue, (value) => IncidentReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      itsmReceivers: (() { final guardedValue = map['itsmReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ItsmReceiver>(guardedValue, (value) => ItsmReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicAppReceivers: (() { final guardedValue = map['logicAppReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogicAppReceiver>(guardedValue, (value) => LogicAppReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      smsReceivers: (() { final guardedValue = map['smsReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SmsReceiver>(guardedValue, (value) => SmsReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      voiceReceivers: (() { final guardedValue = map['voiceReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VoiceReceiver>(guardedValue, (value) => VoiceReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webhookReceivers: (() { final guardedValue = map['webhookReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebhookReceiver>(guardedValue, (value) => WebhookReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

