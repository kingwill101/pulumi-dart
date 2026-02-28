// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chatbot_get_slack_workspace_get_slack_workspace_args_doc}
/// Arguments for getSlackWorkspace.
/// {@endtemplate}
/// {@macro pulumi_chatbot_get_slack_workspace_get_slack_workspace_args_doc}
class GetSlackWorkspaceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Slack workspace name configured with AWS Chatbot.
  final pulumi.Input<String> slackTeamName;

  /// Creates a new [GetSlackWorkspaceArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [slackTeamName] Slack workspace name configured with AWS Chatbot.
  GetSlackWorkspaceArgs({
    String? region,
    required String slackTeamName,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      slackTeamName = pulumi.Input.asInput<String>(slackTeamName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'slackTeamName': slackTeamName,
    };
  }

  factory GetSlackWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetSlackWorkspaceArgs(
      region: map['region'] == null ? null : map['region'] as String,
      slackTeamName: map['slackTeamName'] as String,
    );
  }
}

