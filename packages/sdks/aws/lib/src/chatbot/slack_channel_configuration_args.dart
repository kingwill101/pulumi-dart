// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slack_channel_configuration_timeouts.dart';

/// {@template pulumi_chatbot_slack_channel_configuration_slack_channel_configuration_args_doc}
/// The set of arguments for SlackChannelConfiguration.
/// {@endtemplate}
/// {@macro pulumi_chatbot_slack_channel_configuration_slack_channel_configuration_args_doc}
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

  /// Creates a new [SlackChannelConfigurationArgs].
  /// [configurationName] Name of the Slack channel configuration.
  /// [guardrailPolicyArns] List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  /// [iamRoleArn] User-defined role that AWS Chatbot assumes. This is not the service-linked role.
  /// [loggingLevel] Logging levels include `ERROR`, `INFO`, or `NONE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [slackChannelId] ID of the Slack channel. For example, `C07EZ1ABC23`.
  /// [slackTeamId] ID of the Slack workspace authorized with AWS Chatbot. For example, `T07EA123LEP`.
  /// [snsTopicArns] ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  /// [tags] Map of tags assigned to the resource.
  /// [timeouts] Optional.
  /// [userAuthorizationRequired] Enables use of a user role requirement in your chat configuration.
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
    return <String, dynamic>{
      'configurationName': configurationName,
      'guardrailPolicyArns': ?guardrailPolicyArns,
      'iamRoleArn': iamRoleArn,
      'loggingLevel': ?loggingLevel,
      'region': ?region,
      'slackChannelId': slackChannelId,
      'slackTeamId': slackTeamId,
      'snsTopicArns': ?snsTopicArns,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            SlackChannelConfigurationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'userAuthorizationRequired': ?userAuthorizationRequired,
    };
  }

  factory SlackChannelConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SlackChannelConfigurationArgs(
      configurationName: pulumi.Input.fromValue(
        map['configurationName'] as String,
      ),
      guardrailPolicyArns: (() {
        final guardedValue = map['guardrailPolicyArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      loggingLevel: (() {
        final guardedValue = map['loggingLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slackChannelId: pulumi.Input.fromValue(map['slackChannelId'] as String),
      slackTeamId: pulumi.Input.fromValue(map['slackTeamId'] as String),
      snsTopicArns: (() {
        final guardedValue = map['snsTopicArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SlackChannelConfigurationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userAuthorizationRequired: (() {
        final guardedValue = map['userAuthorizationRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
