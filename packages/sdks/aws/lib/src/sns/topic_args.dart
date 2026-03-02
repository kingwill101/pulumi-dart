// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sns_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_sns_topic_topic_args_doc}
class TopicArgs {
  /// IAM role for failure feedback
  final pulumi.Input<String>? applicationFailureFeedbackRoleArn;
  /// The IAM role permitted to receive success feedback for this topic
  final pulumi.Input<String>? applicationSuccessFeedbackRoleArn;
  /// Percentage of success to sample
  final pulumi.Input<int>? applicationSuccessFeedbackSampleRate;
  /// The message archive policy for FIFO topics. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-topic-owner.html).
  final pulumi.Input<String>? archivePolicy;
  /// Enables content-based deduplication for FIFO topics. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html)
  final pulumi.Input<bool>? contentBasedDeduplication;
  /// The SNS delivery policy. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html).
  final pulumi.Input<String>? deliveryPolicy;
  /// The display name for the topic
  final pulumi.Input<String>? displayName;
  /// Enables higher throughput for FIFO topics by adjusting the scope of deduplication. This attribute has two possible values, `Topic` and `MessageGroup`. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-high-throughput.html#enable-high-throughput-on-fifo-topic).
  final pulumi.Input<String>? fifoThroughputScope;
  /// Boolean indicating whether or not to create a FIFO (first-in-first-out) topic. FIFO topics can't deliver messages to customer managed endpoints, such as email addresses, mobile apps, SMS, or HTTP(S) endpoints. These endpoint types aren't guaranteed to preserve strict message ordering. Default is `false`.
  final pulumi.Input<bool>? fifoTopic;
  /// IAM role for failure feedback
  final pulumi.Input<String>? firehoseFailureFeedbackRoleArn;
  /// The IAM role permitted to receive success feedback for this topic
  final pulumi.Input<String>? firehoseSuccessFeedbackRoleArn;
  /// Percentage of success to sample
  final pulumi.Input<int>? firehoseSuccessFeedbackSampleRate;
  /// IAM role for failure feedback
  final pulumi.Input<String>? httpFailureFeedbackRoleArn;
  /// The IAM role permitted to receive success feedback for this topic
  final pulumi.Input<String>? httpSuccessFeedbackRoleArn;
  /// Percentage of success to sample
  final pulumi.Input<int>? httpSuccessFeedbackSampleRate;
  /// The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms)
  final pulumi.Input<String>? kmsMasterKeyId;
  /// IAM role for failure feedback
  final pulumi.Input<String>? lambdaFailureFeedbackRoleArn;
  /// The IAM role permitted to receive success feedback for this topic
  final pulumi.Input<String>? lambdaSuccessFeedbackRoleArn;
  /// Percentage of success to sample
  final pulumi.Input<int>? lambdaSuccessFeedbackSampleRate;
  /// The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`
  final pulumi.Input<String>? namePrefix;
  /// The fully-formed AWS policy as JSON.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// If `SignatureVersion` should be [1 (SHA1) or 2 (SHA256)](https://docs.aws.amazon.com/sns/latest/dg/sns-verify-signature-of-message.html). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS.
  final pulumi.Input<int>? signatureVersion;
  /// IAM role for failure feedback
  final pulumi.Input<String>? sqsFailureFeedbackRoleArn;
  /// The IAM role permitted to receive success feedback for this topic
  final pulumi.Input<String>? sqsSuccessFeedbackRoleArn;
  /// Percentage of success to sample
  final pulumi.Input<int>? sqsSuccessFeedbackSampleRate;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Tracing mode of an Amazon SNS topic. Valid values: `"PassThrough"`, `"Active"`.
  final pulumi.Input<String>? tracingConfig;

