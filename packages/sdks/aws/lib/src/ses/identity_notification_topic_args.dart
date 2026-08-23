// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_identity_notification_topic_identity_notification_topic_args_doc}
/// The set of arguments for IdentityNotificationTopic.
/// {@endtemplate}
/// {@macro pulumi_ses_identity_notification_topic_identity_notification_topic_args_doc}
class IdentityNotificationTopicArgs {
  /// The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN).
  final pulumi.Input<String> identity;
  /// Whether SES should include original email headers in SNS notifications of this type. `false` by default.
  final pulumi.Input<bool>? includeOriginalHeaders;
  /// The type of notifications that will be published to the specified Amazon SNS topic. Valid Values: `Bounce`, `Complaint` or `Delivery`.
  final pulumi.Input<String> notificationType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the Amazon SNS topic. Can be set to `""` (an empty string) to disable publishing.
  final pulumi.Input<String>? topicArn;

  /// Creates a new [IdentityNotificationTopicArgs].
  /// [identity] The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN).
  /// [includeOriginalHeaders] Whether SES should include original email headers in SNS notifications of this type. `false` by default.
  /// [notificationType] The type of notifications that will be published to the specified Amazon SNS topic. Valid Values: `Bounce`, `Complaint` or `Delivery`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [topicArn] The Amazon Resource Name (ARN) of the Amazon SNS topic. Can be set to `""` (an empty string) to disable publishing.
  const IdentityNotificationTopicArgs({
    required this.identity,
    this.includeOriginalHeaders,
    required this.notificationType,
    this.region,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'includeOriginalHeaders': ?includeOriginalHeaders,
      'notificationType': notificationType,
      'region': ?region,
      'topicArn': ?topicArn,
    };
  }

  factory IdentityNotificationTopicArgs.fromMap(Map<String, dynamic> map) {
    return IdentityNotificationTopicArgs(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      includeOriginalHeaders: (() { final guardedValue = map['includeOriginalHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notificationType: pulumi.Input.fromValue(map['notificationType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
