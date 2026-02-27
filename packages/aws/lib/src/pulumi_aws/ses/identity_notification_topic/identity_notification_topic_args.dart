// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for IdentityNotificationTopic.
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

  IdentityNotificationTopicArgs({
    required this.identity,
    this.includeOriginalHeaders,
    required this.notificationType,
    this.region,
    this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identity'] = identity;
    final includeOriginalHeadersValue = includeOriginalHeaders;
    if (includeOriginalHeadersValue != null) {
      map['includeOriginalHeaders'] = includeOriginalHeadersValue;
    }
    map['notificationType'] = notificationType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final topicArnValue = topicArn;
    if (topicArnValue != null) {
      map['topicArn'] = topicArnValue;
    }
    return map;
  }

  factory IdentityNotificationTopicArgs.fromMap(Map<String, dynamic> map) {
    return IdentityNotificationTopicArgs(
      identity: pulumi.Input.asInput<String>(map['identity']),
      includeOriginalHeaders:
          pulumi.Input.asOptionalInput<bool>(map['includeOriginalHeaders']),
      notificationType: pulumi.Input.asInput<String>(map['notificationType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      topicArn: pulumi.Input.asOptionalInput<String>(map['topicArn']),
    );
  }
}
