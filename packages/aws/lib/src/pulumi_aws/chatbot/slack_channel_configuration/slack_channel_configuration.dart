import 'package:pulumi/pulumi.dart';
import '../slack_channel_configuration_timeouts/slack_channel_configuration_timeouts.dart';
import 'slack_channel_configuration_args.dart';

/// Resource for managing an AWS Chatbot Slack Channel Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Chatbot Slack Channel Configuration using the `chat_configuration_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:chatbot/slackChannelConfiguration:SlackChannelConfiguration example arn:aws:chatbot::123456789012:chat-configuration/slack-channel/min-slaka-kanal
/// ```
class SlackChannelConfiguration extends CustomResource {
  /// ARN of the Slack channel configuration.
  late final Output<String> chatConfigurationArn;

  /// Name of the Slack channel configuration.
  late final Output<String> configurationName;

  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  late final Output<List<String>> guardrailPolicyArns;

  /// User-defined role that AWS Chatbot assumes. This is not the service-linked role.
  late final Output<String> iamRoleArn;

  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  late final Output<String> loggingLevel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the Slack channel. For example, `C07EZ1ABC23`.
  late final Output<String> slackChannelId;

  /// Name of the Slack channel.
  late final Output<String> slackChannelName;

  /// ID of the Slack workspace authorized with AWS Chatbot. For example, `T07EA123LEP`.
  ///
  /// The following arguments are optional:
  late final Output<String> slackTeamId;

  /// Name of the Slack team.
  late final Output<String> slackTeamName;

  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  late final Output<List<String>> snsTopicArns;

  /// Map of tags assigned to the resource.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<SlackChannelConfigurationTimeouts?> timeouts;

  /// Enables use of a user role requirement in your chat configuration.
  late final Output<bool> userAuthorizationRequired;

  SlackChannelConfiguration(
    String name, {
    SlackChannelConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chatbot/slackChannelConfiguration:SlackChannelConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.chatConfigurationArn = registerOutput<String>('chatConfigurationArn');
    this.configurationName = registerOutput<String>('configurationName');
    this.guardrailPolicyArns =
        registerOutput<List<String>>('guardrailPolicyArns');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.loggingLevel = registerOutput<String>('loggingLevel');
    this.region = registerOutput<String>('region');
    this.slackChannelId = registerOutput<String>('slackChannelId');
    this.slackChannelName = registerOutput<String>('slackChannelName');
    this.slackTeamId = registerOutput<String>('slackTeamId');
    this.slackTeamName = registerOutput<String>('slackTeamName');
    this.snsTopicArns = registerOutput<List<String>>('snsTopicArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<SlackChannelConfigurationTimeouts?>('timeouts');
    this.userAuthorizationRequired =
        registerOutput<bool>('userAuthorizationRequired');
  }
}
