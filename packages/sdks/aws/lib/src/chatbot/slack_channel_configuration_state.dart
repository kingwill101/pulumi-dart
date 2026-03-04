// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slack_channel_configuration_timeouts.dart';

/// Input properties used for looking up and filtering SlackChannelConfiguration resources.
class SlackChannelConfigurationState {
  /// ARN of the Slack channel configuration.
  final pulumi.Input<String>? chatConfigurationArn;

  /// Name of the Slack channel configuration.
  final pulumi.Input<String>? configurationName;

  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  final pulumi.Input<List<String>>? guardrailPolicyArns;

  /// User-defined role that AWS Chatbot assumes. This is not the service-linked role.
  final pulumi.Input<String>? iamRoleArn;

  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  final pulumi.Input<String>? loggingLevel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the Slack channel. For example, `C07EZ1ABC23`.
  final pulumi.Input<String>? slackChannelId;

  /// Name of the Slack channel.
  final pulumi.Input<String>? slackChannelName;

  /// ID of the Slack workspace authorized with AWS Chatbot. For example, `T07EA123LEP`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? slackTeamId;

  /// Name of the Slack team.
  final pulumi.Input<String>? slackTeamName;

  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  final pulumi.Input<List<String>>? snsTopicArns;

  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<SlackChannelConfigurationTimeouts>? timeouts;

  /// Enables use of a user role requirement in your chat configuration.
  final pulumi.Input<bool>? userAuthorizationRequired;

  /// Creates a new [SlackChannelConfigurationState].
  /// [chatConfigurationArn] ARN of the Slack channel configuration.
  /// [configurationName] Name of the Slack channel configuration.
  /// [guardrailPolicyArns] List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  /// [iamRoleArn] User-defined role that AWS Chatbot assumes. This is not the service-linked role.
  /// [loggingLevel] Logging levels include `ERROR`, `INFO`, or `NONE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [slackChannelId] ID of the Slack channel. For example, `C07EZ1ABC23`.
  /// [slackChannelName] Name of the Slack channel.
  /// [slackTeamId] ID of the Slack workspace authorized with AWS Chatbot. For example, `T07EA123LEP`.
  /// [slackTeamName] Name of the Slack team.
  /// [snsTopicArns] ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  /// [tags] Map of tags assigned to the resource.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [userAuthorizationRequired] Enables use of a user role requirement in your chat configuration.
  SlackChannelConfigurationState({
    this.chatConfigurationArn,
    this.configurationName,
    this.guardrailPolicyArns,
    this.iamRoleArn,
    this.loggingLevel,
    this.region,
    this.slackChannelId,
    this.slackChannelName,
    this.slackTeamId,
    this.slackTeamName,
    this.snsTopicArns,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.userAuthorizationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatConfigurationArn': ?chatConfigurationArn,
      'configurationName': ?configurationName,
      'guardrailPolicyArns': ?guardrailPolicyArns,
      'iamRoleArn': ?iamRoleArn,
      'loggingLevel': ?loggingLevel,
      'region': ?region,
      'slackChannelId': ?slackChannelId,
      'slackChannelName': ?slackChannelName,
      'slackTeamId': ?slackTeamId,
      'slackTeamName': ?slackTeamName,
      'snsTopicArns': ?snsTopicArns,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            SlackChannelConfigurationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'userAuthorizationRequired': ?userAuthorizationRequired,
    };
  }

  factory SlackChannelConfigurationState.fromMap(Map<String, dynamic> map) {
    return SlackChannelConfigurationState(
      chatConfigurationArn: (() {
        final guardedValue = map['chatConfigurationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configurationName: (() {
        final guardedValue = map['configurationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      guardrailPolicyArns: (() {
        final guardedValue = map['guardrailPolicyArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      iamRoleArn: (() {
        final guardedValue = map['iamRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      slackChannelId: (() {
        final guardedValue = map['slackChannelId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slackChannelName: (() {
        final guardedValue = map['slackChannelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slackTeamId: (() {
        final guardedValue = map['slackTeamId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slackTeamName: (() {
        final guardedValue = map['slackTeamName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
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
