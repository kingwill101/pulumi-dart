// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getParticipant.
class GetParticipantResult2 {
  /// Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  final Map<String, String> documentsMetadataFilters;

  /// Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  final String name;

  /// Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow uses this user id for billing and measurement. If a user with the same obfuscated_external_user_id is created in a later conversation, Dialogflow will know it's the same user. Dialogflow also uses this user id for Agent Assist suggestion personalization. For example, Dialogflow can use it to provide personalized smart reply suggestions for this user. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  final String obfuscatedExternalUserId;

  /// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  final String role;

  GetParticipantResult2({
    required this.documentsMetadataFilters,
    required this.name,
    required this.obfuscatedExternalUserId,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['documentsMetadataFilters'] = documentsMetadataFilters;
    map['name'] = name;
    map['obfuscatedExternalUserId'] = obfuscatedExternalUserId;
    map['role'] = role;
    return map;
  }

  factory GetParticipantResult2.fromMap(Map<String, dynamic> map) {
    return GetParticipantResult2(
      documentsMetadataFilters:
          (map['documentsMetadataFilters'] as Map).cast<String, String>(),
      name: map['name'] as String,
      obfuscatedExternalUserId: map['obfuscatedExternalUserId'] as String,
      role: map['role'] as String,
    );
  }
}
