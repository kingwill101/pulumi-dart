// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Topic.
class TopicArgs {
  /// IAM role for failure feedback
  final Input<String>? applicationFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  final Input<String>? applicationSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  final Input<int>? applicationSuccessFeedbackSampleRate;

  /// The message archive policy for FIFO topics. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-topic-owner.html).
  final Input<String>? archivePolicy;

  /// Enables content-based deduplication for FIFO topics. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-message-dedup.html)
  final Input<bool>? contentBasedDeduplication;

  /// The SNS delivery policy. More details in the [AWS documentation](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html).
  final Input<String>? deliveryPolicy;

  /// The display name for the topic
  final Input<String>? displayName;

  /// Enables higher throughput for FIFO topics by adjusting the scope of deduplication. This attribute has two possible values, `Topic` and `MessageGroup`. For more information, see the [related documentation](https://docs.aws.amazon.com/sns/latest/dg/fifo-high-throughput.html#enable-high-throughput-on-fifo-topic).
  final Input<String>? fifoThroughputScope;

  /// Boolean indicating whether or not to create a FIFO (first-in-first-out) topic. FIFO topics can't deliver messages to customer managed endpoints, such as email addresses, mobile apps, SMS, or HTTP(S) endpoints. These endpoint types aren't guaranteed to preserve strict message ordering. Default is `false`.
  final Input<bool>? fifoTopic;

  /// IAM role for failure feedback
  final Input<String>? firehoseFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  final Input<String>? firehoseSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  final Input<int>? firehoseSuccessFeedbackSampleRate;

  /// IAM role for failure feedback
  final Input<String>? httpFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  final Input<String>? httpSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  final Input<int>? httpSuccessFeedbackSampleRate;

  /// The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see [Key Terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms)
  final Input<String>? kmsMasterKeyId;

  /// IAM role for failure feedback
  final Input<String>? lambdaFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  final Input<String>? lambdaSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  final Input<int>? lambdaSuccessFeedbackSampleRate;

  /// The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`
  final Input<String>? namePrefix;

  /// The fully-formed AWS policy as JSON.
  final Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// If `SignatureVersion` should be [1 (SHA1) or 2 (SHA256)](https://docs.aws.amazon.com/sns/latest/dg/sns-verify-signature-of-message.html). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS.
  final Input<int>? signatureVersion;

  /// IAM role for failure feedback
  final Input<String>? sqsFailureFeedbackRoleArn;

  /// The IAM role permitted to receive success feedback for this topic
  final Input<String>? sqsSuccessFeedbackRoleArn;

