// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_notification_lambda_function/bucket_notification_lambda_function.dart';
import '../bucket_notification_queue/bucket_notification_queue.dart';
import '../bucket_notification_topic/bucket_notification_topic.dart';

/// The set of arguments for BucketNotification.
class BucketNotificationArgs {
  /// Name of the bucket for notification configuration.
  ///
  /// The following arguments are optional:
  final Input<String> bucket;

  /// Whether to enable Amazon EventBridge notifications. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? eventbridge;

  /// Used to configure notifications to a Lambda Function. See below.
  final Input<List<BucketNotificationLambdaFunction>>? lambdaFunctions;

  /// Notification configuration to SQS Queue. See below.
  final Input<List<BucketNotificationQueue>>? queues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Notification configuration to SNS Topic. See below.
  final Input<List<BucketNotificationTopic>>? topics;

  BucketNotificationArgs({
    required this.bucket,
    this.eventbridge,
    this.lambdaFunctions,
    this.queues,
    this.region,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final eventbridgeValue = eventbridge;
    if (eventbridgeValue != null) {
      map['eventbridge'] = eventbridgeValue;
    }
    final lambdaFunctionsValue = lambdaFunctions;
    if (lambdaFunctionsValue != null) {
      map['lambdaFunctions'] = Input.mapOptionalInputValue<
              List<BucketNotificationLambdaFunction>,
              List<Map<String, dynamic>>>(
          lambdaFunctionsValue,
          (value) => Input.encodeList<BucketNotificationLambdaFunction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final queuesValue = queues;
    if (queuesValue != null) {
      map['queues'] = Input.mapOptionalInputValue<List<BucketNotificationQueue>,
              List<Map<String, dynamic>>>(
          queuesValue,
          (value) =>
              Input.encodeList<BucketNotificationQueue, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final topicsValue = topics;
    if (topicsValue != null) {
      map['topics'] = Input.mapOptionalInputValue<List<BucketNotificationTopic>,
              List<Map<String, dynamic>>>(
          topicsValue,
          (value) =>
              Input.encodeList<BucketNotificationTopic, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory BucketNotificationArgs.fromMap(Map<String, dynamic> map) {
    return BucketNotificationArgs(
      bucket: Input.asInput<String>(map['bucket']),
      eventbridge: Input.asOptionalInput<bool>(map['eventbridge']),
      lambdaFunctions:
          Input.asOptionalInput<List<BucketNotificationLambdaFunction>>(
              map['lambdaFunctions']),
      queues:
          Input.asOptionalInput<List<BucketNotificationQueue>>(map['queues']),
      region: Input.asOptionalInput<String>(map['region']),
      topics:
          Input.asOptionalInput<List<BucketNotificationTopic>>(map['topics']),
    );
  }
}
