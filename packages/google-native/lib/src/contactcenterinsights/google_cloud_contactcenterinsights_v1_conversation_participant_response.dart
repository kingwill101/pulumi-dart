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

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationParticipantResponse].
  /// [dialogflowParticipant] Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  /// [dialogflowParticipantName] The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{location}/conversations/{conversation}/participants/{participant}
  /// [obfuscatedExternalUserId] Obfuscated user ID from Dialogflow.
  /// [role] The role of the participant.
  /// [userId] A user-specified ID representing the participant.
  GoogleCloudContactcenterinsightsV1ConversationParticipantResponse({
    required this.dialogflowParticipant,
    required this.dialogflowParticipantName,
    required this.obfuscatedExternalUserId,
    required this.role,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dialogflowParticipant': dialogflowParticipant,
      'dialogflowParticipantName': dialogflowParticipantName,
      'obfuscatedExternalUserId': obfuscatedExternalUserId,
      'role': role,
      'userId': userId,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationParticipantResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1ConversationParticipantResponse(
      dialogflowParticipant: map['dialogflowParticipant'] as String,
      dialogflowParticipantName: map['dialogflowParticipantName'] as String,
      obfuscatedExternalUserId: map['obfuscatedExternalUserId'] as String,
      role: map['role'] as String,
      userId: map['userId'] as String,
    );
  }
}
