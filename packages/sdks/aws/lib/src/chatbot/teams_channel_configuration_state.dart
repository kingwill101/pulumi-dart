// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_channel_configuration_timeouts.dart';

/// Input properties used for looking up and filtering TeamsChannelConfiguration resources.
class TeamsChannelConfigurationState {
  /// ID of the Microsoft Teams channel.
  final pulumi.Input<String>? channelId;
  /// Name of the Microsoft Teams channel.
  final pulumi.Input<String>? channelName;
  /// ARN of the Microsoft Teams channel configuration.
  final pulumi.Input<String>? chatConfigurationArn;
  /// Name of the Microsoft Teams channel configuration.
  final pulumi.Input<String>? configurationName;
  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  final pulumi.Input<List<String>>? guardrailPolicyArns;
  /// ARN of the IAM role that defines the permissions for AWS Chatbot. This is a user-defined role that AWS Chatbot will assume. This is not the service-linked role.
  final pulumi.Input<String>? iamRoleArn;
  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  final pulumi.Input<String>? loggingLevel;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  final pulumi.Input<List<String>>? snsTopicArns;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ID of the Microsoft Team authorized with AWS Chatbot. To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console.
  final pulumi.Input<String>? teamId;
  /// Name of the Microsoft Teams team.
  final pulumi.Input<String>? teamName;
  /// ID of the Microsoft Teams tenant.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? tenantId;
  final pulumi.Input<TeamsChannelConfigurationTimeouts>? timeouts;
  /// Enables use of a user role requirement in your chat configuration.
  final pulumi.Input<bool>? userAuthorizationRequired;

  /// Creates a new [TeamsChannelConfigurationState].
  /// [channelId] ID of the Microsoft Teams channel.
  /// [channelName] Name of the Microsoft Teams channel.
  /// [chatConfigurationArn] ARN of the Microsoft Teams channel configuration.
  /// [configurationName] Name of the Microsoft Teams channel configuration.
  /// [guardrailPolicyArns] List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  /// [iamRoleArn] ARN of the IAM role that defines the permissions for AWS Chatbot. This is a user-defined role that AWS Chatbot will assume. This is not the service-linked role.
  /// [loggingLevel] Logging levels include `ERROR`, `INFO`, or `NONE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsTopicArns] ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  /// [tags] Map of tags assigned to the resource.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [teamId] ID of the Microsoft Team authorized with AWS Chatbot. To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console.
  /// [teamName] Name of the Microsoft Teams team.
  /// [tenantId] ID of the Microsoft Teams tenant.
  /// [timeouts] Optional.
  /// [userAuthorizationRequired] Enables use of a user role requirement in your chat configuration.
  TeamsChannelConfigurationState({
    pulumi.Output<String>? channelId,
    pulumi.Output<String>? channelName,
    pulumi.Output<String>? chatConfigurationArn,
    pulumi.Output<String>? configurationName,
    pulumi.Output<List<String>>? guardrailPolicyArns,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? loggingLevel,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? snsTopicArns,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? teamId,
    pulumi.Output<String>? teamName,
    pulumi.Output<String>? tenantId,
    pulumi.Output<TeamsChannelConfigurationTimeouts>? timeouts,
    pulumi.Output<bool>? userAuthorizationRequired,
  }) :
      channelId = pulumi.Input.asOptionalInput<String>(channelId),
      channelName = pulumi.Input.asOptionalInput<String>(channelName),
      chatConfigurationArn = pulumi.Input.asOptionalInput<String>(chatConfigurationArn),
      configurationName = pulumi.Input.asOptionalInput<String>(configurationName),
      guardrailPolicyArns = pulumi.Input.asOptionalInput<List<String>>(guardrailPolicyArns),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      loggingLevel = pulumi.Input.asOptionalInput<String>(loggingLevel),
      region = pulumi.Input.asOptionalInput<String>(region),
      snsTopicArns = pulumi.Input.asOptionalInput<List<String>>(snsTopicArns),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      teamId = pulumi.Input.asOptionalInput<String>(teamId),
      teamName = pulumi.Input.asOptionalInput<String>(teamName),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      timeouts = pulumi.Input.asOptionalInput<TeamsChannelConfigurationTimeouts>(timeouts),
      userAuthorizationRequired = pulumi.Input.asOptionalInput<bool>(userAuthorizationRequired);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': ?channelId,
      'channelName': ?channelName,
      'chatConfigurationArn': ?chatConfigurationArn,
      'configurationName': ?configurationName,
      'guardrailPolicyArns': ?guardrailPolicyArns,
      'iamRoleArn': ?iamRoleArn,
      'loggingLevel': ?loggingLevel,
      'region': ?region,
      'snsTopicArns': ?snsTopicArns,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'teamId': ?teamId,
      'teamName': ?teamName,
      'tenantId': ?tenantId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TeamsChannelConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'userAuthorizationRequired': ?userAuthorizationRequired,
    };
  }

  factory TeamsChannelConfigurationState.fromMap(Map<String, dynamic> map) {
    return TeamsChannelConfigurationState(
      channelId: map['channelId'] == null ? null : pulumi.Output.create<String>(map['channelId'] as String),
      channelName: map['channelName'] == null ? null : pulumi.Output.create<String>(map['channelName'] as String),
      chatConfigurationArn: map['chatConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['chatConfigurationArn'] as String),
      configurationName: map['configurationName'] == null ? null : pulumi.Output.create<String>(map['configurationName'] as String),
      guardrailPolicyArns: map['guardrailPolicyArns'] == null ? null : pulumi.Output.create<List<String>>((map['guardrailPolicyArns'] as List).cast<String>()),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      loggingLevel: map['loggingLevel'] == null ? null : pulumi.Output.create<String>(map['loggingLevel'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      snsTopicArns: map['snsTopicArns'] == null ? null : pulumi.Output.create<List<String>>((map['snsTopicArns'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      teamId: map['teamId'] == null ? null : pulumi.Output.create<String>(map['teamId'] as String),
      teamName: map['teamName'] == null ? null : pulumi.Output.create<String>(map['teamName'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<TeamsChannelConfigurationTimeouts>(TeamsChannelConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      userAuthorizationRequired: map['userAuthorizationRequired'] == null ? null : pulumi.Output.create<bool>(map['userAuthorizationRequired'] as bool),
    );
  }
}

