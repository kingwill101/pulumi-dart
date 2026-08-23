// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_notification_lambda_function.dart';
import 'get_bucket_notification_queue.dart';
import 'get_bucket_notification_topic.dart';

/// Result data returned by getBucketNotification.
class GetBucketNotificationResult {
  final String bucket;
  /// Whether Amazon EventBridge notifications are enabled on this bucket.
  final bool eventbridge;
  /// List of Lambda function notification configurations. See `lambdaFunction` below.
  final List<GetBucketNotificationLambdaFunction> lambdaFunctions;
  /// List of SQS queue notification configurations. See `queue` below.
  final List<GetBucketNotificationQueue> queues;
  final String region;
  /// List of SNS topic notification configurations. See `topic` below.
  final List<GetBucketNotificationTopic> topics;

  /// Creates a new [GetBucketNotificationResult].
  /// [bucket] Required.
  /// [eventbridge] Whether Amazon EventBridge notifications are enabled on this bucket.
  /// [lambdaFunctions] List of Lambda function notification configurations. See `lambdaFunction` below.
  /// [queues] List of SQS queue notification configurations. See `queue` below.
  /// [region] Required.
  /// [topics] List of SNS topic notification configurations. See `topic` below.
  const GetBucketNotificationResult({
    required this.bucket,
    required this.eventbridge,
    required this.lambdaFunctions,
    required this.queues,
    required this.region,
    required this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'eventbridge': eventbridge,
      'lambdaFunctions': pulumi.Input.encodeList<GetBucketNotificationLambdaFunction, Map<String, dynamic>>(lambdaFunctions, (value) => value.toMap()),
      'queues': pulumi.Input.encodeList<GetBucketNotificationQueue, Map<String, dynamic>>(queues, (value) => value.toMap()),
      'region': region,
      'topics': pulumi.Input.encodeList<GetBucketNotificationTopic, Map<String, dynamic>>(topics, (value) => value.toMap()),
    };
  }

  factory GetBucketNotificationResult.fromMap(Map<String, dynamic> map) {
    return GetBucketNotificationResult(
      bucket: map['bucket'] as String,
      eventbridge: map['eventbridge'] as bool,
      lambdaFunctions: pulumi.Input.decodeList<GetBucketNotificationLambdaFunction>(map['lambdaFunctions']!, (value) => GetBucketNotificationLambdaFunction.fromMap((value as Map).cast<String, dynamic>())),
      queues: pulumi.Input.decodeList<GetBucketNotificationQueue>(map['queues']!, (value) => GetBucketNotificationQueue.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      topics: pulumi.Input.decodeList<GetBucketNotificationTopic>(map['topics']!, (value) => GetBucketNotificationTopic.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
