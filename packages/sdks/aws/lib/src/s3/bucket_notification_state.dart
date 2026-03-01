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
  BucketNotificationState({
    pulumi.Output<String>? bucket,
    pulumi.Output<bool>? eventbridge,
    pulumi.Output<List<BucketNotificationLambdaFunction>>? lambdaFunctions,
    pulumi.Output<List<BucketNotificationQueue>>? queues,
    pulumi.Output<String>? region,
    pulumi.Output<List<BucketNotificationTopic>>? topics,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      eventbridge = pulumi.Input.asOptionalInput<bool>(eventbridge),
      lambdaFunctions = pulumi.Input.asOptionalInput<List<BucketNotificationLambdaFunction>>(lambdaFunctions),
      queues = pulumi.Input.asOptionalInput<List<BucketNotificationQueue>>(queues),
      region = pulumi.Input.asOptionalInput<String>(region),
      topics = pulumi.Input.asOptionalInput<List<BucketNotificationTopic>>(topics);

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
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      eventbridge: map['eventbridge'] == null ? null : pulumi.Output.create<bool>(map['eventbridge'] as bool),
      lambdaFunctions: map['lambdaFunctions'] == null ? null : pulumi.Output.create<List<BucketNotificationLambdaFunction>>(pulumi.Input.decodeList<BucketNotificationLambdaFunction>(map['lambdaFunctions'], (value) => BucketNotificationLambdaFunction.fromMap((value as Map).cast<String, dynamic>()))),
      queues: map['queues'] == null ? null : pulumi.Output.create<List<BucketNotificationQueue>>(pulumi.Input.decodeList<BucketNotificationQueue>(map['queues'], (value) => BucketNotificationQueue.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      topics: map['topics'] == null ? null : pulumi.Output.create<List<BucketNotificationTopic>>(pulumi.Input.decodeList<BucketNotificationTopic>(map['topics'], (value) => BucketNotificationTopic.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

