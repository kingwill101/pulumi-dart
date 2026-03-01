// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// ARN of the SQS queue.
  final pulumi.Input<String>? arn;
  /// Enables content-based deduplication for FIFO queues. For more information, see the [related documentation](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing).
  final pulumi.Input<bool>? contentBasedDeduplication;
  /// Specifies whether message deduplication occurs at the message group or queue level. Valid values are `messageGroup` and `queue` (default).
  final pulumi.Input<String>? deduplicationScope;
  /// Time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds.
  final pulumi.Input<int>? delaySeconds;
  /// Boolean designating a FIFO queue. If not set, it defaults to `false` making it standard.
  final pulumi.Input<bool>? fifoQueue;
  /// Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are `perQueue` (default) and `perMessageGroupId`.
  final pulumi.Input<String>? fifoThroughputLimit;
  /// Length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes).
  final pulumi.Input<int>? kmsDataKeyReusePeriodSeconds;
  /// ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
  final pulumi.Input<String>? kmsMasterKeyId;
  /// Limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 1048576 bytes (1024 KiB). The default for this attribute is 262144 (256 KiB).
  final pulumi.Input<int>? maxMessageSize;
  /// Number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days).
  final pulumi.Input<int>? messageRetentionSeconds;
  /// Name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.QueuePolicy` resource instead.
  final pulumi.Input<String>? policy;
  /// Time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately.
  final pulumi.Input<int>? receiveWaitTimeSeconds;
  /// JSON policy to set up the Dead Letter Queue redrive permission, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedriveAllowPolicy` resource instead.
  final pulumi.Input<String>? redriveAllowPolicy;
  /// JSON policy to set up the Dead Letter Queue, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedrivePolicy` resource instead. **Note:** when specifying `maxReceiveCount`, you must specify it as an integer (`5`), and not a string (`"5"`).
  final pulumi.Input<String>? redrivePolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. See [Encryption at rest](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html). The provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<bool>? sqsManagedSseEnabled;
  /// Map of tags to assign to the queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Same as `id`: The URL for the created Amazon SQS queue.
  final pulumi.Input<String>? url;
  /// Visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html).
  final pulumi.Input<int>? visibilityTimeoutSeconds;

  /// Creates a new [QueueState].
  /// [arn] ARN of the SQS queue.
  /// [contentBasedDeduplication] Enables content-based deduplication for FIFO queues. For more information, see the [related documentation](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing).
  /// [deduplicationScope] Specifies whether message deduplication occurs at the message group or queue level. Valid values are `messageGroup` and `queue` (default).
  /// [delaySeconds] Time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds.
  /// [fifoQueue] Boolean designating a FIFO queue. If not set, it defaults to `false` making it standard.
  /// [fifoThroughputLimit] Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are `perQueue` (default) and `perMessageGroupId`.
  /// [kmsDataKeyReusePeriodSeconds] Length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes).
  /// [kmsMasterKeyId] ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
  /// [maxMessageSize] Limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 1048576 bytes (1024 KiB). The default for this attribute is 262144 (256 KiB).
  /// [messageRetentionSeconds] Number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days).
  /// [name] Name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [policy] JSON policy for the SQS queue. For more information about building AWS IAM policy documents see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.QueuePolicy` resource instead.
  /// [receiveWaitTimeSeconds] Time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately.
  /// [redriveAllowPolicy] JSON policy to set up the Dead Letter Queue redrive permission, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedriveAllowPolicy` resource instead.
  /// [redrivePolicy] JSON policy to set up the Dead Letter Queue, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedrivePolicy` resource instead. **Note:** when specifying `maxReceiveCount`, you must specify it as an integer (`5`), and not a string (`"5"`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sqsManagedSseEnabled] Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. See [Encryption at rest](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html). The provider will only perform drift detection of its value when present in a configuration.
  /// [tags] Map of tags to assign to the queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [url] Same as `id`: The URL for the created Amazon SQS queue.
  /// [visibilityTimeoutSeconds] Visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html).
  QueueState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? contentBasedDeduplication,
    pulumi.Output<String>? deduplicationScope,
    pulumi.Output<int>? delaySeconds,
    pulumi.Output<bool>? fifoQueue,
    pulumi.Output<String>? fifoThroughputLimit,
    pulumi.Output<int>? kmsDataKeyReusePeriodSeconds,
    pulumi.Output<String>? kmsMasterKeyId,
    pulumi.Output<int>? maxMessageSize,
    pulumi.Output<int>? messageRetentionSeconds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? policy,
    pulumi.Output<int>? receiveWaitTimeSeconds,
    pulumi.Output<String>? redriveAllowPolicy,
    pulumi.Output<String>? redrivePolicy,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? sqsManagedSseEnabled,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? url,
    pulumi.Output<int>? visibilityTimeoutSeconds,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      contentBasedDeduplication = pulumi.Input.asOptionalInput<bool>(contentBasedDeduplication),
      deduplicationScope = pulumi.Input.asOptionalInput<String>(deduplicationScope),
      delaySeconds = pulumi.Input.asOptionalInput<int>(delaySeconds),
      fifoQueue = pulumi.Input.asOptionalInput<bool>(fifoQueue),
      fifoThroughputLimit = pulumi.Input.asOptionalInput<String>(fifoThroughputLimit),
      kmsDataKeyReusePeriodSeconds = pulumi.Input.asOptionalInput<int>(kmsDataKeyReusePeriodSeconds),
      kmsMasterKeyId = pulumi.Input.asOptionalInput<String>(kmsMasterKeyId),
      maxMessageSize = pulumi.Input.asOptionalInput<int>(maxMessageSize),
      messageRetentionSeconds = pulumi.Input.asOptionalInput<int>(messageRetentionSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      receiveWaitTimeSeconds = pulumi.Input.asOptionalInput<int>(receiveWaitTimeSeconds),
      redriveAllowPolicy = pulumi.Input.asOptionalInput<String>(redriveAllowPolicy),
      redrivePolicy = pulumi.Input.asOptionalInput<String>(redrivePolicy),
      region = pulumi.Input.asOptionalInput<String>(region),
      sqsManagedSseEnabled = pulumi.Input.asOptionalInput<bool>(sqsManagedSseEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      url = pulumi.Input.asOptionalInput<String>(url),
      visibilityTimeoutSeconds = pulumi.Input.asOptionalInput<int>(visibilityTimeoutSeconds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contentBasedDeduplication': ?contentBasedDeduplication,
      'deduplicationScope': ?deduplicationScope,
      'delaySeconds': ?delaySeconds,
      'fifoQueue': ?fifoQueue,
      'fifoThroughputLimit': ?fifoThroughputLimit,
      'kmsDataKeyReusePeriodSeconds': ?kmsDataKeyReusePeriodSeconds,
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'maxMessageSize': ?maxMessageSize,
      'messageRetentionSeconds': ?messageRetentionSeconds,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': ?policy,
      'receiveWaitTimeSeconds': ?receiveWaitTimeSeconds,
      'redriveAllowPolicy': ?redriveAllowPolicy,
      'redrivePolicy': ?redrivePolicy,
      'region': ?region,
      'sqsManagedSseEnabled': ?sqsManagedSseEnabled,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'url': ?url,
      'visibilityTimeoutSeconds': ?visibilityTimeoutSeconds,
    };
  }

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      contentBasedDeduplication: map['contentBasedDeduplication'] == null ? null : pulumi.Output.create<bool>(map['contentBasedDeduplication'] as bool),
      deduplicationScope: map['deduplicationScope'] == null ? null : pulumi.Output.create<String>(map['deduplicationScope'] as String),
      delaySeconds: map['delaySeconds'] == null ? null : pulumi.Output.create<int>(map['delaySeconds'] as int),
      fifoQueue: map['fifoQueue'] == null ? null : pulumi.Output.create<bool>(map['fifoQueue'] as bool),
      fifoThroughputLimit: map['fifoThroughputLimit'] == null ? null : pulumi.Output.create<String>(map['fifoThroughputLimit'] as String),
      kmsDataKeyReusePeriodSeconds: map['kmsDataKeyReusePeriodSeconds'] == null ? null : pulumi.Output.create<int>(map['kmsDataKeyReusePeriodSeconds'] as int),
      kmsMasterKeyId: map['kmsMasterKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsMasterKeyId'] as String),
      maxMessageSize: map['maxMessageSize'] == null ? null : pulumi.Output.create<int>(map['maxMessageSize'] as int),
      messageRetentionSeconds: map['messageRetentionSeconds'] == null ? null : pulumi.Output.create<int>(map['messageRetentionSeconds'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      receiveWaitTimeSeconds: map['receiveWaitTimeSeconds'] == null ? null : pulumi.Output.create<int>(map['receiveWaitTimeSeconds'] as int),
      redriveAllowPolicy: map['redriveAllowPolicy'] == null ? null : pulumi.Output.create<String>(map['redriveAllowPolicy'] as String),
      redrivePolicy: map['redrivePolicy'] == null ? null : pulumi.Output.create<String>(map['redrivePolicy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sqsManagedSseEnabled: map['sqsManagedSseEnabled'] == null ? null : pulumi.Output.create<bool>(map['sqsManagedSseEnabled'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      visibilityTimeoutSeconds: map['visibilityTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['visibilityTimeoutSeconds'] as int),
    );
  }
}

