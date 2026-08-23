// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSlackWorkspace.
class GetSlackWorkspaceResult {
  final String region;
  /// ID of the Slack Workspace assigned by AWS Chatbot.
  final String slackTeamId;
  final String slackTeamName;

  /// Creates a new [GetSlackWorkspaceResult].
  /// [region] Required.
  /// [slackTeamId] ID of the Slack Workspace assigned by AWS Chatbot.
  /// [slackTeamName] Required.
  const GetSlackWorkspaceResult({
    required this.region,
    required this.slackTeamId,
    required this.slackTeamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'slackTeamId': slackTeamId,
      'slackTeamName': slackTeamName,
    };
  }

  factory GetSlackWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetSlackWorkspaceResult(
      region: map['region'] as String,
      slackTeamId: map['slackTeamId'] as String,
      slackTeamName: map['slackTeamName'] as String,
    );
  }
}
