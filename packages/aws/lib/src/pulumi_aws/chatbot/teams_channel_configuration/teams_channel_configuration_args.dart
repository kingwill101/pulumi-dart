// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../teams_channel_configuration_timeouts/teams_channel_configuration_timeouts.dart';

/// The set of arguments for TeamsChannelConfiguration.
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

  TeamsChannelConfigurationArgs({
    required this.channelId,
    this.channelName,
    required this.configurationName,
    this.guardrailPolicyArns,
    required this.iamRoleArn,
    this.loggingLevel,
    this.region,
    this.snsTopicArns,
    this.tags,
    required this.teamId,
    this.teamName,
    required this.tenantId,
    this.timeouts,
    this.userAuthorizationRequired,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['channelId'] = channelId;
    final channelNameValue = channelName;
    if (channelNameValue != null) {
      map['channelName'] = channelNameValue;
    }
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
    final snsTopicArnsValue = snsTopicArns;
    if (snsTopicArnsValue != null) {
      map['snsTopicArns'] = snsTopicArnsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['teamId'] = teamId;
    final teamNameValue = teamName;
    if (teamNameValue != null) {
      map['teamName'] = teamNameValue;
    }
    map['tenantId'] = tenantId;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          TeamsChannelConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final userAuthorizationRequiredValue = userAuthorizationRequired;
    if (userAuthorizationRequiredValue != null) {
      map['userAuthorizationRequired'] = userAuthorizationRequiredValue;
    }
    return map;
  }

  factory TeamsChannelConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return TeamsChannelConfigurationArgs(
      channelId: pulumi.Input.asInput<String>(map['channelId']),
      channelName: pulumi.Input.asOptionalInput<String>(map['channelName']),
      configurationName: pulumi.Input.asInput<String>(map['configurationName']),
      guardrailPolicyArns: pulumi.Input.asOptionalInput<List<String>>(
          map['guardrailPolicyArns']),
      iamRoleArn: pulumi.Input.asInput<String>(map['iamRoleArn']),
      loggingLevel: pulumi.Input.asOptionalInput<String>(map['loggingLevel']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snsTopicArns:
          pulumi.Input.asOptionalInput<List<String>>(map['snsTopicArns']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      teamId: pulumi.Input.asInput<String>(map['teamId']),
      teamName: pulumi.Input.asOptionalInput<String>(map['teamName']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
      timeouts: pulumi.Input.asOptionalInput<TeamsChannelConfigurationTimeouts>(
          map['timeouts']),
      userAuthorizationRequired:
          pulumi.Input.asOptionalInput<bool>(map['userAuthorizationRequired']),
    );
  }
}
