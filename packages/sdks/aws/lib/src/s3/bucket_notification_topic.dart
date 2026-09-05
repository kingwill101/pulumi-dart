// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketNotificationTopic {
  /// [Event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  final pulumi.Input<List<String>> events;
  /// Object key name prefix.
  final pulumi.Input<String?>? filterPrefix;
  /// Object key name suffix.
  final pulumi.Input<String?>? filterSuffix;
  /// Unique identifier for each of the notification configurations.
  final pulumi.Input<String?>? id;
  /// SNS topic ARN.
  final pulumi.Input<String> topicArn;

  /// Creates a new [BucketNotificationTopic].
  /// [events] [Event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  /// [filterPrefix] Object key name prefix.
  /// [filterSuffix] Object key name suffix.
  /// [id] Unique identifier for each of the notification configurations.
  /// [topicArn] SNS topic ARN.
  const BucketNotificationTopic({
    required this.events,
    this.filterPrefix,
    this.filterSuffix,
    this.id,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': events,
      'filterPrefix': ?filterPrefix,
      'filterSuffix': ?filterSuffix,
      'id': ?id,
      'topicArn': topicArn,
    };
  }

  factory BucketNotificationTopic.fromMap(Map<String, dynamic> map) {
    return BucketNotificationTopic(
      events: pulumi.Input.fromValue((map['events'] as List).cast<String>()),
      filterPrefix: (() { final guardedValue = map['filterPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterSuffix: (() { final guardedValue = map['filterSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
