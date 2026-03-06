// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSlackWorkspace.
class GetSlackWorkspaceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// ID of the Slack Workspace assigned by AWS Chatbot.
  final String slackTeamId;
  final String slackTeamName;

  /// Creates a new [GetSlackWorkspaceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [slackTeamId] ID of the Slack Workspace assigned by AWS Chatbot.
  /// [slackTeamName] Required.
  const GetSlackWorkspaceResult({
    required this.id,
    required this.region,
    required this.slackTeamId,
    required this.slackTeamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'slackTeamId': slackTeamId,
      'slackTeamName': slackTeamName,
    };
  }

  factory GetSlackWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetSlackWorkspaceResult(
      id: map['id'] as String,
      region: map['region'] as String,
      slackTeamId: map['slackTeamId'] as String,
      slackTeamName: map['slackTeamName'] as String,
    );
  }
}

