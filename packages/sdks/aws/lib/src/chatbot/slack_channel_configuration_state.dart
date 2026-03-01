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
    pulumi.Output<String>? chatConfigurationArn,
    pulumi.Output<String>? configurationName,
    pulumi.Output<List<String>>? guardrailPolicyArns,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? loggingLevel,
    pulumi.Output<String>? region,
    pulumi.Output<String>? slackChannelId,
    pulumi.Output<String>? slackChannelName,
    pulumi.Output<String>? slackTeamId,
    pulumi.Output<String>? slackTeamName,
    pulumi.Output<List<String>>? snsTopicArns,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<SlackChannelConfigurationTimeouts>? timeouts,
    pulumi.Output<bool>? userAuthorizationRequired,
  }) :
      chatConfigurationArn = pulumi.Input.asOptionalInput<String>(chatConfigurationArn),
      configurationName = pulumi.Input.asOptionalInput<String>(configurationName),
      guardrailPolicyArns = pulumi.Input.asOptionalInput<List<String>>(guardrailPolicyArns),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      loggingLevel = pulumi.Input.asOptionalInput<String>(loggingLevel),
      region = pulumi.Input.asOptionalInput<String>(region),
      slackChannelId = pulumi.Input.asOptionalInput<String>(slackChannelId),
      slackChannelName = pulumi.Input.asOptionalInput<String>(slackChannelName),
      slackTeamId = pulumi.Input.asOptionalInput<String>(slackTeamId),
      slackTeamName = pulumi.Input.asOptionalInput<String>(slackTeamName),
      snsTopicArns = pulumi.Input.asOptionalInput<List<String>>(snsTopicArns),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<SlackChannelConfigurationTimeouts>(timeouts),
      userAuthorizationRequired = pulumi.Input.asOptionalInput<bool>(userAuthorizationRequired);

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
      'timeouts': ?pulumi.Input.mapOptionalInputValue<SlackChannelConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'userAuthorizationRequired': ?userAuthorizationRequired,
    };
  }

  factory SlackChannelConfigurationState.fromMap(Map<String, dynamic> map) {
    return SlackChannelConfigurationState(
      chatConfigurationArn: map['chatConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['chatConfigurationArn'] as String),
      configurationName: map['configurationName'] == null ? null : pulumi.Output.create<String>(map['configurationName'] as String),
      guardrailPolicyArns: map['guardrailPolicyArns'] == null ? null : pulumi.Output.create<List<String>>((map['guardrailPolicyArns'] as List).cast<String>()),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      loggingLevel: map['loggingLevel'] == null ? null : pulumi.Output.create<String>(map['loggingLevel'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      slackChannelId: map['slackChannelId'] == null ? null : pulumi.Output.create<String>(map['slackChannelId'] as String),
      slackChannelName: map['slackChannelName'] == null ? null : pulumi.Output.create<String>(map['slackChannelName'] as String),
      slackTeamId: map['slackTeamId'] == null ? null : pulumi.Output.create<String>(map['slackTeamId'] as String),
      slackTeamName: map['slackTeamName'] == null ? null : pulumi.Output.create<String>(map['slackTeamName'] as String),
      snsTopicArns: map['snsTopicArns'] == null ? null : pulumi.Output.create<List<String>>((map['snsTopicArns'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<SlackChannelConfigurationTimeouts>(SlackChannelConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      userAuthorizationRequired: map['userAuthorizationRequired'] == null ? null : pulumi.Output.create<bool>(map['userAuthorizationRequired'] as bool),
    );
  }
}

