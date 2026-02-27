import 'package:pulumi/pulumi.dart';
import '../teams_channel_configuration_timeouts/teams_channel_configuration_timeouts.dart';
import 'teams_channel_configuration_args.dart';

/// Resource for managing an AWS Chatbot Microsoft Teams Channel Configuration.
///
/// > **NOTE:** We provide this resource on a best-effort basis. If you are able to test it and find it useful, we welcome your input at GitHub.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Chatbot Microsoft Teams Channel Configuration using the `team_id`. For example:
///
/// ```sh
/// $ pulumi import aws:chatbot/teamsChannelConfiguration:TeamsChannelConfiguration example 5f4f15d2-b958-522a-8333-124aa8bf0925
/// ```
class TeamsChannelConfiguration extends CustomResource {
  /// ID of the Microsoft Teams channel.
  late final Output<String> channelId;

  /// Name of the Microsoft Teams channel.
  late final Output<String> channelName;

  /// ARN of the Microsoft Teams channel configuration.
  late final Output<String> chatConfigurationArn;

  /// Name of the Microsoft Teams channel configuration.
  late final Output<String> configurationName;

  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  late final Output<List<String>> guardrailPolicyArns;

  /// ARN of the IAM role that defines the permissions for AWS Chatbot. This is a user-defined role that AWS Chatbot will assume. This is not the service-linked role.
  late final Output<String> iamRoleArn;

  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  late final Output<String> loggingLevel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  late final Output<List<String>> snsTopicArns;

  /// Map of tags assigned to the resource.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the Microsoft Team authorized with AWS Chatbot. To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console.
  late final Output<String> teamId;

  /// Name of the Microsoft Teams team.
  late final Output<String> teamName;

  /// ID of the Microsoft Teams tenant.
  ///
  /// The following arguments are optional:
  late final Output<String> tenantId;
  late final Output<TeamsChannelConfigurationTimeouts?> timeouts;

  /// Enables use of a user role requirement in your chat configuration.
  late final Output<bool> userAuthorizationRequired;

  TeamsChannelConfiguration(
    String name, {
    TeamsChannelConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chatbot/teamsChannelConfiguration:TeamsChannelConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.channelId = registerOutput<String>('channelId');
    this.channelName = registerOutput<String>('channelName');
    this.chatConfigurationArn = registerOutput<String>('chatConfigurationArn');
    this.configurationName = registerOutput<String>('configurationName');
    this.guardrailPolicyArns =
        registerOutput<List<String>>('guardrailPolicyArns');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.loggingLevel = registerOutput<String>('loggingLevel');
    this.region = registerOutput<String>('region');
    this.snsTopicArns = registerOutput<List<String>>('snsTopicArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.teamId = registerOutput<String>('teamId');
    this.teamName = registerOutput<String>('teamName');
    this.tenantId = registerOutput<String>('tenantId');
    this.timeouts =
        registerOutput<TeamsChannelConfigurationTimeouts?>('timeouts');
    this.userAuthorizationRequired =
        registerOutput<bool>('userAuthorizationRequired');
  }
}
