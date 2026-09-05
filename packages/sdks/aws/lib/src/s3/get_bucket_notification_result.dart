// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_notification_lambda_function.dart';
import 'get_bucket_notification_queue.dart';
import 'get_bucket_notification_topic.dart';

/// Result data returned by getBucketNotification.
class GetBucketNotificationResult {
  final String? bucket;
  /// Whether Amazon EventBridge notifications are enabled on this bucket.
  final bool? eventbridge;
  /// List of Lambda function notification configurations. See `lambdaFunction` below.
  final List<GetBucketNotificationLambdaFunction>? lambdaFunctions;
  /// List of SQS queue notification configurations. See `queue` below.
  final List<GetBucketNotificationQueue>? queues;
  final String? region;
  /// List of SNS topic notification configurations. See `topic` below.
  final List<GetBucketNotificationTopic>? topics;

  /// Creates a new [GetBucketNotificationResult].
  /// [bucket] Optional.
  /// [eventbridge] Whether Amazon EventBridge notifications are enabled on this bucket.
  /// [lambdaFunctions] List of Lambda function notification configurations. See `lambdaFunction` below.
  /// [queues] List of SQS queue notification configurations. See `queue` below.
  /// [region] Optional.
  /// [topics] List of SNS topic notification configurations. See `topic` below.
  const GetBucketNotificationResult({
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
      'lambdaFunctions': ?(() { final guardedValue = lambdaFunctions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketNotificationLambdaFunction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'queues': ?(() { final guardedValue = queues; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketNotificationQueue, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'topics': ?(() { final guardedValue = topics; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketNotificationTopic, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBucketNotificationResult.fromMap(Map<String, dynamic> map) {
    return GetBucketNotificationResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventbridge: (() { final guardedValue = map['eventbridge']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lambdaFunctions: (() { final guardedValue = map['lambdaFunctions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketNotificationLambdaFunction>(guardedValue, (value) => GetBucketNotificationLambdaFunction.fromMap((value as Map).cast<String, dynamic>())); })(),
      queues: (() { final guardedValue = map['queues']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketNotificationQueue>(guardedValue, (value) => GetBucketNotificationQueue.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketNotificationTopic>(guardedValue, (value) => GetBucketNotificationTopic.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
