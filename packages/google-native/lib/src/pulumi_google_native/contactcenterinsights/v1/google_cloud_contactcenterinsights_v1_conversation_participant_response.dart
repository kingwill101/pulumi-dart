// ignore_for_file: unused_element, unnecessary_cast

/// The call participant speaking for a given utterance.
class GoogleCloudContactcenterinsightsV1ConversationParticipantResponse {
  /// Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  final String dialogflowParticipant;

  /// The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  final String dialogflowParticipantName;

  /// Obfuscated user ID from Dialogflow.
  final String obfuscatedExternalUserId;

  /// The role of the participant.
  final String role;

  /// A user-specified ID representing the participant.
  final String userId;

  GoogleCloudContactcenterinsightsV1ConversationParticipantResponse({
    required this.dialogflowParticipant,
    required this.dialogflowParticipantName,
    required this.obfuscatedExternalUserId,
    required this.role,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dialogflowParticipant'] = dialogflowParticipant;
    map['dialogflowParticipantName'] = dialogflowParticipantName;
    map['obfuscatedExternalUserId'] = obfuscatedExternalUserId;
    map['role'] = role;
    map['userId'] = userId;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ConversationParticipantResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationParticipantResponse(
      dialogflowParticipant: map['dialogflowParticipant'] as String,
      dialogflowParticipantName: map['dialogflowParticipantName'] as String,
      obfuscatedExternalUserId: map['obfuscatedExternalUserId'] as String,
      role: map['role'] as String,
      userId: map['userId'] as String,
    );
  }
}
