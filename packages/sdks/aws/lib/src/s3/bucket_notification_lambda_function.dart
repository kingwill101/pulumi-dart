// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketNotificationLambdaFunction {
  /// [Event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  final pulumi.Input<List<String>> events;
  /// Object key name prefix.
  final pulumi.Input<String>? filterPrefix;
  /// Object key name suffix.
  final pulumi.Input<String>? filterSuffix;
  /// Unique identifier for each of the notification configurations.
  final pulumi.Input<String>? id;
  /// Lambda function ARN.
  final pulumi.Input<String>? lambdaFunctionArn;

  /// Creates a new [BucketNotificationLambdaFunction].
  /// [events] [Event](http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html#notification-how-to-event-types-and-destinations) for which to send notifications.
  /// [filterPrefix] Object key name prefix.
  /// [filterSuffix] Object key name suffix.
  /// [id] Unique identifier for each of the notification configurations.
  /// [lambdaFunctionArn] Lambda function ARN.
  BucketNotificationLambdaFunction({
    required this.events,
    this.filterPrefix,
    this.filterSuffix,
    this.id,
    this.lambdaFunctionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'events': events,
      'filterPrefix': ?filterPrefix,
      'filterSuffix': ?filterSuffix,
      'id': ?id,
      'lambdaFunctionArn': ?lambdaFunctionArn,
    };
  }

  factory BucketNotificationLambdaFunction.fromMap(Map<String, dynamic> map) {
    return BucketNotificationLambdaFunction(
      events: ((map['events'] as List).cast<String>()).input(),
      filterPrefix: map['filterPrefix'] == null ? null : (map['filterPrefix'] as String).input(),
      filterSuffix: map['filterSuffix'] == null ? null : (map['filterSuffix'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      lambdaFunctionArn: map['lambdaFunctionArn'] == null ? null : (map['lambdaFunctionArn'] as String).input(),
    );
  }
}

