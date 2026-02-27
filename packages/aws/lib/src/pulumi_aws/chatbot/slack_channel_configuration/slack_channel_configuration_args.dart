// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../slack_channel_configuration_timeouts/slack_channel_configuration_timeouts.dart';

/// The set of arguments for SlackChannelConfiguration.
class SlackChannelConfigurationArgs {
  /// Name of the Slack channel configuration.
  final pulumi.Input<String> configurationName;

  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  final pulumi.Input<List<String>>? guardrailPolicyArns;

  /// User-defined role that AWS Chatbot assumes. This is not the service-linked role.
  final pulumi.Input<String> iamRoleArn;

  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  final pulumi.Input<String>? loggingLevel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the Slack channel. For example, `C07EZ1ABC23`.
  final pulumi.Input<String> slackChannelId;

  /// ID of the Slack workspace authorized with AWS Chatbot. For example, `T07EA123LEP`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> slackTeamId;

  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  final pulumi.Input<List<String>>? snsTopicArns;

  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<SlackChannelConfigurationTimeouts>? timeouts;

  /// Enables use of a user role requirement in your chat configuration.
  final pulumi.Input<bool>? userAuthorizationRequired;

  SlackChannelConfigurationArgs({
    required this.configurationName,
    this.guardrailPolicyArns,
    required this.iamRoleArn,
    this.loggingLevel,
    this.region,
    required this.slackChannelId,
    required this.slackTeamId,
    this.snsTopicArns,
    this.tags,
    this.timeouts,
    this.userAuthorizationRequired,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationName'] = configurationName;
    final guardrailPolicyArnsValue = guardrailPolicyArns;
    if (guardrailPolicyArnsValue != null) {
      map['guardrailPolicyArns'] = guardrailPolicyArnsValue;
    }
    map['iamRoleArn'] = iamRoleArn;
    final loggingLevelValue = loggingLevel;
    if (loggingLevelValue != null) {
      map['loggingLevel'] = loggingLevelValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['slackChannelId'] = slackChannelId;
    map['slackTeamId'] = slackTeamId;
    final snsTopicArnsValue = snsTopicArns;
    if (snsTopicArnsValue != null) {
      map['snsTopicArns'] = snsTopicArnsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          SlackChannelConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final userAuthorizationRequiredValue = userAuthorizationRequired;
    if (userAuthorizationRequiredValue != null) {
      map['userAuthorizationRequired'] = userAuthorizationRequiredValue;
    }
    return map;
  }

  factory SlackChannelConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SlackChannelConfigurationArgs(
      configurationName: pulumi.Input.asInput<String>(map['configurationName']),
      guardrailPolicyArns: pulumi.Input.asOptionalInput<List<String>>(
          map['guardrailPolicyArns']),
      iamRoleArn: pulumi.Input.asInput<String>(map['iamRoleArn']),
      loggingLevel: pulumi.Input.asOptionalInput<String>(map['loggingLevel']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      slackChannelId: pulumi.Input.asInput<String>(map['slackChannelId']),
      slackTeamId: pulumi.Input.asInput<String>(map['slackTeamId']),
      snsTopicArns:
          pulumi.Input.asOptionalInput<List<String>>(map['snsTopicArns']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<SlackChannelConfigurationTimeouts>(
          map['timeouts']),
      userAuthorizationRequired:
          pulumi.Input.asOptionalInput<bool>(map['userAuthorizationRequired']),
    );
  }
}
