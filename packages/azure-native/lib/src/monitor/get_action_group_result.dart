// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

/// Result data returned by getActionGroup.
class GetActionGroupResult {
  /// The list of ARM role receivers that are part of this action group. Roles are Azure RBAC roles and only built-in roles are supported.
  final List<ArmRoleReceiverResponse>? armRoleReceivers;
  /// The list of AutomationRunbook receivers that are part of this action group.
  final List<AutomationRunbookReceiverResponse>? automationRunbookReceivers;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of AzureAppPush receivers that are part of this action group.
  final List<AzureAppPushReceiverResponse>? azureAppPushReceivers;
  /// The list of azure function receivers that are part of this action group.
  final List<AzureFunctionReceiverResponse>? azureFunctionReceivers;
  /// The list of email receivers that are part of this action group.
  final List<EmailReceiverResponse>? emailReceivers;
  /// Indicates whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications.
  final bool enabled;
  /// The list of event hub receivers that are part of this action group.
  final List<EventHubReceiverResponse>? eventHubReceivers;
  /// The short name of the action group. This will be used in SMS messages.
  final String groupShortName;
  /// Azure resource Id
  final String id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// The list of incident receivers that are part of this action group.
  final List<IncidentReceiverResponse>? incidentReceivers;
  /// The list of ITSM receivers that are part of this action group.
  final List<ItsmReceiverResponse>? itsmReceivers;
  /// Resource location
  final String location;
  /// The list of logic app receivers that are part of this action group.
  final List<LogicAppReceiverResponse>? logicAppReceivers;
  /// Azure resource name
  final String name;
  /// The list of SMS receivers that are part of this action group.
  final List<SmsReceiverResponse>? smsReceivers;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure resource type
  final String type;
  /// The list of voice receivers that are part of this action group.
  final List<VoiceReceiverResponse>? voiceReceivers;
  /// The list of webhook receivers that are part of this action group.
  final List<WebhookReceiverResponse>? webhookReceivers;

