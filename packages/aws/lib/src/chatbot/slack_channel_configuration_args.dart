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
    required String configurationName,
    List<String>? guardrailPolicyArns,
    required String iamRoleArn,
    String? loggingLevel,
    String? region,
    required String slackChannelId,
    required String slackTeamId,
    List<String>? snsTopicArns,
    Map<String, String>? tags,
    SlackChannelConfigurationTimeouts? timeouts,
    bool? userAuthorizationRequired,
  }) : configurationName = pulumi.Input.asInput<String>(configurationName),
       guardrailPolicyArns = pulumi.Input.asOptionalInput<List<String>>(
         guardrailPolicyArns,
       ),
       iamRoleArn = pulumi.Input.asInput<String>(iamRoleArn),
       loggingLevel = pulumi.Input.asOptionalInput<String>(loggingLevel),
       region = pulumi.Input.asOptionalInput<String>(region),
       slackChannelId = pulumi.Input.asInput<String>(slackChannelId),
       slackTeamId = pulumi.Input.asInput<String>(slackTeamId),
       snsTopicArns = pulumi.Input.asOptionalInput<List<String>>(snsTopicArns),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi
           .Input.asOptionalInput<SlackChannelConfigurationTimeouts>(timeouts),
       userAuthorizationRequired = pulumi.Input.asOptionalInput<bool>(
         userAuthorizationRequired,
       );

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
      configurationName: map['configurationName'] as String,
      guardrailPolicyArns: map['guardrailPolicyArns'] == null
          ? null
          : (map['guardrailPolicyArns'] as List).cast<String>(),
      iamRoleArn: map['iamRoleArn'] as String,
      loggingLevel: map['loggingLevel'] == null
          ? null
          : map['loggingLevel'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      slackChannelId: map['slackChannelId'] as String,
      slackTeamId: map['slackTeamId'] as String,
      snsTopicArns: map['snsTopicArns'] == null
          ? null
          : (map['snsTopicArns'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : SlackChannelConfigurationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      userAuthorizationRequired: map['userAuthorizationRequired'] == null
          ? null
          : map['userAuthorizationRequired'] as bool,
    );
  }
}
