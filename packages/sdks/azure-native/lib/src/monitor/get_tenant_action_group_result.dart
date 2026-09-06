// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_app_push_receiver_response.dart';
import 'email_receiver_response.dart';
import 'sms_receiver_response.dart';
import 'system_data_response.dart';
import 'voice_receiver_response.dart';
import 'webhook_receiver_tenant_action_group_response.dart';

/// Result data returned by getTenantActionGroup.
class GetTenantActionGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The list of AzureAppPush receivers that are part of this tenant action group.
  final List<AzureAppPushReceiverResponse>? azureAppPushReceivers;
  /// The list of email receivers that are part of this tenant action group.
  final List<EmailReceiverResponse>? emailReceivers;
  /// Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  final bool? enabled;
  /// The short name of the action group. This will be used in SMS messages.
  final String? groupShortName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The list of SMS receivers that are part of this tenant action group.
  final List<SmsReceiverResponse>? smsReceivers;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The list of voice receivers that are part of this tenant action group.
  final List<VoiceReceiverResponse>? voiceReceivers;
  /// The list of webhook receivers that are part of this tenant action group.
  final List<WebhookReceiverTenantActionGroupResponse>? webhookReceivers;

  /// Creates a new [GetTenantActionGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureAppPushReceivers] The list of AzureAppPush receivers that are part of this tenant action group.
  /// [emailReceivers] The list of email receivers that are part of this tenant action group.
  /// [enabled] Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  /// [groupShortName] The short name of the action group. This will be used in SMS messages.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [smsReceivers] The list of SMS receivers that are part of this tenant action group.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [voiceReceivers] The list of voice receivers that are part of this tenant action group.
  /// [webhookReceivers] The list of webhook receivers that are part of this tenant action group.
  GetTenantActionGroupResult({
    this.azureApiVersion,
    this.azureAppPushReceivers,
    this.emailReceivers,
    bool? enabled,
    this.groupShortName,
    this.id,
    this.location,
    this.name,
    this.smsReceivers,
    this.systemData,
    this.tags,
    this.type,
    this.voiceReceivers,
    this.webhookReceivers,
  }) : enabled = enabled ?? true;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureAppPushReceivers': ?(() { final guardedValue = azureAppPushReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<AzureAppPushReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'emailReceivers': ?(() { final guardedValue = emailReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<EmailReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'groupShortName': ?groupShortName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'smsReceivers': ?(() { final guardedValue = smsReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<SmsReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'voiceReceivers': ?(() { final guardedValue = voiceReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<VoiceReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'webhookReceivers': ?(() { final guardedValue = webhookReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<WebhookReceiverTenantActionGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTenantActionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetTenantActionGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureAppPushReceivers: (() { final guardedValue = map['azureAppPushReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureAppPushReceiverResponse>(guardedValue, (value) => AzureAppPushReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      emailReceivers: (() { final guardedValue = map['emailReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailReceiverResponse>(guardedValue, (value) => EmailReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      groupShortName: (() { final guardedValue = map['groupShortName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      smsReceivers: (() { final guardedValue = map['smsReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SmsReceiverResponse>(guardedValue, (value) => SmsReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      voiceReceivers: (() { final guardedValue = map['voiceReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceReceiverResponse>(guardedValue, (value) => VoiceReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      webhookReceivers: (() { final guardedValue = map['webhookReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookReceiverTenantActionGroupResponse>(guardedValue, (value) => WebhookReceiverTenantActionGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
