// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityNotificationTopic resources.
class IdentityNotificationTopicState {
  /// The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN).
  final pulumi.Input<String>? identity;
  /// Whether SES should include original email headers in SNS notifications of this type. `false` by default.
  final pulumi.Input<bool>? includeOriginalHeaders;
  /// The type of notifications that will be published to the specified Amazon SNS topic. Valid Values: `Bounce`, `Complaint` or `Delivery`.
  final pulumi.Input<String>? notificationType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the Amazon SNS topic. Can be set to `""` (an empty string) to disable publishing.
  final pulumi.Input<String>? topicArn;

  /// Creates a new [IdentityNotificationTopicState].
  /// [identity] The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN).
  /// [includeOriginalHeaders] Whether SES should include original email headers in SNS notifications of this type. `false` by default.
  /// [notificationType] The type of notifications that will be published to the specified Amazon SNS topic. Valid Values: `Bounce`, `Complaint` or `Delivery`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [topicArn] The Amazon Resource Name (ARN) of the Amazon SNS topic. Can be set to `""` (an empty string) to disable publishing.
  IdentityNotificationTopicState({
    pulumi.Output<String>? identity,
    pulumi.Output<bool>? includeOriginalHeaders,
    pulumi.Output<String>? notificationType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? topicArn,
  }) :
      identity = pulumi.Input.asOptionalInput<String>(identity),
      includeOriginalHeaders = pulumi.Input.asOptionalInput<bool>(includeOriginalHeaders),
      notificationType = pulumi.Input.asOptionalInput<String>(notificationType),
      region = pulumi.Input.asOptionalInput<String>(region),
      topicArn = pulumi.Input.asOptionalInput<String>(topicArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'includeOriginalHeaders': ?includeOriginalHeaders,
      'notificationType': ?notificationType,
      'region': ?region,
      'topicArn': ?topicArn,
    };
  }

  factory IdentityNotificationTopicState.fromMap(Map<String, dynamic> map) {
    return IdentityNotificationTopicState(
      identity: map['identity'] == null ? null : pulumi.Output.create<String>(map['identity'] as String),
      includeOriginalHeaders: map['includeOriginalHeaders'] == null ? null : pulumi.Output.create<bool>(map['includeOriginalHeaders'] as bool),
      notificationType: map['notificationType'] == null ? null : pulumi.Output.create<String>(map['notificationType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      topicArn: map['topicArn'] == null ? null : pulumi.Output.create<String>(map['topicArn'] as String),
    );
  }
}

