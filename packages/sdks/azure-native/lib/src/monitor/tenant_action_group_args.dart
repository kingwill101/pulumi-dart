// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'microsoft_common_azure_app_push_receiver.dart';
import 'microsoft_common_email_receiver.dart';
import 'microsoft_common_sms_receiver.dart';
import 'microsoft_common_voice_receiver.dart';
import 'webhook_receiver.dart';

/// {@template pulumi_monitor_tenant_action_group_args_doc}
/// The set of arguments for TenantActionGroup.
/// {@endtemplate}
/// {@macro pulumi_monitor_tenant_action_group_args_doc}
class TenantActionGroupArgs {
  /// The list of AzureAppPush receivers that are part of this tenant action group.
  final pulumi.Input<List<MicrosoftCommonAzureAppPushReceiver>?>? azureAppPushReceivers;
  /// The list of email receivers that are part of this tenant action group.
  final pulumi.Input<List<MicrosoftCommonEmailReceiver>?>? emailReceivers;
  /// Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  final pulumi.Input<bool> enabled;
  /// The short name of the action group. This will be used in SMS messages.
  final pulumi.Input<String> groupShortName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The management group ID.
  final pulumi.Input<String> managementGroupId;
  /// The list of SMS receivers that are part of this tenant action group.
  final pulumi.Input<List<MicrosoftCommonSmsReceiver>?>? smsReceivers;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the action group.
  final pulumi.Input<String?>? tenantActionGroupName;
  /// The list of voice receivers that are part of this tenant action group.
  final pulumi.Input<List<MicrosoftCommonVoiceReceiver>?>? voiceReceivers;
  /// The list of webhook receivers that are part of this tenant action group.
  final pulumi.Input<List<WebhookReceiver>?>? webhookReceivers;

  /// Creates a new [TenantActionGroupArgs].
  /// [azureAppPushReceivers] The list of AzureAppPush receivers that are part of this tenant action group.
  /// [emailReceivers] The list of email receivers that are part of this tenant action group.
  /// [enabled] Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  /// [groupShortName] The short name of the action group. This will be used in SMS messages.
  /// [location] The geo-location where the resource lives
  /// [managementGroupId] The management group ID.
  /// [smsReceivers] The list of SMS receivers that are part of this tenant action group.
  /// [tags] Resource tags.
  /// [tenantActionGroupName] The name of the action group.
  /// [voiceReceivers] The list of voice receivers that are part of this tenant action group.
  /// [webhookReceivers] The list of webhook receivers that are part of this tenant action group.
  TenantActionGroupArgs({
    this.azureAppPushReceivers,
    this.emailReceivers,
    pulumi.Input<bool>? enabled,
    required this.groupShortName,
    this.location,
    required this.managementGroupId,
    this.smsReceivers,
    this.tags,
    this.tenantActionGroupName,
    this.voiceReceivers,
    this.webhookReceivers,
  }) : enabled = enabled ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAppPushReceivers': ?pulumi.Input.mapOptionalInputValue<List<MicrosoftCommonAzureAppPushReceiver>, List<Map<String, dynamic>>>(azureAppPushReceivers, (value) => pulumi.Input.encodeList<MicrosoftCommonAzureAppPushReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emailReceivers': ?pulumi.Input.mapOptionalInputValue<List<MicrosoftCommonEmailReceiver>, List<Map<String, dynamic>>>(emailReceivers, (value) => pulumi.Input.encodeList<MicrosoftCommonEmailReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'groupShortName': groupShortName,
      'location': ?location,
      'managementGroupId': managementGroupId,
      'smsReceivers': ?pulumi.Input.mapOptionalInputValue<List<MicrosoftCommonSmsReceiver>, List<Map<String, dynamic>>>(smsReceivers, (value) => pulumi.Input.encodeList<MicrosoftCommonSmsReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tenantActionGroupName': ?tenantActionGroupName,
      'voiceReceivers': ?pulumi.Input.mapOptionalInputValue<List<MicrosoftCommonVoiceReceiver>, List<Map<String, dynamic>>>(voiceReceivers, (value) => pulumi.Input.encodeList<MicrosoftCommonVoiceReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookReceivers': ?pulumi.Input.mapOptionalInputValue<List<WebhookReceiver>, List<Map<String, dynamic>>>(webhookReceivers, (value) => pulumi.Input.encodeList<WebhookReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TenantActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return TenantActionGroupArgs(
      azureAppPushReceivers: (() { final guardedValue = map['azureAppPushReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MicrosoftCommonAzureAppPushReceiver>(guardedValue, (value) => MicrosoftCommonAzureAppPushReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      emailReceivers: (() { final guardedValue = map['emailReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MicrosoftCommonEmailReceiver>(guardedValue, (value) => MicrosoftCommonEmailReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      groupShortName: pulumi.Input.fromValue(map['groupShortName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      smsReceivers: (() { final guardedValue = map['smsReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MicrosoftCommonSmsReceiver>(guardedValue, (value) => MicrosoftCommonSmsReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantActionGroupName: (() { final guardedValue = map['tenantActionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voiceReceivers: (() { final guardedValue = map['voiceReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MicrosoftCommonVoiceReceiver>(guardedValue, (value) => MicrosoftCommonVoiceReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webhookReceivers: (() { final guardedValue = map['webhookReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebhookReceiver>(guardedValue, (value) => WebhookReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
