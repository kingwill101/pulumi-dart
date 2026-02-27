// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'participant_role.dart';

/// The set of arguments for Participant.
class ParticipantArgs {
  final pulumi.Input<String> conversationId;

  /// Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  final pulumi.Input<Map<String, String>>? documentsMetadataFilters;
  final pulumi.Input<String>? location;

  /// Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  final pulumi.Input<String>? name;

  /// Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow returns an error if you try to add a user id for a non-END_USER participant. Dialogflow uses this user id for billing and measurement purposes. For example, Dialogflow determines whether a user in one conversation returned in a later conversation. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  final pulumi.Input<String>? obfuscatedExternalUserId;
  final pulumi.Input<String>? project;

  /// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  final pulumi.Input<ParticipantRole>? role;

  /// Optional. Label applied to streams representing this participant in SIPREC XML metadata and SDP. This is used to assign transcriptions from that media stream to this participant. This field can be updated.
  final pulumi.Input<String>? sipRecordingMediaLabel;

  ParticipantArgs({
    required this.conversationId,
    this.documentsMetadataFilters,
    this.location,
    this.name,
    this.obfuscatedExternalUserId,
    this.project,
    this.role,
    this.sipRecordingMediaLabel,
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
      map['role'] = pulumi.Input.mapOptionalInputValue<ParticipantRole, String>(
          roleValue, (value) => value.value);
    }
    final sipRecordingMediaLabelValue = sipRecordingMediaLabel;
    if (sipRecordingMediaLabelValue != null) {
      map['sipRecordingMediaLabel'] = sipRecordingMediaLabelValue;
    }
    return map;
  }

  factory ParticipantArgs.fromMap(Map<String, dynamic> map) {
    return ParticipantArgs(
      conversationId: pulumi.Input.asInput<String>(map['conversationId']),
      documentsMetadataFilters:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['documentsMetadataFilters']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      obfuscatedExternalUserId:
          pulumi.Input.asOptionalInput<String>(map['obfuscatedExternalUserId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asOptionalInput<ParticipantRole>(map['role']),
      sipRecordingMediaLabel:
          pulumi.Input.asOptionalInput<String>(map['sipRecordingMediaLabel']),
    );
  }
}
