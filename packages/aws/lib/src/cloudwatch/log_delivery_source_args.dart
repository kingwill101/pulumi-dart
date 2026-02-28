// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_delivery_source_log_delivery_source_args_doc}
/// The set of arguments for LogDeliverySource.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_delivery_source_log_delivery_source_args_doc}
class LogDeliverySourceArgs {
  /// The type of log that the source is sending. For Amazon Bedrock, the valid value is `APPLICATION_LOGS`. For Amazon CodeWhisperer, the valid value is `EVENT_LOGS`. For IAM Identity Center, the valid value is `ERROR_LOGS`. For Amazon WorkMail, the valid values are `ACCESS_CONTROL_LOGS`, `AUTHENTICATION_LOGS`, `WORKMAIL_AVAILABILITY_PROVIDER_LOGS`, and `WORKMAIL_MAILBOX_ACCESS_LOGS`.
  final pulumi.Input<String> logType;

  /// The name for this delivery source.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the AWS resource that is generating and sending logs.
  final pulumi.Input<String> resourceArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LogDeliverySourceArgs].
  /// [logType] The type of log that the source is sending. For Amazon Bedrock, the valid value is `APPLICATION_LOGS`. For Amazon CodeWhisperer, the valid value is `EVENT_LOGS`. For IAM Identity Center, the valid value is `ERROR_LOGS`. For Amazon WorkMail, the valid values are `ACCESS_CONTROL_LOGS`, `AUTHENTICATION_LOGS`, `WORKMAIL_AVAILABILITY_PROVIDER_LOGS`, and `WORKMAIL_MAILBOX_ACCESS_LOGS`.
  /// [name] The name for this delivery source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The ARN of the AWS resource that is generating and sending logs.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LogDeliverySourceArgs({
    required String logType,
    String? name,
    String? region,
    required String resourceArn,
    Map<String, String>? tags,
  })  : logType = pulumi.Input.asInput<String>(logType),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceArn = pulumi.Input.asInput<String>(resourceArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logType'] = logType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LogDeliverySourceArgs.fromMap(Map<String, dynamic> map) {
    return LogDeliverySourceArgs(
      logType: map['logType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceArn: map['resourceArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
