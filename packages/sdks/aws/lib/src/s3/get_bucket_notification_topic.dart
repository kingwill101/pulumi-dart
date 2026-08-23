// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketNotificationTopic {
  /// [Events](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-event-types-and-destinations.html) for which Amazon S3 sends notifications.
  final pulumi.Input<List<String>> events;
  /// Object key name prefix.
  final pulumi.Input<String> filterPrefix;
  /// Object key name suffix.
  final pulumi.Input<String> filterSuffix;
  /// Unique identifier for the notification configuration.
  final pulumi.Input<String> id;
  /// ARN of the SNS topic.
  final pulumi.Input<String> topicArn;

  /// Creates a new [GetBucketNotificationTopic].
  /// [events] [Events](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-event-types-and-destinations.html) for which Amazon S3 sends notifications.
  /// [filterPrefix] Object key name prefix.
  /// [filterSuffix] Object key name suffix.
  /// [id] Unique identifier for the notification configuration.
  /// [topicArn] ARN of the SNS topic.
  const GetBucketNotificationTopic({
    required this.events,
    required this.filterPrefix,
    required this.filterSuffix,
    required this.id,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': events,
      'filterPrefix': filterPrefix,
      'filterSuffix': filterSuffix,
      'id': id,
      'topicArn': topicArn,
    };
  }

  factory GetBucketNotificationTopic.fromMap(Map<String, dynamic> map) {
    return GetBucketNotificationTopic(
      events: pulumi.Input.fromValue((map['events'] as List).cast<String>()),
      filterPrefix: pulumi.Input.fromValue(map['filterPrefix'] as String),
      filterSuffix: pulumi.Input.fromValue(map['filterSuffix'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
