// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSlackWorkspace.
class GetSlackWorkspaceResult {
  final String? region;
  /// ID of the Slack Workspace assigned by AWS Chatbot.
  final String? slackTeamId;
  final String? slackTeamName;

  /// Creates a new [GetSlackWorkspaceResult].
  /// [region] Optional.
  /// [slackTeamId] ID of the Slack Workspace assigned by AWS Chatbot.
  /// [slackTeamName] Optional.
  const GetSlackWorkspaceResult({
    this.region,
    this.slackTeamId,
    this.slackTeamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'slackTeamId': ?slackTeamId,
      'slackTeamName': ?slackTeamName,
    };
  }

  factory GetSlackWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetSlackWorkspaceResult(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      slackTeamId: (() { final guardedValue = map['slackTeamId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      slackTeamName: (() { final guardedValue = map['slackTeamName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
