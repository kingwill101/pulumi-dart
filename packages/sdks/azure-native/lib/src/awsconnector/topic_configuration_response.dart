// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_filter_response.dart';

/// Definition of TopicConfiguration
class TopicConfigurationResponse {
  /// The Amazon S3 bucket event about which to send notifications. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<String>? event;
  /// The filtering rules that determine for which objects to send notifications. For example, you can create a filter so that Amazon S3 sends notifications only when image files with a ``.jpg`` extension are added to the bucket. Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.
  final pulumi.Input<NotificationFilterResponse>? filter;
  /// The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3 publishes a message when it detects events of the specified type.
  final pulumi.Input<String>? topic;

  /// Creates a new [TopicConfigurationResponse].
  /// [event] The Amazon S3 bucket event about which to send notifications. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the *Amazon S3 User Guide*.
  /// [filter] The filtering rules that determine for which objects to send notifications. For example, you can create a filter so that Amazon S3 sends notifications only when image files with a ``.jpg`` extension are added to the bucket. Specifies object key name filtering rules. For information about key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.
  /// [topic] The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3 publishes a message when it detects events of the specified type.
  TopicConfigurationResponse({
    this.event,
    this.filter,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': ?event,
      'filter': ?pulumi.Input.mapOptionalInputValue<NotificationFilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'topic': ?topic,
    };
  }

  factory TopicConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TopicConfigurationResponse(
      event: map['event'] == null ? null : (map['event']! as String).input(),
      filter: map['filter'] == null ? null : (NotificationFilterResponse.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

