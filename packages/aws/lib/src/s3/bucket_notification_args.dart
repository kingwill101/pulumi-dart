// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_notification_lambda_function.dart';
import 'bucket_notification_queue.dart';
import 'bucket_notification_topic.dart';

/// {@template pulumi_s3_bucket_notification_bucket_notification_args_doc}
/// The set of arguments for BucketNotification.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_notification_bucket_notification_args_doc}
class BucketNotificationArgs {
  /// Name of the bucket for notification configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> bucket;

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

  /// Creates a new [BucketNotificationArgs].
  /// [bucket] Name of the bucket for notification configuration.
  /// [eventbridge] Whether to enable Amazon EventBridge notifications. Defaults to `false`.
  /// [lambdaFunctions] Used to configure notifications to a Lambda Function. See below.
  /// [queues] Notification configuration to SQS Queue. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [topics] Notification configuration to SNS Topic. See below.
  BucketNotificationArgs({
    required String bucket,
    bool? eventbridge,
    List<BucketNotificationLambdaFunction>? lambdaFunctions,
    List<BucketNotificationQueue>? queues,
    String? region,
    List<BucketNotificationTopic>? topics,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       eventbridge = pulumi.Input.asOptionalInput<bool>(eventbridge),
       lambdaFunctions =
           pulumi.Input.asOptionalInput<List<BucketNotificationLambdaFunction>>(
             lambdaFunctions,
           ),
       queues = pulumi.Input.asOptionalInput<List<BucketNotificationQueue>>(
         queues,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       topics = pulumi.Input.asOptionalInput<List<BucketNotificationTopic>>(
         topics,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'eventbridge': ?eventbridge,
      'lambdaFunctions':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketNotificationLambdaFunction>,
            List<Map<String, dynamic>>
          >(
            lambdaFunctions,
            (value) =>
                pulumi.Input.encodeList<
                  BucketNotificationLambdaFunction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'queues':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketNotificationQueue>,
            List<Map<String, dynamic>>
          >(
            queues,
            (value) =>
                pulumi.Input.encodeList<
                  BucketNotificationQueue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'topics':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketNotificationTopic>,
            List<Map<String, dynamic>>
          >(
            topics,
            (value) =>
                pulumi.Input.encodeList<
                  BucketNotificationTopic,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BucketNotificationArgs.fromMap(Map<String, dynamic> map) {
    return BucketNotificationArgs(
      bucket: map['bucket'] as String,
      eventbridge: map['eventbridge'] == null
          ? null
          : map['eventbridge'] as bool,
      lambdaFunctions: map['lambdaFunctions'] == null
          ? null
          : pulumi.Input.decodeList<BucketNotificationLambdaFunction>(
              map['lambdaFunctions'],
              (value) => BucketNotificationLambdaFunction.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      queues: map['queues'] == null
          ? null
          : pulumi.Input.decodeList<BucketNotificationQueue>(
              map['queues'],
              (value) => BucketNotificationQueue.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      topics: map['topics'] == null
          ? null
          : pulumi.Input.decodeList<BucketNotificationTopic>(
              map['topics'],
              (value) => BucketNotificationTopic.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
