// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Queue.
class QueueArgs3 {
  /// Enables content-based deduplication for FIFO queues. For more information, see the [related documentation](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing).
  final Input<bool>? contentBasedDeduplication;

  /// Specifies whether message deduplication occurs at the message group or queue level. Valid values are `messageGroup` and `queue` (default).
  final Input<String>? deduplicationScope;

  /// Time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds.
  final Input<int>? delaySeconds;

  /// Boolean designating a FIFO queue. If not set, it defaults to `false` making it standard.
  final Input<bool>? fifoQueue;

  /// Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are `perQueue` (default) and `perMessageGroupId`.
  final Input<String>? fifoThroughputLimit;

  /// Length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes).
  final Input<int>? kmsDataKeyReusePeriodSeconds;

  /// ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
  final Input<String>? kmsMasterKeyId;

  /// Limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 1048576 bytes (1024 KiB). The default for this attribute is 262144 (256 KiB).
  final Input<int>? maxMessageSize;

  /// Number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days).
  final Input<int>? messageRetentionSeconds;

  /// Name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final Input<String>? namePrefix;

  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.QueuePolicy` resource instead.
  final Input<String>? policy;

  /// Time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately.
  final Input<int>? receiveWaitTimeSeconds;

  /// JSON policy to set up the Dead Letter Queue redrive permission, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedriveAllowPolicy` resource instead.
  final Input<String>? redriveAllowPolicy;

  /// JSON policy to set up the Dead Letter Queue, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedrivePolicy` resource instead. **Note:** when specifying `maxReceiveCount`, you must specify it as an integer (`5`), and not a string (`"5"`).
  final Input<String>? redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. See [Encryption at rest](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html). The provider will only perform drift detection of its value when present in a configuration.
  final Input<bool>? sqsManagedSseEnabled;

  /// Map of tags to assign to the queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html).
  final Input<int>? visibilityTimeoutSeconds;

  QueueArgs3({
    this.contentBasedDeduplication,
    this.deduplicationScope,
    this.delaySeconds,
    this.fifoQueue,
    this.fifoThroughputLimit,
    this.kmsDataKeyReusePeriodSeconds,
    this.kmsMasterKeyId,
    this.maxMessageSize,
    this.messageRetentionSeconds,
    this.name,
    this.namePrefix,
    this.policy,
    this.receiveWaitTimeSeconds,
    this.redriveAllowPolicy,
    this.redrivePolicy,
    this.region,
    this.sqsManagedSseEnabled,
    this.tags,
    this.visibilityTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentBasedDeduplicationValue = contentBasedDeduplication;
    if (contentBasedDeduplicationValue != null) {
      map['contentBasedDeduplication'] = contentBasedDeduplicationValue;
    }
    final deduplicationScopeValue = deduplicationScope;
    if (deduplicationScopeValue != null) {
      map['deduplicationScope'] = deduplicationScopeValue;
    }
    final delaySecondsValue = delaySeconds;
    if (delaySecondsValue != null) {
      map['delaySeconds'] = delaySecondsValue;
    }
    final fifoQueueValue = fifoQueue;
    if (fifoQueueValue != null) {
      map['fifoQueue'] = fifoQueueValue;
    }
    final fifoThroughputLimitValue = fifoThroughputLimit;
    if (fifoThroughputLimitValue != null) {
      map['fifoThroughputLimit'] = fifoThroughputLimitValue;
    }
    final kmsDataKeyReusePeriodSecondsValue = kmsDataKeyReusePeriodSeconds;
    if (kmsDataKeyReusePeriodSecondsValue != null) {
      map['kmsDataKeyReusePeriodSeconds'] = kmsDataKeyReusePeriodSecondsValue;
    }
    final kmsMasterKeyIdValue = kmsMasterKeyId;
    if (kmsMasterKeyIdValue != null) {
      map['kmsMasterKeyId'] = kmsMasterKeyIdValue;
    }
    final maxMessageSizeValue = maxMessageSize;
    if (maxMessageSizeValue != null) {
      map['maxMessageSize'] = maxMessageSizeValue;
    }
    final messageRetentionSecondsValue = messageRetentionSeconds;
    if (messageRetentionSecondsValue != null) {
      map['messageRetentionSeconds'] = messageRetentionSecondsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final receiveWaitTimeSecondsValue = receiveWaitTimeSeconds;
    if (receiveWaitTimeSecondsValue != null) {
      map['receiveWaitTimeSeconds'] = receiveWaitTimeSecondsValue;
    }
    final redriveAllowPolicyValue = redriveAllowPolicy;
    if (redriveAllowPolicyValue != null) {
      map['redriveAllowPolicy'] = redriveAllowPolicyValue;
    }
    final redrivePolicyValue = redrivePolicy;
    if (redrivePolicyValue != null) {
      map['redrivePolicy'] = redrivePolicyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sqsManagedSseEnabledValue = sqsManagedSseEnabled;
    if (sqsManagedSseEnabledValue != null) {
      map['sqsManagedSseEnabled'] = sqsManagedSseEnabledValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final visibilityTimeoutSecondsValue = visibilityTimeoutSeconds;
    if (visibilityTimeoutSecondsValue != null) {
      map['visibilityTimeoutSeconds'] = visibilityTimeoutSecondsValue;
    }
    return map;
  }

  factory QueueArgs3.fromMap(Map<String, dynamic> map) {
    return QueueArgs3(
      contentBasedDeduplication:
          Input.asOptionalInput<bool>(map['contentBasedDeduplication']),
      deduplicationScope:
          Input.asOptionalInput<String>(map['deduplicationScope']),
      delaySeconds: Input.asOptionalInput<int>(map['delaySeconds']),
      fifoQueue: Input.asOptionalInput<bool>(map['fifoQueue']),
      fifoThroughputLimit:
          Input.asOptionalInput<String>(map['fifoThroughputLimit']),
      kmsDataKeyReusePeriodSeconds:
          Input.asOptionalInput<int>(map['kmsDataKeyReusePeriodSeconds']),
      kmsMasterKeyId: Input.asOptionalInput<String>(map['kmsMasterKeyId']),
      maxMessageSize: Input.asOptionalInput<int>(map['maxMessageSize']),
      messageRetentionSeconds:
          Input.asOptionalInput<int>(map['messageRetentionSeconds']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      policy: Input.asOptionalInput<String>(map['policy']),
      receiveWaitTimeSeconds:
          Input.asOptionalInput<int>(map['receiveWaitTimeSeconds']),
      redriveAllowPolicy:
          Input.asOptionalInput<String>(map['redriveAllowPolicy']),
      redrivePolicy: Input.asOptionalInput<String>(map['redrivePolicy']),
      region: Input.asOptionalInput<String>(map['region']),
      sqsManagedSseEnabled:
          Input.asOptionalInput<bool>(map['sqsManagedSseEnabled']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      visibilityTimeoutSeconds:
          Input.asOptionalInput<int>(map['visibilityTimeoutSeconds']),
    );
  }
}
