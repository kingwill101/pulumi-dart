// ignore_for_file: unused_element, unnecessary_cast

class BucketNotificationLambdaFunction {
  /// [Event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  final List<String> events;

  /// Object key name prefix.
  final String? filterPrefix;

  /// Object key name suffix.
  final String? filterSuffix;

  /// Unique identifier for each of the notification configurations.
  final String? id;

  /// Lambda function ARN.
  final String? lambdaFunctionArn;

  BucketNotificationLambdaFunction({
    required this.events,
    this.filterPrefix,
    this.filterSuffix,
    this.id,
    this.lambdaFunctionArn,
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
    final lambdaFunctionArnValue = lambdaFunctionArn;
    if (lambdaFunctionArnValue != null) {
      map['lambdaFunctionArn'] = lambdaFunctionArnValue;
    }
    return map;
  }

  factory BucketNotificationLambdaFunction.fromMap(Map<String, dynamic> map) {
    return BucketNotificationLambdaFunction(
      events: (map['events'] as List).cast<String>(),
      filterPrefix:
          map['filterPrefix'] == null ? null : map['filterPrefix'] as String,
      filterSuffix:
          map['filterSuffix'] == null ? null : map['filterSuffix'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      lambdaFunctionArn: map['lambdaFunctionArn'] == null
          ? null
          : map['lambdaFunctionArn'] as String,
    );
  }
}