  /// Percentage of success to sample
  final Input<int>? sqsSuccessFeedbackSampleRate;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Tracing mode of an Amazon SNS topic. Valid values: `"PassThrough"`, `"Active"`.
  final Input<String>? tracingConfig;

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
    final map = <String, dynamic>{};
    final applicationFailureFeedbackRoleArnValue =
        applicationFailureFeedbackRoleArn;
    if (applicationFailureFeedbackRoleArnValue != null) {
      map['applicationFailureFeedbackRoleArn'] =
          applicationFailureFeedbackRoleArnValue;
    }
    final applicationSuccessFeedbackRoleArnValue =
        applicationSuccessFeedbackRoleArn;
    if (applicationSuccessFeedbackRoleArnValue != null) {
      map['applicationSuccessFeedbackRoleArn'] =
          applicationSuccessFeedbackRoleArnValue;
    }
    final applicationSuccessFeedbackSampleRateValue =
        applicationSuccessFeedbackSampleRate;
    if (applicationSuccessFeedbackSampleRateValue != null) {
      map['applicationSuccessFeedbackSampleRate'] =
          applicationSuccessFeedbackSampleRateValue;
    }
    final archivePolicyValue = archivePolicy;
    if (archivePolicyValue != null) {
      map['archivePolicy'] = archivePolicyValue;
    }
    final contentBasedDeduplicationValue = contentBasedDeduplication;
    if (contentBasedDeduplicationValue != null) {
      map['contentBasedDeduplication'] = contentBasedDeduplicationValue;
    }
    final deliveryPolicyValue = deliveryPolicy;
    if (deliveryPolicyValue != null) {
      map['deliveryPolicy'] = deliveryPolicyValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final fifoThroughputScopeValue = fifoThroughputScope;
    if (fifoThroughputScopeValue != null) {
      map['fifoThroughputScope'] = fifoThroughputScopeValue;
    }
    final fifoTopicValue = fifoTopic;
    if (fifoTopicValue != null) {
      map['fifoTopic'] = fifoTopicValue;
    }
    final firehoseFailureFeedbackRoleArnValue = firehoseFailureFeedbackRoleArn;
    if (firehoseFailureFeedbackRoleArnValue != null) {
      map['firehoseFailureFeedbackRoleArn'] =
          firehoseFailureFeedbackRoleArnValue;
    }
    final firehoseSuccessFeedbackRoleArnValue = firehoseSuccessFeedbackRoleArn;
    if (firehoseSuccessFeedbackRoleArnValue != null) {
      map['firehoseSuccessFeedbackRoleArn'] =
          firehoseSuccessFeedbackRoleArnValue;
    }
    final firehoseSuccessFeedbackSampleRateValue =
        firehoseSuccessFeedbackSampleRate;
    if (firehoseSuccessFeedbackSampleRateValue != null) {
      map['firehoseSuccessFeedbackSampleRate'] =
          firehoseSuccessFeedbackSampleRateValue;
    }
    final httpFailureFeedbackRoleArnValue = httpFailureFeedbackRoleArn;
    if (httpFailureFeedbackRoleArnValue != null) {
      map['httpFailureFeedbackRoleArn'] = httpFailureFeedbackRoleArnValue;
    }
    final httpSuccessFeedbackRoleArnValue = httpSuccessFeedbackRoleArn;
    if (httpSuccessFeedbackRoleArnValue != null) {
      map['httpSuccessFeedbackRoleArn'] = httpSuccessFeedbackRoleArnValue;
    }
    final httpSuccessFeedbackSampleRateValue = httpSuccessFeedbackSampleRate;
    if (httpSuccessFeedbackSampleRateValue != null) {
      map['httpSuccessFeedbackSampleRate'] = httpSuccessFeedbackSampleRateValue;
    }
    final kmsMasterKeyIdValue = kmsMasterKeyId;
    if (kmsMasterKeyIdValue != null) {
      map['kmsMasterKeyId'] = kmsMasterKeyIdValue;
    }
    final lambdaFailureFeedbackRoleArnValue = lambdaFailureFeedbackRoleArn;
    if (lambdaFailureFeedbackRoleArnValue != null) {
      map['lambdaFailureFeedbackRoleArn'] = lambdaFailureFeedbackRoleArnValue;
    }
    final lambdaSuccessFeedbackRoleArnValue = lambdaSuccessFeedbackRoleArn;
    if (lambdaSuccessFeedbackRoleArnValue != null) {
      map['lambdaSuccessFeedbackRoleArn'] = lambdaSuccessFeedbackRoleArnValue;
    }
    final lambdaSuccessFeedbackSampleRateValue =
        lambdaSuccessFeedbackSampleRate;
    if (lambdaSuccessFeedbackSampleRateValue != null) {
      map['lambdaSuccessFeedbackSampleRate'] =
          lambdaSuccessFeedbackSampleRateValue;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final signatureVersionValue = signatureVersion;
    if (signatureVersionValue != null) {
      map['signatureVersion'] = signatureVersionValue;
    }
    final sqsFailureFeedbackRoleArnValue = sqsFailureFeedbackRoleArn;
    if (sqsFailureFeedbackRoleArnValue != null) {
      map['sqsFailureFeedbackRoleArn'] = sqsFailureFeedbackRoleArnValue;
    }
    final sqsSuccessFeedbackRoleArnValue = sqsSuccessFeedbackRoleArn;
    if (sqsSuccessFeedbackRoleArnValue != null) {
      map['sqsSuccessFeedbackRoleArn'] = sqsSuccessFeedbackRoleArnValue;
    }
    final sqsSuccessFeedbackSampleRateValue = sqsSuccessFeedbackSampleRate;
    if (sqsSuccessFeedbackSampleRateValue != null) {
      map['sqsSuccessFeedbackSampleRate'] = sqsSuccessFeedbackSampleRateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tracingConfigValue = tracingConfig;
    if (tracingConfigValue != null) {
      map['tracingConfig'] = tracingConfigValue;
    }
    return map;
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      applicationFailureFeedbackRoleArn: Input.asOptionalInput<String>(
          map['applicationFailureFeedbackRoleArn']),
      applicationSuccessFeedbackRoleArn: Input.asOptionalInput<String>(
          map['applicationSuccessFeedbackRoleArn']),
      applicationSuccessFeedbackSampleRate: Input.asOptionalInput<int>(
          map['applicationSuccessFeedbackSampleRate']),
      archivePolicy: Input.asOptionalInput<String>(map['archivePolicy']),
      contentBasedDeduplication:
          Input.asOptionalInput<bool>(map['contentBasedDeduplication']),
      deliveryPolicy: Input.asOptionalInput<String>(map['deliveryPolicy']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      fifoThroughputScope:
          Input.asOptionalInput<String>(map['fifoThroughputScope']),
      fifoTopic: Input.asOptionalInput<bool>(map['fifoTopic']),
      firehoseFailureFeedbackRoleArn:
          Input.asOptionalInput<String>(map['firehoseFailureFeedbackRoleArn']),
      firehoseSuccessFeedbackRoleArn:
          Input.asOptionalInput<String>(map['firehoseSuccessFeedbackRoleArn']),
      firehoseSuccessFeedbackSampleRate:
          Input.asOptionalInput<int>(map['firehoseSuccessFeedbackSampleRate']),
      httpFailureFeedbackRoleArn:
          Input.asOptionalInput<String>(map['httpFailureFeedbackRoleArn']),
      httpSuccessFeedbackRoleArn:
          Input.asOptionalInput<String>(map['httpSuccessFeedbackRoleArn']),
      httpSuccessFeedbackSampleRate:
          Input.asOptionalInput<int>(map['httpSuccessFeedbackSampleRate']),
      kmsMasterKeyId: Input.asOptionalInput<String>(map['kmsMasterKeyId']),
      lambdaFailureFeedbackRoleArn:
          Input.asOptionalInput<String>(map['lambdaFailureFeedbackRoleArn']),
      lambdaSuccessFeedbackRoleArn:
          Input.asOptionalInput<String>(map['lambdaSuccessFeedbackRoleArn']),
      lambdaSuccessFeedbackSampleRate:
          Input.asOptionalInput<int>(map['lambdaSuccessFeedbackSampleRate']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      policy: Input.asOptionalInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      signatureVersion: Input.asOptionalInput<int>(map['signatureVersion']),
      sqsFailureFeedbackRoleArn:
          Input.asOptionalInput<String>(map['sqsFailureFeedbackRoleArn']),
      sqsSuccessFeedbackRoleArn:
          Input.asOptionalInput<String>(map['sqsSuccessFeedbackRoleArn']),
      sqsSuccessFeedbackSampleRate:
          Input.asOptionalInput<int>(map['sqsSuccessFeedbackSampleRate']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tracingConfig: Input.asOptionalInput<String>(map['tracingConfig']),
    );
  }
}
