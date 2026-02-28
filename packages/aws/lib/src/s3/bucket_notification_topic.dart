// ignore_for_file: unused_element, unnecessary_cast

class BucketNotificationTopic {
  /// [Event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  final List<String> events;

  /// Object key name prefix.
  final String? filterPrefix;

  /// Object key name suffix.
  final String? filterSuffix;

  /// Unique identifier for each of the notification configurations.
  final String? id;

  /// SNS topic ARN.
  final String topicArn;

  /// Creates a new [BucketNotificationTopic].
  /// [events] [Event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  /// [filterPrefix] Object key name prefix.
  /// [filterSuffix] Object key name suffix.
  /// [id] Unique identifier for each of the notification configurations.
  /// [topicArn] SNS topic ARN.
  BucketNotificationTopic({
    required this.events,
    this.filterPrefix,
    this.filterSuffix,
    this.id,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['events'] = events;
    final filterPrefixValue = filterPrefix;
    if (filterPrefixValue != null) {
      map['filterPrefix'] = filterPrefixValue;
    }
    final filterSuffixValue = filterSuffix;
    if (filterSuffixValue != null) {
      map['filterSuffix'] = filterSuffixValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['topicArn'] = topicArn;
    return map;
  }

  factory BucketNotificationTopic.fromMap(Map<String, dynamic> map) {
    return BucketNotificationTopic(
      events: (map['events'] as List).cast<String>(),
      filterPrefix:
          map['filterPrefix'] == null ? null : map['filterPrefix'] as String,
      filterSuffix:
          map['filterSuffix'] == null ? null : map['filterSuffix'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      topicArn: map['topicArn'] as String,
    );
  }
}
