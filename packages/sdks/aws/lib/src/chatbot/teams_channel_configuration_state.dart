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
    this.channelId,
    this.channelName,
    this.chatConfigurationArn,
    this.configurationName,
    this.guardrailPolicyArns,
    this.iamRoleArn,
    this.loggingLevel,
    this.region,
    this.snsTopicArns,
    this.tags,
    this.tagsAll,
    this.teamId,
    this.teamName,
    this.tenantId,
    this.timeouts,
    this.userAuthorizationRequired,
  });

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
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            TeamsChannelConfigurationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'userAuthorizationRequired': ?userAuthorizationRequired,
    };
  }

  factory TeamsChannelConfigurationState.fromMap(Map<String, dynamic> map) {
    return TeamsChannelConfigurationState(
      channelId: (() {
        final guardedValue = map['channelId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      channelName: (() {
        final guardedValue = map['channelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      teamId: (() {
        final guardedValue = map['teamId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      teamName: (() {
        final guardedValue = map['teamName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TeamsChannelConfigurationTimeouts.fromMap(
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
