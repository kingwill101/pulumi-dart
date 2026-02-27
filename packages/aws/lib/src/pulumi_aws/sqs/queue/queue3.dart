import 'package:pulumi/pulumi.dart';
import 'queue_args3.dart';

/// Amazon SQS (Simple Queue Service) is a fully managed message queuing service that enables decoupling and scaling of microservices, distributed systems, and serverless applications. This resource allows you to create, configure, and manage an SQS queue, which acts as a reliable message buffer between producers and consumers. With support for standard and FIFO queues, SQS ensures secure, scalable, and asynchronous message processing. Use this resource to define queue attributes, configure access policies, and integrate seamlessly with AWS services like Lambda, SNS, and EC2.
///
/// !> AWS will hang indefinitely, leading to a `timeout while waiting` error, when creating or updating an `aws.sqs.Queue` with an associated `aws.sqs.QueuePolicy` if `Version = "2012-10-17"` is not explicitly set in the policy.
///
/// ## Example Usage
///
///
///
/// ## FIFO queue
///
///
///
/// ## High-throughput FIFO queue
///
///
///
/// ## Dead-letter queue
///
///
///
/// ## Server-side encryption (SSE)
///
/// Using [SSE-SQS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html):
///
///
///
/// Using [SSE-KMS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html):
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `url` (String) URL of the SQS queue.
///
///
/// Using `pulumi import`, import SQS Queues using the queue `url`. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/queue:Queue example https://queue.amazonaws.com/80398EXAMPLE/MyQueue
/// ```
class Queue3 extends CustomResource {
  /// ARN of the SQS queue.
  late final Output<String> arn;

  /// Enables content-based deduplication for FIFO queues. For more information, see the [related documentation](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing).
  late final Output<bool?> contentBasedDeduplication;

  /// Specifies whether message deduplication occurs at the message group or queue level. Valid values are `messageGroup` and `queue` (default).
  late final Output<String> deduplicationScope;

  /// Time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds.
  late final Output<int?> delaySeconds;

  /// Boolean designating a FIFO queue. If not set, it defaults to `false` making it standard.
  late final Output<bool?> fifoQueue;

  /// Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are `perQueue` (default) and `perMessageGroupId`.
  late final Output<String> fifoThroughputLimit;

  /// Length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes).
  late final Output<int> kmsDataKeyReusePeriodSeconds;

  /// ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
  late final Output<String?> kmsMasterKeyId;

  /// Limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 1048576 bytes (1024 KiB). The default for this attribute is 262144 (256 KiB).
  late final Output<int?> maxMessageSize;

  /// Number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days).
  late final Output<int?> messageRetentionSeconds;

  /// Name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.QueuePolicy` resource instead.
  late final Output<String> policy;

  /// Time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately.
  late final Output<int?> receiveWaitTimeSeconds;

  /// JSON policy to set up the Dead Letter Queue redrive permission, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedriveAllowPolicy` resource instead.
  late final Output<String> redriveAllowPolicy;

  /// JSON policy to set up the Dead Letter Queue, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedrivePolicy` resource instead. **Note:** when specifying `maxReceiveCount`, you must specify it as an integer (`5`), and not a string (`"5"`).
  late final Output<String> redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. See [Encryption at rest](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html). The provider will only perform drift detection of its value when present in a configuration.
  late final Output<bool> sqsManagedSseEnabled;

  /// Map of tags to assign to the queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Same as `id`: The URL for the created Amazon SQS queue.
  late final Output<String> url;

  /// Visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html).
  late final Output<int?> visibilityTimeoutSeconds;

  Queue3(
    String name, {
    QueueArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sqs/queue:Queue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.contentBasedDeduplication =
        registerOutput<bool?>('contentBasedDeduplication');
    this.deduplicationScope = registerOutput<String>('deduplicationScope');
    this.delaySeconds = registerOutput<int?>('delaySeconds');
    this.fifoQueue = registerOutput<bool?>('fifoQueue');
    this.fifoThroughputLimit = registerOutput<String>('fifoThroughputLimit');
    this.kmsDataKeyReusePeriodSeconds =
        registerOutput<int>('kmsDataKeyReusePeriodSeconds');
    this.kmsMasterKeyId = registerOutput<String?>('kmsMasterKeyId');
    this.maxMessageSize = registerOutput<int?>('maxMessageSize');
    this.messageRetentionSeconds =
        registerOutput<int?>('messageRetentionSeconds');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.policy = registerOutput<String>('policy');
    this.receiveWaitTimeSeconds =
        registerOutput<int?>('receiveWaitTimeSeconds');
    this.redriveAllowPolicy = registerOutput<String>('redriveAllowPolicy');
    this.redrivePolicy = registerOutput<String>('redrivePolicy');
    this.region = registerOutput<String>('region');
    this.sqsManagedSseEnabled = registerOutput<bool>('sqsManagedSseEnabled');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
    this.visibilityTimeoutSeconds =
        registerOutput<int?>('visibilityTimeoutSeconds');
  }
}
