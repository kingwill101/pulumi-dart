// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSlackWorkspace.
class GetSlackWorkspaceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Slack workspace name configured with AWS Chatbot.
  final Input<String> slackTeamName;

  GetSlackWorkspaceArgs({
    this.region,
    required this.slackTeamName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['slackTeamName'] = slackTeamName;
    return map;
  }

  factory GetSlackWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetSlackWorkspaceArgs(
      region: Input.asOptionalInput<String>(map['region']),
      slackTeamName: Input.asInput<String>(map['slackTeamName']),
    );
  }
}
