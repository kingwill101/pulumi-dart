// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogDeliverySource resources.
class LogDeliverySourceState {
  /// The Amazon Resource Name (ARN) of the delivery source.
  final pulumi.Input<String>? arn;
  /// The type of log that the source is sending. For Amazon Bedrock, the valid value is `APPLICATION_LOGS`. For Amazon CodeWhisperer, the valid value is `EVENT_LOGS`. For IAM Identity Center, the valid value is `ERROR_LOGS`. For Amazon WorkMail, the valid values are `ACCESS_CONTROL_LOGS`, `AUTHENTICATION_LOGS`, `WORKMAIL_AVAILABILITY_PROVIDER_LOGS`, and `WORKMAIL_MAILBOX_ACCESS_LOGS`.
  final pulumi.Input<String>? logType;
  /// The name for this delivery source.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the AWS resource that is generating and sending logs.
  final pulumi.Input<String>? resourceArn;
  /// The AWS service that is sending logs.
  final pulumi.Input<String>? service;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LogDeliverySourceState].
  /// [arn] The Amazon Resource Name (ARN) of the delivery source.
  /// [logType] The type of log that the source is sending. For Amazon Bedrock, the valid value is `APPLICATION_LOGS`. For Amazon CodeWhisperer, the valid value is `EVENT_LOGS`. For IAM Identity Center, the valid value is `ERROR_LOGS`. For Amazon WorkMail, the valid values are `ACCESS_CONTROL_LOGS`, `AUTHENTICATION_LOGS`, `WORKMAIL_AVAILABILITY_PROVIDER_LOGS`, and `WORKMAIL_MAILBOX_ACCESS_LOGS`.
  /// [name] The name for this delivery source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The ARN of the AWS resource that is generating and sending logs.
  /// [service] The AWS service that is sending logs.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LogDeliverySourceState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? logType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? service,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      logType = pulumi.Input.asOptionalInput<String>(logType),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      service = pulumi.Input.asOptionalInput<String>(service),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'logType': ?logType,
      'name': ?name,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'service': ?service,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LogDeliverySourceState.fromMap(Map<String, dynamic> map) {
    return LogDeliverySourceState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      logType: map['logType'] == null ? null : pulumi.Output.create<String>(map['logType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

