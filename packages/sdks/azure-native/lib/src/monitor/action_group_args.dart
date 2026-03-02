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
      actionGroupName: map['actionGroupName'] == null ? null : (map['actionGroupName']! as String).input(),
      armRoleReceivers: map['armRoleReceivers'] == null ? null : (pulumi.Input.decodeList<ArmRoleReceiver>(map['armRoleReceivers']!, (value) => ArmRoleReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      automationRunbookReceivers: map['automationRunbookReceivers'] == null ? null : (pulumi.Input.decodeList<AutomationRunbookReceiver>(map['automationRunbookReceivers']!, (value) => AutomationRunbookReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      azureAppPushReceivers: map['azureAppPushReceivers'] == null ? null : (pulumi.Input.decodeList<AzureAppPushReceiver>(map['azureAppPushReceivers']!, (value) => AzureAppPushReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      azureFunctionReceivers: map['azureFunctionReceivers'] == null ? null : (pulumi.Input.decodeList<AzureFunctionReceiver>(map['azureFunctionReceivers']!, (value) => AzureFunctionReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      emailReceivers: map['emailReceivers'] == null ? null : (pulumi.Input.decodeList<EmailReceiver>(map['emailReceivers']!, (value) => EmailReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: (map['enabled'] as bool).input(),
      eventHubReceivers: map['eventHubReceivers'] == null ? null : (pulumi.Input.decodeList<EventHubReceiver>(map['eventHubReceivers']!, (value) => EventHubReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      groupShortName: (map['groupShortName'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      incidentReceivers: map['incidentReceivers'] == null ? null : (pulumi.Input.decodeList<IncidentReceiver>(map['incidentReceivers']!, (value) => IncidentReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      itsmReceivers: map['itsmReceivers'] == null ? null : (pulumi.Input.decodeList<ItsmReceiver>(map['itsmReceivers']!, (value) => ItsmReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logicAppReceivers: map['logicAppReceivers'] == null ? null : (pulumi.Input.decodeList<LogicAppReceiver>(map['logicAppReceivers']!, (value) => LogicAppReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      smsReceivers: map['smsReceivers'] == null ? null : (pulumi.Input.decodeList<SmsReceiver>(map['smsReceivers']!, (value) => SmsReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      voiceReceivers: map['voiceReceivers'] == null ? null : (pulumi.Input.decodeList<VoiceReceiver>(map['voiceReceivers']!, (value) => VoiceReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webhookReceivers: map['webhookReceivers'] == null ? null : (pulumi.Input.decodeList<WebhookReceiver>(map['webhookReceivers']!, (value) => WebhookReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

