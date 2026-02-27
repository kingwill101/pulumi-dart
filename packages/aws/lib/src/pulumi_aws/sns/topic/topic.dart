import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';

/// Provides an SNS topic resource
///
/// ## Example Usage
///
///
///
/// ## Example with Delivery Policy
///
///
///
/// ## Example with Server-side encryption (SSE)
///
///
///
/// ## Example with First-In-First-Out (FIFO)
///
///
///
/// ## Message Delivery Status Arguments
///
/// The `<endpoint>_success_feedback_role_arn` and `<endpoint>_failure_feedback_role_arn` arguments are used to give Amazon SNS write access to use CloudWatch Logs on your behalf. The `<endpoint>_success_feedback_sample_rate` argument is for specifying the sample rate percentage (0-100) of successfully delivered messages. After you configure the  `<endpoint>_failure_feedback_role_arn` argument, then all failed message deliveries generate CloudWatch Logs.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SNS topic.
///
///
/// Using `pulumi import`, import SNS Topics using the topic `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sns/topic:Topic user_updates arn:aws:sns:us-west-2:123456789012:my-topic
/// ```
class Topic extends pulumi.CustomResource {
  /// IAM role for failure feedback
  late final pulumi.Output<String?> applicationFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final pulumi.Output<String?> applicationSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final pulumi.Output<int?> applicationSuccessFeedbackSampleRate;

  /// The message archive policy for FIFO topics. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-topic-owner.html).
  late final pulumi.Output<String?> archivePolicy;

  /// The ARN of the SNS topic, as a more obvious property (clone of id)
  late final pulumi.Output<String> arn;

  /// The oldest timestamp at which a FIFO topic subscriber can start a replay.
  late final pulumi.Output<String> beginningArchiveTime;

  /// Enables content-based deduplication for FIFO topics. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html)
  late final pulumi.Output<bool?> contentBasedDeduplication;

  /// The SNS delivery policy. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html).
  late final pulumi.Output<String?> deliveryPolicy;

  /// The display name for the topic
  late final pulumi.Output<String?> displayName;

  /// Enables higher throughput for FIFO topics by adjusting the scope of deduplication. This attribute has two possible values, `Topic` and `MessageGroup`. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-high-throughput.html#enable-high-throughput-on-fifo-topic).
  late final pulumi.Output<String> fifoThroughputScope;

  /// Boolean indicating whether or not to create a FIFO (first-in-first-out) topic. FIFO topics can't deliver messages to customer managed endpoints, such as email addresses, mobile apps, SMS, or HTTP(S) endpoints. These endpoint types aren't guaranteed to preserve strict message ordering. Default is `false`.
  late final pulumi.Output<bool?> fifoTopic;

  /// IAM role for failure feedback
  late final pulumi.Output<String?> firehoseFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final pulumi.Output<String?> firehoseSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final pulumi.Output<int?> firehoseSuccessFeedbackSampleRate;

  /// IAM role for failure feedback
  late final pulumi.Output<String?> httpFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final pulumi.Output<String?> httpSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final pulumi.Output<int?> httpSuccessFeedbackSampleRate;

  /// The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms)
  late final pulumi.Output<String?> kmsMasterKeyId;

  /// IAM role for failure feedback
  late final pulumi.Output<String?> lambdaFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final pulumi.Output<String?> lambdaSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final pulumi.Output<int?> lambdaSuccessFeedbackSampleRate;

  /// The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`
  late final pulumi.Output<String> namePrefix;

  /// The AWS Account ID of the SNS topic owner
  late final pulumi.Output<String> owner;

  /// The fully-formed AWS policy as JSON.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// If `SignatureVersion` should be [1 (SHA1) or 2 (SHA256)](https://docs.aws.amazon.com/sns/latest/dg/sns-verify-signature-of-message.html). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS.
  late final pulumi.Output<int> signatureVersion;

  /// IAM role for failure feedback
  late final pulumi.Output<String?> sqsFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  late final pulumi.Output<String?> sqsSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  late final pulumi.Output<int?> sqsSuccessFeedbackSampleRate;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Tracing mode of an Amazon SNS topic. Valid values: `"PassThrough"`, `"Active"`.
  late final pulumi.Output<String> tracingConfig;

  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationFailureFeedbackRoleArn =
        registerOutput<String?>('applicationFailureFeedbackRoleArn');
    this.applicationSuccessFeedbackRoleArn =
        registerOutput<String?>('applicationSuccessFeedbackRoleArn');
    this.applicationSuccessFeedbackSampleRate =
        registerOutput<int?>('applicationSuccessFeedbackSampleRate');
    this.archivePolicy = registerOutput<String?>('archivePolicy');
    this.arn = registerOutput<String>('arn');
    this.beginningArchiveTime = registerOutput<String>('beginningArchiveTime');
    this.contentBasedDeduplication =
        registerOutput<bool?>('contentBasedDeduplication');
    this.deliveryPolicy = registerOutput<String?>('deliveryPolicy');
    this.displayName = registerOutput<String?>('displayName');
    this.fifoThroughputScope = registerOutput<String>('fifoThroughputScope');
    this.fifoTopic = registerOutput<bool?>('fifoTopic');
    this.firehoseFailureFeedbackRoleArn =
        registerOutput<String?>('firehoseFailureFeedbackRoleArn');
    this.firehoseSuccessFeedbackRoleArn =
        registerOutput<String?>('firehoseSuccessFeedbackRoleArn');
    this.firehoseSuccessFeedbackSampleRate =
        registerOutput<int?>('firehoseSuccessFeedbackSampleRate');
    this.httpFailureFeedbackRoleArn =
        registerOutput<String?>('httpFailureFeedbackRoleArn');
    this.httpSuccessFeedbackRoleArn =
        registerOutput<String?>('httpSuccessFeedbackRoleArn');
    this.httpSuccessFeedbackSampleRate =
        registerOutput<int?>('httpSuccessFeedbackSampleRate');
    this.kmsMasterKeyId = registerOutput<String?>('kmsMasterKeyId');
    this.lambdaFailureFeedbackRoleArn =
        registerOutput<String?>('lambdaFailureFeedbackRoleArn');
    this.lambdaSuccessFeedbackRoleArn =
        registerOutput<String?>('lambdaSuccessFeedbackRoleArn');
    this.lambdaSuccessFeedbackSampleRate =
        registerOutput<int?>('lambdaSuccessFeedbackSampleRate');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.owner = registerOutput<String>('owner');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.signatureVersion = registerOutput<int>('signatureVersion');
    this.sqsFailureFeedbackRoleArn =
        registerOutput<String?>('sqsFailureFeedbackRoleArn');
    this.sqsSuccessFeedbackRoleArn =
        registerOutput<String?>('sqsSuccessFeedbackRoleArn');
    this.sqsSuccessFeedbackSampleRate =
        registerOutput<int?>('sqsSuccessFeedbackSampleRate');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tracingConfig = registerOutput<String>('tracingConfig');
  }
}
