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
  GetTenantActionGroupResult({
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
      'azureAppPushReceivers': ?azureAppPushReceivers == null ? null : pulumi.Input.encodeList<AzureAppPushReceiverResponse, Map<String, dynamic>>(azureAppPushReceivers!, (value) => value.toMap()),
      'emailReceivers': ?emailReceivers == null ? null : pulumi.Input.encodeList<EmailReceiverResponse, Map<String, dynamic>>(emailReceivers!, (value) => value.toMap()),
      'enabled': enabled,
      'groupShortName': groupShortName,
      'id': id,
      'location': location,
      'name': name,
      'smsReceivers': ?smsReceivers == null ? null : pulumi.Input.encodeList<SmsReceiverResponse, Map<String, dynamic>>(smsReceivers!, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'voiceReceivers': ?voiceReceivers == null ? null : pulumi.Input.encodeList<VoiceReceiverResponse, Map<String, dynamic>>(voiceReceivers!, (value) => value.toMap()),
      'webhookReceivers': ?webhookReceivers == null ? null : pulumi.Input.encodeList<WebhookReceiverResponse, Map<String, dynamic>>(webhookReceivers!, (value) => value.toMap()),
    };
  }

  factory GetTenantActionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetTenantActionGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureAppPushReceivers: map['azureAppPushReceivers'] == null ? null : pulumi.Input.decodeList<AzureAppPushReceiverResponse>(map['azureAppPushReceivers']!, (value) => AzureAppPushReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      emailReceivers: map['emailReceivers'] == null ? null : pulumi.Input.decodeList<EmailReceiverResponse>(map['emailReceivers']!, (value) => EmailReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      groupShortName: map['groupShortName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      smsReceivers: map['smsReceivers'] == null ? null : pulumi.Input.decodeList<SmsReceiverResponse>(map['smsReceivers']!, (value) => SmsReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      voiceReceivers: map['voiceReceivers'] == null ? null : pulumi.Input.decodeList<VoiceReceiverResponse>(map['voiceReceivers']!, (value) => VoiceReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
      webhookReceivers: map['webhookReceivers'] == null ? null : pulumi.Input.decodeList<WebhookReceiverResponse>(map['webhookReceivers']!, (value) => WebhookReceiverResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

