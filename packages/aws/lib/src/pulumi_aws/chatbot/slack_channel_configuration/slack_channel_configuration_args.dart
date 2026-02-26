// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../slack_channel_configuration_timeouts/slack_channel_configuration_timeouts.dart';

/// The set of arguments for SlackChannelConfiguration.
class SlackChannelConfigurationArgs {
  /// Name of the Slack channel configuration.
  final Input<String> configurationName;

  /// List of IAM policy ARNs that are applied as channel guardrails. The AWS managed `AdministratorAccess` policy is applied by default if this is not set.
  final Input<List<String>>? guardrailPolicyArns;

  /// User-defined role that AWS Chatbot assumes. This is not the service-linked role.
  final Input<String> iamRoleArn;

  /// Logging levels include `ERROR`, `INFO`, or `NONE`.
  final Input<String>? loggingLevel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the Slack channel. For example, `C07EZ1ABC23`.
  final Input<String> slackChannelId;

  /// ID of the Slack workspace authorized with AWS Chatbot. For example, `T07EA123LEP`.
  ///
  /// The following arguments are optional:
  final Input<String> slackTeamId;

  /// ARNs of the SNS topics that deliver notifications to AWS Chatbot.
  final Input<List<String>>? snsTopicArns;

  /// Map of tags assigned to the resource.
  final Input<Map<String, String>>? tags;
  final Input<SlackChannelConfigurationTimeouts>? timeouts;

  /// Enables use of a user role requirement in your chat configuration.
  final Input<bool>? userAuthorizationRequired;

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
    final map = <String, dynamic>{};
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
    map['slackChannelId'] = slackChannelId;
    map['slackTeamId'] = slackTeamId;
    final snsTopicArnsValue = snsTopicArns;
    if (snsTopicArnsValue != null) {
      map['snsTopicArns'] = snsTopicArnsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          SlackChannelConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final userAuthorizationRequiredValue = userAuthorizationRequired;
    if (userAuthorizationRequiredValue != null) {
      map['userAuthorizationRequired'] = userAuthorizationRequiredValue;
    }
    return map;
  }

  factory SlackChannelConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SlackChannelConfigurationArgs(
      configurationName: Input.asInput<String>(map['configurationName']),
      guardrailPolicyArns:
          Input.asOptionalInput<List<String>>(map['guardrailPolicyArns']),
      iamRoleArn: Input.asInput<String>(map['iamRoleArn']),
      loggingLevel: Input.asOptionalInput<String>(map['loggingLevel']),
      region: Input.asOptionalInput<String>(map['region']),
      slackChannelId: Input.asInput<String>(map['slackChannelId']),
      slackTeamId: Input.asInput<String>(map['slackTeamId']),
      snsTopicArns: Input.asOptionalInput<List<String>>(map['snsTopicArns']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<SlackChannelConfigurationTimeouts>(
          map['timeouts']),
      userAuthorizationRequired:
          Input.asOptionalInput<bool>(map['userAuthorizationRequired']),
    );
  }
}
