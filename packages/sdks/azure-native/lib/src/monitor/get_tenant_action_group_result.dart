// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_app_push_receiver_response.dart';
import 'email_receiver_response.dart';
import 'sms_receiver_response.dart';
import 'voice_receiver_response.dart';
import 'webhook_receiver_response.dart';

/// Result data returned by getTenantActionGroup.
class GetTenantActionGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of AzureAppPush receivers that are part of this tenant action group.
  final List<AzureAppPushReceiverResponse>? azureAppPushReceivers;
  /// The list of email receivers that are part of this tenant action group.
  final List<EmailReceiverResponse>? emailReceivers;
  /// Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  final bool enabled;
  /// The short name of the action group. This will be used in SMS messages.
  final String groupShortName;
  /// Azure resource Id
  final String id;
  /// Resource location
  final String location;
  /// Azure resource name
  final String name;
  /// The list of SMS receivers that are part of this tenant action group.
  final List<SmsReceiverResponse>? smsReceivers;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure resource type
  final String type;
  /// The list of voice receivers that are part of this tenant action group.
  final List<VoiceReceiverResponse>? voiceReceivers;
  /// The list of webhook receivers that are part of this tenant action group.
  final List<WebhookReceiverResponse>? webhookReceivers;

  /// Creates a new [GetTenantActionGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureAppPushReceivers] The list of AzureAppPush receivers that are part of this tenant action group.
  /// [emailReceivers] The list of email receivers that are part of this tenant action group.
  /// [enabled] Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  /// [groupShortName] The short name of the action group. This will be used in SMS messages.
  /// [id] Azure resource Id
  /// [location] Resource location
  /// [name] Azure resource name
  /// [smsReceivers] The list of SMS receivers that are part of this tenant action group.
  /// [tags] Resource tags
  /// [type] Azure resource type
  /// [voiceReceivers] The list of voice receivers that are part of this tenant action group.
  /// [webhookReceivers] The list of webhook receivers that are part of this tenant action group.
  const GetTenantActionGroupResult({
    required this.azureApiVersion,
    this.azureAppPushReceivers,
    this.emailReceivers,
    required this.enabled,
    required this.groupShortName,
    required this.id,
    required this.location,
    required this.name,
    this.smsReceivers,
    this.tags,
    required this.type,
    this.voiceReceivers,
    this.webhookReceivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureAppPushReceivers': ?(() { final guardedValue = azureAppPushReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<AzureAppPushReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'emailReceivers': ?(() { final guardedValue = emailReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<EmailReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': enabled,
      'groupShortName': groupShortName,
      'id': id,
      'location': location,
      'name': name,
      'smsReceivers': ?(() { final guardedValue = smsReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<SmsReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': type,
      'voiceReceivers': ?(() { final guardedValue = voiceReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<VoiceReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'webhookReceivers': ?(() { final guardedValue = webhookReceivers; if (guardedValue == null) return null; return pulumi.Input.encodeList<WebhookReceiverResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTenantActionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetTenantActionGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureAppPushReceivers: (() { final guardedValue = map['azureAppPushReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureAppPushReceiverResponse>(guardedValue, (value) => AzureAppPushReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      emailReceivers: (() { final guardedValue = map['emailReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailReceiverResponse>(guardedValue, (value) => EmailReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: map['enabled'] as bool,
      groupShortName: map['groupShortName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      smsReceivers: (() { final guardedValue = map['smsReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SmsReceiverResponse>(guardedValue, (value) => SmsReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      voiceReceivers: (() { final guardedValue = map['voiceReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceReceiverResponse>(guardedValue, (value) => VoiceReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      webhookReceivers: (() { final guardedValue = map['webhookReceivers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookReceiverResponse>(guardedValue, (value) => WebhookReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

