// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getParticipant.
class GetParticipantResult {
  /// Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  final Map<String, String> documentsMetadataFilters;

  /// Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  final String name;

  /// Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow returns an error if you try to add a user id for a non-END_USER participant. Dialogflow uses this user id for billing and measurement purposes. For example, Dialogflow determines whether a user in one conversation returned in a later conversation. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  final String obfuscatedExternalUserId;

  /// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  final String role;

  /// Optional. Label applied to streams representing this participant in SIPREC XML metadata and SDP. This is used to assign transcriptions from that media stream to this participant. This field can be updated.
  final String sipRecordingMediaLabel;

  /// Creates a new [GetParticipantResult].
  /// [documentsMetadataFilters] Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  /// [name] Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  /// [obfuscatedExternalUserId] Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow returns an error if you try to add a user id for a non-END_USER participant. Dialogflow uses this user id for billing and measurement purposes. For example, Dialogflow determines whether a user in one conversation returned in a later conversation. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  /// [role] Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  /// [sipRecordingMediaLabel] Optional. Label applied to streams representing this participant in SIPREC XML metadata and SDP. This is used to assign transcriptions from that media stream to this participant. This field can be updated.
  GetParticipantResult({
    required this.documentsMetadataFilters,
    required this.name,
    required this.obfuscatedExternalUserId,
    required this.role,
    required this.sipRecordingMediaLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['documentsMetadataFilters'] = documentsMetadataFilters;
    map['name'] = name;
    map['obfuscatedExternalUserId'] = obfuscatedExternalUserId;
    map['role'] = role;
    map['sipRecordingMediaLabel'] = sipRecordingMediaLabel;
    return map;
  }

  factory GetParticipantResult.fromMap(Map<String, dynamic> map) {
    return GetParticipantResult(
      documentsMetadataFilters:
          (map['documentsMetadataFilters'] as Map).cast<String, String>(),
      name: map['name'] as String,
      obfuscatedExternalUserId: map['obfuscatedExternalUserId'] as String,
      role: map['role'] as String,
      sipRecordingMediaLabel: map['sipRecordingMediaLabel'] as String,
    );
  }
}
