// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'conversation_medium.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_call_metadata.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_data_source.dart';

/// The set of arguments for Conversation.
class ConversationArgs {
  /// An opaque, user-specified string representing the human agent who handled the conversation.
  final Input<String>? agentId;

  /// Call-specific metadata.
  final Input<GoogleCloudContactcenterinsightsV1ConversationCallMetadata>?
      callMetadata;

  /// A unique ID for the new conversation. This ID will become the final component of the conversation's resource name. If no ID is specified, a server-generated ID will be used. This value should be 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`
  final Input<String>? conversationId;

  /// The source of the audio and transcription for the conversation.
  final Input<GoogleCloudContactcenterinsightsV1ConversationDataSource>?
      dataSource;

  /// The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  final Input<String>? expireTime;

  /// A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  final Input<Map<String, String>>? labels;

  /// A user-specified language code for the conversation.
  final Input<String>? languageCode;
  final Input<String>? location;

  /// Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  final Input<ConversationMedium>? medium;

  /// Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  final Input<String>? name;

  /// Obfuscated user ID which the customer sent to us.
  final Input<String>? obfuscatedUserId;
  final Input<String>? project;

  /// The time at which the conversation started.
  final Input<String>? startTime;

  /// Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  final Input<String>? ttl;

  ConversationArgs({
    this.agentId,
    this.callMetadata,
    this.conversationId,
    this.dataSource,
    this.expireTime,
    this.labels,
    this.languageCode,
    this.location,
    this.medium,
    this.name,
    this.obfuscatedUserId,
    this.project,
    this.startTime,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentIdValue = agentId;
    if (agentIdValue != null) {
      map['agentId'] = agentIdValue;
    }
    final callMetadataValue = callMetadata;
    if (callMetadataValue != null) {
      map['callMetadata'] = Input.mapOptionalInputValue<
          GoogleCloudContactcenterinsightsV1ConversationCallMetadata,
          Map<String, dynamic>>(callMetadataValue, (value) => value.toMap());
    }
    final conversationIdValue = conversationId;
    if (conversationIdValue != null) {
      map['conversationId'] = conversationIdValue;
    }
    final dataSourceValue = dataSource;
    if (dataSourceValue != null) {
      map['dataSource'] = Input.mapOptionalInputValue<
          GoogleCloudContactcenterinsightsV1ConversationDataSource,
          Map<String, dynamic>>(dataSourceValue, (value) => value.toMap());
    }
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mediumValue = medium;
    if (mediumValue != null) {
      map['medium'] = Input.mapOptionalInputValue<ConversationMedium, String>(
          mediumValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final obfuscatedUserIdValue = obfuscatedUserId;
    if (obfuscatedUserIdValue != null) {
      map['obfuscatedUserId'] = obfuscatedUserIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory ConversationArgs.fromMap(Map<String, dynamic> map) {
    return ConversationArgs(
      agentId: Input.asOptionalInput<String>(map['agentId']),
      callMetadata: Input.asOptionalInput<
              GoogleCloudContactcenterinsightsV1ConversationCallMetadata>(
          map['callMetadata']),
      conversationId: Input.asOptionalInput<String>(map['conversationId']),
      dataSource: Input.asOptionalInput<
              GoogleCloudContactcenterinsightsV1ConversationDataSource>(
          map['dataSource']),
      expireTime: Input.asOptionalInput<String>(map['expireTime']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      medium: Input.asOptionalInput<ConversationMedium>(map['medium']),
      name: Input.asOptionalInput<String>(map['name']),
      obfuscatedUserId: Input.asOptionalInput<String>(map['obfuscatedUserId']),
      project: Input.asOptionalInput<String>(map['project']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
      ttl: Input.asOptionalInput<String>(map['ttl']),
    );
  }
}
