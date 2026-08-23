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
  /// The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`
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
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [name] The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`
  /// [policy] The fully-formed AWS policy as JSON.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [signatureVersion] If `SignatureVersion` should be [1 (SHA1) or 2 (SHA256)](https://docs.aws.amazon.com/sns/latest/dg/sns-verify-signature-of-message.html). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS.
  /// [sqsFailureFeedbackRoleArn] IAM role for failure feedback
  /// [sqsSuccessFeedbackRoleArn] The IAM role permitted to receive success feedback for this topic
  /// [sqsSuccessFeedbackSampleRate] Percentage of success to sample
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tracingConfig] Tracing mode of an Amazon SNS topic. Valid values: `"PassThrough"`, `"Active"`.
  const TopicArgs({
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
      applicationFailureFeedbackRoleArn: (() { final guardedValue = map['applicationFailureFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationSuccessFeedbackRoleArn: (() { final guardedValue = map['applicationSuccessFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationSuccessFeedbackSampleRate: (() { final guardedValue = map['applicationSuccessFeedbackSampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      archivePolicy: (() { final guardedValue = map['archivePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentBasedDeduplication: (() { final guardedValue = map['contentBasedDeduplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deliveryPolicy: (() { final guardedValue = map['deliveryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fifoThroughputScope: (() { final guardedValue = map['fifoThroughputScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fifoTopic: (() { final guardedValue = map['fifoTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firehoseFailureFeedbackRoleArn: (() { final guardedValue = map['firehoseFailureFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firehoseSuccessFeedbackRoleArn: (() { final guardedValue = map['firehoseSuccessFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firehoseSuccessFeedbackSampleRate: (() { final guardedValue = map['firehoseSuccessFeedbackSampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpFailureFeedbackRoleArn: (() { final guardedValue = map['httpFailureFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpSuccessFeedbackRoleArn: (() { final guardedValue = map['httpSuccessFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpSuccessFeedbackSampleRate: (() { final guardedValue = map['httpSuccessFeedbackSampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsMasterKeyId: (() { final guardedValue = map['kmsMasterKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambdaFailureFeedbackRoleArn: (() { final guardedValue = map['lambdaFailureFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambdaSuccessFeedbackRoleArn: (() { final guardedValue = map['lambdaSuccessFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lambdaSuccessFeedbackSampleRate: (() { final guardedValue = map['lambdaSuccessFeedbackSampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatureVersion: (() { final guardedValue = map['signatureVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqsFailureFeedbackRoleArn: (() { final guardedValue = map['sqsFailureFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqsSuccessFeedbackRoleArn: (() { final guardedValue = map['sqsSuccessFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqsSuccessFeedbackSampleRate: (() { final guardedValue = map['sqsSuccessFeedbackSampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tracingConfig: (() { final guardedValue = map['tracingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
