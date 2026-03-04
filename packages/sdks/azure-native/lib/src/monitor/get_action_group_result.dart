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
      'armRoleReceivers': ?(() {
        final guardedValue = armRoleReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ArmRoleReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'automationRunbookReceivers': ?(() {
        final guardedValue = automationRunbookReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          AutomationRunbookReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'azureApiVersion': azureApiVersion,
      'azureAppPushReceivers': ?(() {
        final guardedValue = azureAppPushReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          AzureAppPushReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'azureFunctionReceivers': ?(() {
        final guardedValue = azureFunctionReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          AzureFunctionReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'emailReceivers': ?(() {
        final guardedValue = emailReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          EmailReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'enabled': enabled,
      'eventHubReceivers': ?(() {
        final guardedValue = eventHubReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          EventHubReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'groupShortName': groupShortName,
      'id': id,
      'identity': ?identity?.toMap(),
      'incidentReceivers': ?(() {
        final guardedValue = incidentReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          IncidentReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'itsmReceivers': ?(() {
        final guardedValue = itsmReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ItsmReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'location': location,
      'logicAppReceivers': ?(() {
        final guardedValue = logicAppReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          LogicAppReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'name': name,
      'smsReceivers': ?(() {
        final guardedValue = smsReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          SmsReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'tags': ?tags,
      'type': type,
      'voiceReceivers': ?(() {
        final guardedValue = voiceReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          VoiceReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'webhookReceivers': ?(() {
        final guardedValue = webhookReceivers;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          WebhookReceiverResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetActionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetActionGroupResult(
      armRoleReceivers: (() {
        final guardedValue = map['armRoleReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ArmRoleReceiverResponse>(
          guardedValue,
          (value) => ArmRoleReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      automationRunbookReceivers: (() {
        final guardedValue = map['automationRunbookReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<AutomationRunbookReceiverResponse>(
          guardedValue,
          (value) => AutomationRunbookReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      azureAppPushReceivers: (() {
        final guardedValue = map['azureAppPushReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<AzureAppPushReceiverResponse>(
          guardedValue,
          (value) => AzureAppPushReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      azureFunctionReceivers: (() {
        final guardedValue = map['azureFunctionReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<AzureFunctionReceiverResponse>(
          guardedValue,
          (value) => AzureFunctionReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      emailReceivers: (() {
        final guardedValue = map['emailReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<EmailReceiverResponse>(
          guardedValue,
          (value) => EmailReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enabled: map['enabled'] as bool,
      eventHubReceivers: (() {
        final guardedValue = map['eventHubReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<EventHubReceiverResponse>(
          guardedValue,
          (value) => EventHubReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      groupShortName: map['groupShortName'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      incidentReceivers: (() {
        final guardedValue = map['incidentReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<IncidentReceiverResponse>(
          guardedValue,
          (value) => IncidentReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      itsmReceivers: (() {
        final guardedValue = map['itsmReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ItsmReceiverResponse>(
          guardedValue,
          (value) => ItsmReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: map['location'] as String,
      logicAppReceivers: (() {
        final guardedValue = map['logicAppReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<LogicAppReceiverResponse>(
          guardedValue,
          (value) => LogicAppReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: map['name'] as String,
      smsReceivers: (() {
        final guardedValue = map['smsReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<SmsReceiverResponse>(
          guardedValue,
          (value) => SmsReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      voiceReceivers: (() {
        final guardedValue = map['voiceReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<VoiceReceiverResponse>(
          guardedValue,
          (value) => VoiceReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      webhookReceivers: (() {
        final guardedValue = map['webhookReceivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<WebhookReceiverResponse>(
          guardedValue,
          (value) => WebhookReceiverResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
