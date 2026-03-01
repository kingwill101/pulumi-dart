// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_channel_configuration_timeouts.dart';

/// {@template pulumi_chatbot_teams_channel_configuration_teams_channel_configuration_args_doc}
/// The set of arguments for TeamsChannelConfiguration.
/// {@endtemplate}
/// {@macro pulumi_chatbot_teams_channel_configuration_teams_channel_configuration_args_doc}
class TeamsChannelConfigurationArgs {
  /// ID of the Microsoft Teams channel.
  final pulumi.Input<String> channelId;
  /// Name of the Microsoft Teams channel.
  final pulumi.Input<String>? channelName;
  /// Name of the Microsoft Teams channel configuration.
  final pulumi.Input<String> configurationName;
  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  final pulumi.Input<List<String>>? guardrailPolicyArns;
  /// ARN of the IAM role that defines the permissions for AWS Chatbot. This is a user-defined role that AWS Chatbot will assume. This is not the service-linked role.
  final pulumi.Input<String> iamRoleArn;
  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  final pulumi.Input<String>? loggingLevel;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  final pulumi.Input<List<String>>? snsTopicArns;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the Microsoft Team authorized with AWS Chatbot. To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console.
  final pulumi.Input<String> teamId;
  /// Name of the Microsoft Teams team.
  final pulumi.Input<String>? teamName;
  /// ID of the Microsoft Teams tenant.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tenantId;
  final pulumi.Input<TeamsChannelConfigurationTimeouts>? timeouts;
  /// Enables use of a user role requirement in your chat configuration.
  final pulumi.Input<bool>? userAuthorizationRequired;

  /// Creates a new [TeamsChannelConfigurationArgs].
  /// [channelId] ID of the Microsoft Teams channel.
  /// [channelName] Name of the Microsoft Teams channel.
  /// [configurationName] Name of the Microsoft Teams channel configuration.
  /// [guardrailPolicyArns] List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  /// [iamRoleArn] ARN of the IAM role that defines the permissions for AWS Chatbot. This is a user-defined role that AWS Chatbot will assume. This is not the service-linked role.
  /// [loggingLevel] Logging levels include `ERROR`, `INFO`, or `NONE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsTopicArns] ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  /// [tags] Map of tags assigned to the resource.
  /// [teamId] ID of the Microsoft Team authorized with AWS Chatbot. To get the team ID, you must perform the initial authorization flow with Microsoft Teams in the AWS Chatbot console. Then you can copy and paste the team ID from the console.
  /// [teamName] Name of the Microsoft Teams team.
  /// [tenantId] ID of the Microsoft Teams tenant.
  /// [timeouts] Optional.
  /// [userAuthorizationRequired] Enables use of a user role requirement in your chat configuration.
  TeamsChannelConfigurationArgs({
    required String channelId,
    String? channelName,
    required String configurationName,
    List<String>? guardrailPolicyArns,
    required String iamRoleArn,
    String? loggingLevel,
    String? region,
    List<String>? snsTopicArns,
    Map<String, String>? tags,
    required String teamId,
    String? teamName,
    required String tenantId,
    TeamsChannelConfigurationTimeouts? timeouts,
    bool? userAuthorizationRequired,
  }) :
      channelId = pulumi.Input.asInput<String>(channelId),
      channelName = pulumi.Input.asOptionalInput<String>(channelName),
      configurationName = pulumi.Input.asInput<String>(configurationName),
      guardrailPolicyArns = pulumi.Input.asOptionalInput<List<String>>(guardrailPolicyArns),
      iamRoleArn = pulumi.Input.asInput<String>(iamRoleArn),
      loggingLevel = pulumi.Input.asOptionalInput<String>(loggingLevel),
      region = pulumi.Input.asOptionalInput<String>(region),
      snsTopicArns = pulumi.Input.asOptionalInput<List<String>>(snsTopicArns),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      teamId = pulumi.Input.asInput<String>(teamId),
      teamName = pulumi.Input.asOptionalInput<String>(teamName),
      tenantId = pulumi.Input.asInput<String>(tenantId),
      timeouts = pulumi.Input.asOptionalInput<TeamsChannelConfigurationTimeouts>(timeouts),
      userAuthorizationRequired = pulumi.Input.asOptionalInput<bool>(userAuthorizationRequired);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'channelName': ?channelName,
      'configurationName': configurationName,
      'guardrailPolicyArns': ?guardrailPolicyArns,
      'iamRoleArn': iamRoleArn,
      'loggingLevel': ?loggingLevel,
      'region': ?region,
      'snsTopicArns': ?snsTopicArns,
      'tags': ?tags,
      'teamId': teamId,
      'teamName': ?teamName,
      'tenantId': tenantId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TeamsChannelConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'userAuthorizationRequired': ?userAuthorizationRequired,
    };
  }

  factory TeamsChannelConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return TeamsChannelConfigurationArgs(
      channelId: map['channelId'] as String,
      channelName: map['channelName'] == null ? null : map['channelName'] as String,
      configurationName: map['configurationName'] as String,
      guardrailPolicyArns: map['guardrailPolicyArns'] == null ? null : (map['guardrailPolicyArns'] as List).cast<String>(),
      iamRoleArn: map['iamRoleArn'] as String,
      loggingLevel: map['loggingLevel'] == null ? null : map['loggingLevel'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      snsTopicArns: map['snsTopicArns'] == null ? null : (map['snsTopicArns'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      teamId: map['teamId'] as String,
      teamName: map['teamName'] == null ? null : map['teamName'] as String,
      tenantId: map['tenantId'] as String,
      timeouts: map['timeouts'] == null ? null : TeamsChannelConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
      userAuthorizationRequired: map['userAuthorizationRequired'] == null ? null : map['userAuthorizationRequired'] as bool,
    );
  }
}

