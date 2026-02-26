// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IdentityNotificationTopic.
class IdentityNotificationTopicArgs {
  /// The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN).
  final Input<String> identity;

  /// Whether SES should include original email headers in SNS notifications of this type. <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> by default.
  final Input<bool>? includeOriginalHeaders;

  /// The type of notifications that will be published to the specified Amazon SNS topic. Valid Values: `Bounce`, `Complaint` or `Delivery`.
  final Input<String> notificationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the Amazon SNS topic. Can be set to `""` (an empty string) to disable publishing.
  final Input<String>? topicArn;

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
      identity: Input.asInput<String>(map['identity']),
      includeOriginalHeaders:
          Input.asOptionalInput<bool>(map['includeOriginalHeaders']),
      notificationType: Input.asInput<String>(map['notificationType']),
      region: Input.asOptionalInput<String>(map['region']),
      topicArn: Input.asOptionalInput<String>(map['topicArn']),
    );
  }
}
