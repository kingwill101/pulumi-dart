// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'participant_role2.dart';

/// The set of arguments for Participant.
class ParticipantArgs2 {
  final Input<String> conversationId;

  /// Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  final Input<Map<String, String>>? documentsMetadataFilters;
  final Input<String>? location;

  /// Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  final Input<String>? name;

  /// Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow uses this user id for billing and measurement. If a user with the same obfuscated_external_user_id is created in a later conversation, Dialogflow will know it's the same user. Dialogflow also uses this user id for Agent Assist suggestion personalization. For example, Dialogflow can use it to provide personalized smart reply suggestions for this user. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  final Input<String>? obfuscatedExternalUserId;
  final Input<String>? project;

  /// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  final Input<ParticipantRole2>? role;

  ParticipantArgs2({
    required this.conversationId,
    this.documentsMetadataFilters,
    this.location,
    this.name,
    this.obfuscatedExternalUserId,
    this.project,
    this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationId'] = conversationId;
    final documentsMetadataFiltersValue = documentsMetadataFilters;
    if (documentsMetadataFiltersValue != null) {
      map['documentsMetadataFilters'] = documentsMetadataFiltersValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final obfuscatedExternalUserIdValue = obfuscatedExternalUserId;
    if (obfuscatedExternalUserIdValue != null) {
      map['obfuscatedExternalUserId'] = obfuscatedExternalUserIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = Input.mapOptionalInputValue<ParticipantRole2, String>(
          roleValue, (value) => value.value);
    }
    return map;
  }

  factory ParticipantArgs2.fromMap(Map<String, dynamic> map) {
    return ParticipantArgs2(
      conversationId: Input.asInput<String>(map['conversationId']),
      documentsMetadataFilters: Input.asOptionalInput<Map<String, String>>(
          map['documentsMetadataFilters']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      obfuscatedExternalUserId:
          Input.asOptionalInput<String>(map['obfuscatedExternalUserId']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asOptionalInput<ParticipantRole2>(map['role']),
    );
  }
}
