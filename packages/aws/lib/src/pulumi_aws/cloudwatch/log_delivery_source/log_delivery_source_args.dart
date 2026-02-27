// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogDeliverySource.
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

  LogDeliverySourceArgs({
    required this.logType,
    this.name,
    this.region,
    required this.resourceArn,
    this.tags,
  });

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
      logType: pulumi.Input.asInput<String>(map['logType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
