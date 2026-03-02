// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketNotificationQueue {
  /// Specifies [event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  final pulumi.Input<List<String>> events;
  /// Object key name prefix.
  final pulumi.Input<String>? filterPrefix;
  /// Object key name suffix.
  final pulumi.Input<String>? filterSuffix;
  /// Unique identifier for each of the notification configurations.
  final pulumi.Input<String>? id;
  /// SQS queue ARN.
  final pulumi.Input<String> queueArn;

  /// Creates a new [BucketNotificationQueue].
  /// [events] Specifies [event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  /// [filterPrefix] Object key name prefix.
  /// [filterSuffix] Object key name suffix.
  /// [id] Unique identifier for each of the notification configurations.
  /// [queueArn] SQS queue ARN.
  BucketNotificationQueue({
    required this.events,
    this.filterPrefix,
    this.filterSuffix,
    this.id,
    required this.queueArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': events,
      'filterPrefix': ?filterPrefix,
      'filterSuffix': ?filterSuffix,
      'id': ?id,
      'queueArn': queueArn,
    };
  }

  factory BucketNotificationQueue.fromMap(Map<String, dynamic> map) {
    return BucketNotificationQueue(
      events: ((map['events'] as List).cast<String>()).input(),
      filterPrefix: map['filterPrefix'] == null ? null : ((map['filterPrefix'] as String).input()).input(),
      filterSuffix: map['filterSuffix'] == null ? null : ((map['filterSuffix'] as String).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      queueArn: (map['queueArn'] as String).input(),
    );
  }
}