  /// Creates a new [TopicArgs].
  /// [applicationFailureFeedbackRoleArn] IAM role for failure feedback
  /// [applicationSuccessFeedbackRoleArn] The IAM role permitted to receive success feedback for this topic
  /// [applicationSuccessFeedbackSampleRate] Percentage of success to sample
  /// [archivePolicy] The message archive policy for FIFO topics. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-topic-owner.html).
  /// [contentBasedDeduplication] Enables content-based deduplication for FIFO topics. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html)
  /// [deliveryPolicy] The SNS delivery policy. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html).
  /// [displayName] The display name for the topic
  /// [fifoThroughputScope] Enables higher throughput for FIFO topics by adjusting the scope of deduplication. This attribute has two possible values, `Topic` and `MessageGroup`. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-high-throughput.html#enable-high-throughput-on-fifo-topic).
  /// [fifoTopic] Boolean indicating whether or not to create a FIFO (first-in-first-out) topic. FIFO topics can't deliver messages to customer managed endpoints, such as email addresses, mobile apps, SMS, or HTTP(S) endpoints. These endpoint types aren't guaranteed to preserve strict message ordering. Default is `false`.
  /// [firehoseFailureFeedbackRoleArn] IAM role for failure feedback
  /// [firehoseSuccessFeedbackRoleArn] The IAM role permitted to receive success feedback for this topic
  /// [firehoseSuccessFeedbackSampleRate] Percentage of success to sample
  /// [httpFailureFeedbackRoleArn] IAM role for failure feedback
  /// [httpSuccessFeedbackRoleArn] The IAM role permitted to receive success feedback for this topic
  /// [httpSuccessFeedbackSampleRate] Percentage of success to sample
  /// [kmsMasterKeyId] The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms)
  /// [lambdaFailureFeedbackRoleArn] IAM role for failure feedback
  /// [lambdaSuccessFeedbackRoleArn] The IAM role permitted to receive success feedback for this topic
  /// [lambdaSuccessFeedbackSampleRate] Percentage of success to sample
  /// [name] The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`
  /// [policy] The fully-formed AWS policy as JSON.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [signatureVersion] If `SignatureVersion` should be [1 (SHA1) or 2 (SHA256)](https://docs.aws.amazon.com/sns/latest/dg/sns-verify-signature-of-message.html). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS.
  /// [sqsFailureFeedbackRoleArn] IAM role for failure feedback
  /// [sqsSuccessFeedbackRoleArn] The IAM role permitted to receive success feedback for this topic
  /// [sqsSuccessFeedbackSampleRate] Percentage of success to sample
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tracingConfig] Tracing mode of an Amazon SNS topic. Valid values: `"PassThrough"`, `"Active"`.
  TopicArgs({
    this.applicationFailureFeedbackRoleArn,
    this.applicationSuccessFeedbackRoleArn,
    this.applicationSuccessFeedbackSampleRate,
    this.archivePolicy,
    this.contentBasedDeduplication,
    this.deliveryPolicy,
    this.displayName,
    this.fifoThroughputScope,
    this.fifoTopic,
    this.firehoseFailureFeedbackRoleArn,
    this.firehoseSuccessFeedbackRoleArn,
    this.firehoseSuccessFeedbackSampleRate,
    this.httpFailureFeedbackRoleArn,
    this.httpSuccessFeedbackRoleArn,
    this.httpSuccessFeedbackSampleRate,
    this.kmsMasterKeyId,
    this.lambdaFailureFeedbackRoleArn,
    this.lambdaSuccessFeedbackRoleArn,
    this.lambdaSuccessFeedbackSampleRate,
    this.name,
    this.namePrefix,
    this.policy,
    this.region,
    this.signatureVersion,
    this.sqsFailureFeedbackRoleArn,
    this.sqsSuccessFeedbackRoleArn,
    this.sqsSuccessFeedbackSampleRate,
    this.tags,
    this.tracingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationFailureFeedbackRoleArn': ?applicationFailureFeedbackRoleArn,
      'applicationSuccessFeedbackRoleArn': ?applicationSuccessFeedbackRoleArn,
      'applicationSuccessFeedbackSampleRate': ?applicationSuccessFeedbackSampleRate,
      'archivePolicy': ?archivePolicy,
      'contentBasedDeduplication': ?contentBasedDeduplication,
      'deliveryPolicy': ?deliveryPolicy,
      'displayName': ?displayName,
      'fifoThroughputScope': ?fifoThroughputScope,
      'fifoTopic': ?fifoTopic,
      'firehoseFailureFeedbackRoleArn': ?firehoseFailureFeedbackRoleArn,
      'firehoseSuccessFeedbackRoleArn': ?firehoseSuccessFeedbackRoleArn,
      'firehoseSuccessFeedbackSampleRate': ?firehoseSuccessFeedbackSampleRate,
      'httpFailureFeedbackRoleArn': ?httpFailureFeedbackRoleArn,
      'httpSuccessFeedbackRoleArn': ?httpSuccessFeedbackRoleArn,
      'httpSuccessFeedbackSampleRate': ?httpSuccessFeedbackSampleRate,
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'lambdaFailureFeedbackRoleArn': ?lambdaFailureFeedbackRoleArn,
      'lambdaSuccessFeedbackRoleArn': ?lambdaSuccessFeedbackRoleArn,
      'lambdaSuccessFeedbackSampleRate': ?lambdaSuccessFeedbackSampleRate,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': ?policy,
      'region': ?region,
      'signatureVersion': ?signatureVersion,
      'sqsFailureFeedbackRoleArn': ?sqsFailureFeedbackRoleArn,
      'sqsSuccessFeedbackRoleArn': ?sqsSuccessFeedbackRoleArn,
      'sqsSuccessFeedbackSampleRate': ?sqsSuccessFeedbackSampleRate,
      'tags': ?tags,
      'tracingConfig': ?tracingConfig,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      applicationFailureFeedbackRoleArn: map['applicationFailureFeedbackRoleArn'] == null ? null : (map['applicationFailureFeedbackRoleArn'] as String).input(),
      applicationSuccessFeedbackRoleArn: map['applicationSuccessFeedbackRoleArn'] == null ? null : (map['applicationSuccessFeedbackRoleArn'] as String).input(),
      applicationSuccessFeedbackSampleRate: map['applicationSuccessFeedbackSampleRate'] == null ? null : (map['applicationSuccessFeedbackSampleRate'] as int).input(),
      archivePolicy: map['archivePolicy'] == null ? null : (map['archivePolicy'] as String).input(),
      contentBasedDeduplication: map['contentBasedDeduplication'] == null ? null : (map['contentBasedDeduplication'] as bool).input(),
      deliveryPolicy: map['deliveryPolicy'] == null ? null : (map['deliveryPolicy'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      fifoThroughputScope: map['fifoThroughputScope'] == null ? null : (map['fifoThroughputScope'] as String).input(),
      fifoTopic: map['fifoTopic'] == null ? null : (map['fifoTopic'] as bool).input(),
      firehoseFailureFeedbackRoleArn: map['firehoseFailureFeedbackRoleArn'] == null ? null : (map['firehoseFailureFeedbackRoleArn'] as String).input(),
      firehoseSuccessFeedbackRoleArn: map['firehoseSuccessFeedbackRoleArn'] == null ? null : (map['firehoseSuccessFeedbackRoleArn'] as String).input(),
      firehoseSuccessFeedbackSampleRate: map['firehoseSuccessFeedbackSampleRate'] == null ? null : (map['firehoseSuccessFeedbackSampleRate'] as int).input(),
      httpFailureFeedbackRoleArn: map['httpFailureFeedbackRoleArn'] == null ? null : (map['httpFailureFeedbackRoleArn'] as String).input(),
      httpSuccessFeedbackRoleArn: map['httpSuccessFeedbackRoleArn'] == null ? null : (map['httpSuccessFeedbackRoleArn'] as String).input(),
      httpSuccessFeedbackSampleRate: map['httpSuccessFeedbackSampleRate'] == null ? null : (map['httpSuccessFeedbackSampleRate'] as int).input(),
      kmsMasterKeyId: map['kmsMasterKeyId'] == null ? null : (map['kmsMasterKeyId'] as String).input(),
      lambdaFailureFeedbackRoleArn: map['lambdaFailureFeedbackRoleArn'] == null ? null : (map['lambdaFailureFeedbackRoleArn'] as String).input(),
      lambdaSuccessFeedbackRoleArn: map['lambdaSuccessFeedbackRoleArn'] == null ? null : (map['lambdaSuccessFeedbackRoleArn'] as String).input(),
      lambdaSuccessFeedbackSampleRate: map['lambdaSuccessFeedbackSampleRate'] == null ? null : (map['lambdaSuccessFeedbackSampleRate'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      signatureVersion: map['signatureVersion'] == null ? null : (map['signatureVersion'] as int).input(),
      sqsFailureFeedbackRoleArn: map['sqsFailureFeedbackRoleArn'] == null ? null : (map['sqsFailureFeedbackRoleArn'] as String).input(),
      sqsSuccessFeedbackRoleArn: map['sqsSuccessFeedbackRoleArn'] == null ? null : (map['sqsSuccessFeedbackRoleArn'] as String).input(),
      sqsSuccessFeedbackSampleRate: map['sqsSuccessFeedbackSampleRate'] == null ? null : (map['sqsSuccessFeedbackSampleRate'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tracingConfig: map['tracingConfig'] == null ? null : (map['tracingConfig'] as String).input(),
    );
  }
}

