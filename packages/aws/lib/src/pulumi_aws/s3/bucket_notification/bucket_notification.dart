import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_notification_lambda_function/bucket_notification_lambda_function.dart';
import '../bucket_notification_queue/bucket_notification_queue.dart';
import '../bucket_notification_topic/bucket_notification_topic.dart';
import 'bucket_notification_args.dart';

/// Manages a S3 Bucket Notification Configuration. For additional information, see the [Configuring S3 Event Notifications section in the Amazon S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).
///
/// > **NOTE:** S3 Buckets only support a single notification configuration resource. Declaring multiple `aws.s3.BucketNotification` resources to the same S3 Bucket will cause a perpetual difference in configuration. This resource will overwrite any existing event notifications configured for the S3 bucket it's associated with. See the example "Trigger multiple Lambda functions" for an option of how to configure multiple triggers within this resource.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add notification configuration to SNS Topic
///
///
///
/// ### Add notification configuration to SQS Queue
///
///
///
/// ### Add notification configuration to Lambda Function
///
///
///
/// ### Trigger multiple Lambda functions
///
///
///
/// ### Add multiple notification configurations to SQS Queue
///
///
///
/// For JSON syntax, use an array instead of defining the `queue` key twice.
///
/// ```json
/// {
/// "bucket": "${aws_s3_bucket.bucket.id}",
/// "queue": [
/// {
/// "id": "image-upload-event",
/// "queue_arn": "${aws_sqs_queue.queue.arn}",
/// "events": ["s3:ObjectCreated:*"],
/// "filter_prefix": "images/"
/// },
/// {
/// "id": "video-upload-event",
/// "queue_arn": "${aws_sqs_queue.queue.arn}",
/// "events": ["s3:ObjectCreated:*"],
/// "filter_prefix": "videos/"
/// }
/// ]
/// }
/// ```
///
/// ### Emit events to EventBridge
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket notification using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketNotification:BucketNotification bucket_notification bucket-name
/// ```
class BucketNotification extends pulumi.CustomResource {
  /// Name of the bucket for notification configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> bucket;

  /// Whether to enable Amazon EventBridge notifications. Defaults to `false`.
  late final pulumi.Output<bool?> eventbridge;

  /// Used to configure notifications to a Lambda Function. See below.
  late final pulumi.Output<List<BucketNotificationLambdaFunction>?>
      lambdaFunctions;

  /// Notification configuration to SQS Queue. See below.
  late final pulumi.Output<List<BucketNotificationQueue>?> queues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Notification configuration to SNS Topic. See below.
  late final pulumi.Output<List<BucketNotificationTopic>?> topics;

  BucketNotification(
    String name, {
    BucketNotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketNotification:BucketNotification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.eventbridge = registerOutput<bool?>('eventbridge');
    this.lambdaFunctions =
        registerOutput<List<BucketNotificationLambdaFunction>?>(
            'lambdaFunctions');
    this.queues = registerOutput<List<BucketNotificationQueue>?>('queues');
    this.region = registerOutput<String>('region');
    this.topics = registerOutput<List<BucketNotificationTopic>?>('topics');
  }
}
