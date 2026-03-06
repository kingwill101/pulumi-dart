// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_notification_lambda_function.dart';
import 'bucket_notification_queue.dart';
import 'bucket_notification_topic.dart';

/// Input properties used for looking up and filtering BucketNotification resources.
class BucketNotificationState {
  /// Name of the bucket for notification configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? bucket;
  /// Whether to enable Amazon EventBridge notifications. Defaults to `false`.
  final pulumi.Input<bool>? eventbridge;
  /// Used to configure notifications to a Lambda Function. See below.
  final pulumi.Input<List<BucketNotificationLambdaFunction>>? lambdaFunctions;
  /// Notification configuration to SQS Queue. See below.
  final pulumi.Input<List<BucketNotificationQueue>>? queues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Notification configuration to SNS Topic. See below.
  final pulumi.Input<List<BucketNotificationTopic>>? topics;

  /// Creates a new [BucketNotificationState].
  /// [bucket] Name of the bucket for notification configuration.
  /// [eventbridge] Whether to enable Amazon EventBridge notifications. Defaults to `false`.
  /// [lambdaFunctions] Used to configure notifications to a Lambda Function. See below.
  /// [queues] Notification configuration to SQS Queue. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [topics] Notification configuration to SNS Topic. See below.
  const BucketNotificationState({
    this.bucket,
    this.eventbridge,
    this.lambdaFunctions,
    this.queues,
    this.region,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'eventbridge': ?eventbridge,
      'lambdaFunctions': ?pulumi.Input.mapOptionalInputValue<List<BucketNotificationLambdaFunction>, List<Map<String, dynamic>>>(lambdaFunctions, (value) => pulumi.Input.encodeList<BucketNotificationLambdaFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queues': ?pulumi.Input.mapOptionalInputValue<List<BucketNotificationQueue>, List<Map<String, dynamic>>>(queues, (value) => pulumi.Input.encodeList<BucketNotificationQueue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'topics': ?pulumi.Input.mapOptionalInputValue<List<BucketNotificationTopic>, List<Map<String, dynamic>>>(topics, (value) => pulumi.Input.encodeList<BucketNotificationTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketNotificationState.fromMap(Map<String, dynamic> map) {
    return BucketNotificationState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventbridge: (() { final guardedValue = map['eventbridge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lambdaFunctions: (() { final guardedValue = map['lambdaFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketNotificationLambdaFunction>(guardedValue, (value) => BucketNotificationLambdaFunction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queues: (() { final guardedValue = map['queues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketNotificationQueue>(guardedValue, (value) => BucketNotificationQueue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketNotificationTopic>(guardedValue, (value) => BucketNotificationTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