  /// Creates a new [GetActionGroupResult].
  /// [armRoleReceivers] The list of ARM role receivers that are part of this action group. Roles are Azure RBAC roles and only built-in roles are supported.
  /// [automationRunbookReceivers] The list of AutomationRunbook receivers that are part of this action group.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureAppPushReceivers] The list of AzureAppPush receivers that are part of this action group.
  /// [azureFunctionReceivers] The list of azure function receivers that are part of this action group.
  /// [emailReceivers] The list of email receivers that are part of this action group.
  /// [enabled] Indicates whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications.
  /// [eventHubReceivers] The list of event hub receivers that are part of this action group.
  /// [groupShortName] The short name of the action group. This will be used in SMS messages.
  /// [id] Azure resource Id
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [incidentReceivers] The list of incident receivers that are part of this action group.
  /// [itsmReceivers] The list of ITSM receivers that are part of this action group.
  /// [location] Resource location
  /// [logicAppReceivers] The list of logic app receivers that are part of this action group.
  /// [name] Azure resource name
  /// [smsReceivers] The list of SMS receivers that are part of this action group.
  /// [tags] Resource tags
  /// [type] Azure resource type
  /// [voiceReceivers] The list of voice receivers that are part of this action group.
  /// [webhookReceivers] The list of webhook receivers that are part of this action group.
  GetActionGroupResult({
    this.armRoleReceivers,
    this.automationRunbookReceivers,
    required this.azureApiVersion,
    this.azureAppPushReceivers,
    this.azureFunctionReceivers,
    this.emailReceivers,
    required this.enabled,
    this.eventHubReceivers,
    required this.groupShortName,
    required this.id,
    this.identity,
    this.incidentReceivers,
    this.itsmReceivers,
    required this.location,
    this.logicAppReceivers,
    required this.name,
    this.smsReceivers,
    this.tags,
    required this.type,
    this.voiceReceivers,
    this.webhookReceivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armRoleReceivers': ?armRoleReceivers == null ? null : pulumi.Input.encodeList<ArmRoleReceiverResponse, Map<String, dynamic>>(armRoleReceivers!, (value) => value.toMap()),
      'automationRunbookReceivers': ?automationRunbookReceivers == null ? null : pulumi.Input.encodeList<AutomationRunbookReceiverResponse, Map<String, dynamic>>(automationRunbookReceivers!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'azureAppPushReceivers': ?azureAppPushReceivers == null ? null : pulumi.Input.encodeList<AzureAppPushReceiverResponse, Map<String, dynamic>>(azureAppPushReceivers!, (value) => value.toMap()),
      'azureFunctionReceivers': ?azureFunctionReceivers == null ? null : pulumi.Input.encodeList<AzureFunctionReceiverResponse, Map<String, dynamic>>(azureFunctionReceivers!, (value) => value.toMap()),
      'emailReceivers': ?emailReceivers == null ? null : pulumi.Input.encodeList<EmailReceiverResponse, Map<String, dynamic>>(emailReceivers!, (value) => value.toMap()),
      'enabled': enabled,
      'eventHubReceivers': ?eventHubReceivers == null ? null : pulumi.Input.encodeList<EventHubReceiverResponse, Map<String, dynamic>>(eventHubReceivers!, (value) => value.toMap()),
      'groupShortName': groupShortName,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'incidentReceivers': ?incidentReceivers == null ? null : pulumi.Input.encodeList<IncidentReceiverResponse, Map<String, dynamic>>(incidentReceivers!, (value) => value.toMap()),
      'itsmReceivers': ?itsmReceivers == null ? null : pulumi.Input.encodeList<ItsmReceiverResponse, Map<String, dynamic>>(itsmReceivers!, (value) => value.toMap()),
      'location': location,
      'logicAppReceivers': ?logicAppReceivers == null ? null : pulumi.Input.encodeList<LogicAppReceiverResponse, Map<String, dynamic>>(logicAppReceivers!, (value) => value.toMap()),
      'name': name,
      'smsReceivers': ?smsReceivers == null ? null : pulumi.Input.encodeList<SmsReceiverResponse, Map<String, dynamic>>(smsReceivers!, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'voiceReceivers': ?voiceReceivers == null ? null : pulumi.Input.encodeList<VoiceReceiverResponse, Map<String, dynamic>>(voiceReceivers!, (value) => value.toMap()),
      'webhookReceivers': ?webhookReceivers == null ? null : pulumi.Input.encodeList<WebhookReceiverResponse, Map<String, dynamic>>(webhookReceivers!, (value) => value.toMap()),
    };
  }

  factory GetActionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetActionGroupResult(
      armRoleReceivers: map['armRoleReceivers'] == null ? null : pulumi.Input.decodeList<ArmRoleReceiverResponse>(map['armRoleReceivers'], (value) => ArmRoleReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      automationRunbookReceivers: map['automationRunbookReceivers'] == null ? null : pulumi.Input.decodeList<AutomationRunbookReceiverResponse>(map['automationRunbookReceivers'], (value) => AutomationRunbookReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      azureAppPushReceivers: map['azureAppPushReceivers'] == null ? null : pulumi.Input.decodeList<AzureAppPushReceiverResponse>(map['azureAppPushReceivers'], (value) => AzureAppPushReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureFunctionReceivers: map['azureFunctionReceivers'] == null ? null : pulumi.Input.decodeList<AzureFunctionReceiverResponse>(map['azureFunctionReceivers'], (value) => AzureFunctionReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      emailReceivers: map['emailReceivers'] == null ? null : pulumi.Input.decodeList<EmailReceiverResponse>(map['emailReceivers'], (value) => EmailReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      eventHubReceivers: map['eventHubReceivers'] == null ? null : pulumi.Input.decodeList<EventHubReceiverResponse>(map['eventHubReceivers'], (value) => EventHubReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      groupShortName: map['groupShortName'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      incidentReceivers: map['incidentReceivers'] == null ? null : pulumi.Input.decodeList<IncidentReceiverResponse>(map['incidentReceivers'], (value) => IncidentReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      itsmReceivers: map['itsmReceivers'] == null ? null : pulumi.Input.decodeList<ItsmReceiverResponse>(map['itsmReceivers'], (value) => ItsmReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      logicAppReceivers: map['logicAppReceivers'] == null ? null : pulumi.Input.decodeList<LogicAppReceiverResponse>(map['logicAppReceivers'], (value) => LogicAppReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      smsReceivers: map['smsReceivers'] == null ? null : pulumi.Input.decodeList<SmsReceiverResponse>(map['smsReceivers'], (value) => SmsReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      voiceReceivers: map['voiceReceivers'] == null ? null : pulumi.Input.decodeList<VoiceReceiverResponse>(map['voiceReceivers'], (value) => VoiceReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      webhookReceivers: map['webhookReceivers'] == null ? null : pulumi.Input.decodeList<WebhookReceiverResponse>(map['webhookReceivers'], (value) => WebhookReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

