// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_app_push_receiver.dart';
import 'email_receiver.dart';
import 'sms_receiver.dart';
import 'voice_receiver.dart';
import 'webhook_receiver.dart';

/// {@template pulumi_monitor_tenant_action_group_args_doc}
/// The set of arguments for TenantActionGroup.
/// {@endtemplate}
/// {@macro pulumi_monitor_tenant_action_group_args_doc}
class TenantActionGroupArgs {
  /// The list of AzureAppPush receivers that are part of this tenant action group.
  final pulumi.Input<List<AzureAppPushReceiver>>? azureAppPushReceivers;
  /// The list of email receivers that are part of this tenant action group.
  final pulumi.Input<List<EmailReceiver>>? emailReceivers;
  /// Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  final pulumi.Input<bool> enabled;
  /// The short name of the action group. This will be used in SMS messages.
  final pulumi.Input<String> groupShortName;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The management group id.
  final pulumi.Input<String> managementGroupId;
  /// The list of SMS receivers that are part of this tenant action group.
  final pulumi.Input<List<SmsReceiver>>? smsReceivers;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the action group.
  final pulumi.Input<String>? tenantActionGroupName;
  /// The list of voice receivers that are part of this tenant action group.
  final pulumi.Input<List<VoiceReceiver>>? voiceReceivers;
  /// The list of webhook receivers that are part of this tenant action group.
  final pulumi.Input<List<WebhookReceiver>>? webhookReceivers;

  /// Creates a new [TenantActionGroupArgs].
  /// [azureAppPushReceivers] The list of AzureAppPush receivers that are part of this tenant action group.
  /// [emailReceivers] The list of email receivers that are part of this tenant action group.
  /// [enabled] Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  /// [groupShortName] The short name of the action group. This will be used in SMS messages.
  /// [location] Resource location
  /// [managementGroupId] The management group id.
  /// [smsReceivers] The list of SMS receivers that are part of this tenant action group.
  /// [tags] Resource tags
  /// [tenantActionGroupName] The name of the action group.
  /// [voiceReceivers] The list of voice receivers that are part of this tenant action group.
  /// [webhookReceivers] The list of webhook receivers that are part of this tenant action group.
  TenantActionGroupArgs({
    this.azureAppPushReceivers,
    this.emailReceivers,
    required this.enabled,
    required this.groupShortName,
    this.location,
    required this.managementGroupId,
    this.smsReceivers,
    this.tags,
    this.tenantActionGroupName,
    this.voiceReceivers,
    this.webhookReceivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureAppPushReceivers': ?pulumi.Input.mapOptionalInputValue<List<AzureAppPushReceiver>, List<Map<String, dynamic>>>(azureAppPushReceivers, (value) => pulumi.Input.encodeList<AzureAppPushReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'emailReceivers': ?pulumi.Input.mapOptionalInputValue<List<EmailReceiver>, List<Map<String, dynamic>>>(emailReceivers, (value) => pulumi.Input.encodeList<EmailReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'groupShortName': groupShortName,
      'location': ?location,
      'managementGroupId': managementGroupId,
      'smsReceivers': ?pulumi.Input.mapOptionalInputValue<List<SmsReceiver>, List<Map<String, dynamic>>>(smsReceivers, (value) => pulumi.Input.encodeList<SmsReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tenantActionGroupName': ?tenantActionGroupName,
      'voiceReceivers': ?pulumi.Input.mapOptionalInputValue<List<VoiceReceiver>, List<Map<String, dynamic>>>(voiceReceivers, (value) => pulumi.Input.encodeList<VoiceReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhookReceivers': ?pulumi.Input.mapOptionalInputValue<List<WebhookReceiver>, List<Map<String, dynamic>>>(webhookReceivers, (value) => pulumi.Input.encodeList<WebhookReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TenantActionGroupArgs.fromMap(Map<String, dynamic> map) {
    return TenantActionGroupArgs(
      azureAppPushReceivers: map['azureAppPushReceivers'] == null ? null : (pulumi.Input.decodeList<AzureAppPushReceiver>(map['azureAppPushReceivers'], (value) => AzureAppPushReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      emailReceivers: map['emailReceivers'] == null ? null : (pulumi.Input.decodeList<EmailReceiver>(map['emailReceivers'], (value) => EmailReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: (map['enabled'] as bool).input(),
      groupShortName: (map['groupShortName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managementGroupId: (map['managementGroupId'] as String).input(),
      smsReceivers: map['smsReceivers'] == null ? null : (pulumi.Input.decodeList<SmsReceiver>(map['smsReceivers'], (value) => SmsReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tenantActionGroupName: map['tenantActionGroupName'] == null ? null : (map['tenantActionGroupName'] as String).input(),
      voiceReceivers: map['voiceReceivers'] == null ? null : (pulumi.Input.decodeList<VoiceReceiver>(map['voiceReceivers'], (value) => VoiceReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webhookReceivers: map['webhookReceivers'] == null ? null : (pulumi.Input.decodeList<WebhookReceiver>(map['webhookReceivers'], (value) => WebhookReceiver.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

