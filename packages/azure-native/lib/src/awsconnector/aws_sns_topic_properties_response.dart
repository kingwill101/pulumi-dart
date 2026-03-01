// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config_response.dart';
import 'subscription_response.dart';
import 'tag_response.dart';

/// Definition of awsSnsTopic
class AwsSnsTopicPropertiesResponse {
  /// The archive policy determines the number of days SNS retains messages. You can set a retention period from 1 to 365 days.
  final dynamic archivePolicy;
  /// Enables content-based deduplication for FIFO topics.  +  By default, ``ContentBasedDeduplication`` is set to ``false``. If you create a FIFO topic and this attribute is ``false``, you must specify a value for the ``MessageDeduplicationId`` parameter for the [Publish](https://docs.aws.amazon.com/sns/latest/api/API_Publish.html) action.   +  When you set ``ContentBasedDeduplication`` to ``true``, SNS uses a SHA-256 hash to generate the ``MessageDeduplicationId`` using the body of the message (but not the attributes of the message). (Optional) To override the generated value, you can specify a value for the the ``MessageDeduplicationId`` parameter for the ``Publish`` action.
  final bool? contentBasedDeduplication;
  /// The body of the policy document you want to use for this topic. You can only add one policy per topic. The policy must be in JSON string format. Length Constraints: Maximum length of 30,720.
  final dynamic dataProtectionPolicy;
  /// Property deliveryStatusLogging
  final List<LoggingConfigResponse>? deliveryStatusLogging;
  /// The display name to use for an SNS topic with SMS subscriptions. The display name must be maximum 100 characters long, including hyphens (-), underscores (_), spaces, and tabs.
  final String? displayName;
  /// Set to true to create a FIFO topic.
  final bool? fifoTopic;
  /// The ID of an AWS managed customer master key (CMK) for SNS or a custom CMK. For more information, see [Key terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms). For more examples, see ``KeyId`` in the *API Reference*. This property applies only to [server-side-encryption](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html).
  final String? kmsMasterKeyId;
  /// The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS. By default, ``SignatureVersion`` is set to ``1``.
  final String? signatureVersion;
  /// The SNS subscriptions (endpoints) for this topic.  If you specify the ``Subscription`` property in the ``AWS::SNS::Topic`` resource and it creates an associated subscription resource, the associated subscription is not deleted when the ``AWS::SNS::Topic`` resource is deleted.
  final List<SubscriptionResponse>? subscription;
  /// The list of tags to add to a new topic.  To be able to tag a topic on creation, you must have the ``sns:CreateTopic`` and ``sns:TagResource`` permissions.
  final List<TagResponse>? tags;
  /// Property topicArn
  final String? topicArn;
  /// The name of the topic you want to create. Topic names must include only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. FIFO topic names must end with ``.fifo``. If you don't specify a name, CFN generates a unique physical ID and uses that ID for the topic name. For more information, see [Name type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html).  If you specify a name, you can't perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  final String? topicName;
  /// Tracing mode of an SNS topic. By default ``TracingConfig`` is set to ``PassThrough``, and the topic passes through the tracing header it receives from an SNS publisher to its subscriptions. If set to ``Active``, SNS will vend X-Ray segment data to topic owner account if the sampled flag in the tracing header is true.
  final String? tracingConfig;

  /// Creates a new [AwsSnsTopicPropertiesResponse].
  /// [archivePolicy] The archive policy determines the number of days SNS retains messages. You can set a retention period from 1 to 365 days.
  /// [contentBasedDeduplication] Enables content-based deduplication for FIFO topics.  +  By default, ``ContentBasedDeduplication`` is set to ``false``. If you create a FIFO topic and this attribute is ``false``, you must specify a value for the ``MessageDeduplicationId`` parameter for the [Publish](https://docs.aws.amazon.com/sns/latest/api/API_Publish.html) action.   +  When you set ``ContentBasedDeduplication`` to ``true``, SNS uses a SHA-256 hash to generate the ``MessageDeduplicationId`` using the body of the message (but not the attributes of the message). (Optional) To override the generated value, you can specify a value for the the ``MessageDeduplicationId`` parameter for the ``Publish`` action.
  /// [dataProtectionPolicy] The body of the policy document you want to use for this topic. You can only add one policy per topic. The policy must be in JSON string format. Length Constraints: Maximum length of 30,720.
  /// [deliveryStatusLogging] Property deliveryStatusLogging
  /// [displayName] The display name to use for an SNS topic with SMS subscriptions. The display name must be maximum 100 characters long, including hyphens (-), underscores (_), spaces, and tabs.
  /// [fifoTopic] Set to true to create a FIFO topic.
  /// [kmsMasterKeyId] The ID of an AWS managed customer master key (CMK) for SNS or a custom CMK. For more information, see [Key terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms). For more examples, see ``KeyId`` in the *API Reference*. This property applies only to [server-side-encryption](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html).
  /// [signatureVersion] The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS. By default, ``SignatureVersion`` is set to ``1``.
  /// [subscription] The SNS subscriptions (endpoints) for this topic.  If you specify the ``Subscription`` property in the ``AWS::SNS::Topic`` resource and it creates an associated subscription resource, the associated subscription is not deleted when the ``AWS::SNS::Topic`` resource is deleted.
  /// [tags] The list of tags to add to a new topic.  To be able to tag a topic on creation, you must have the ``sns:CreateTopic`` and ``sns:TagResource`` permissions.
  /// [topicArn] Property topicArn
  /// [topicName] The name of the topic you want to create. Topic names must include only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. FIFO topic names must end with ``.fifo``. If you don't specify a name, CFN generates a unique physical ID and uses that ID for the topic name. For more information, see [Name type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html).  If you specify a name, you can't perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  /// [tracingConfig] Tracing mode of an SNS topic. By default ``TracingConfig`` is set to ``PassThrough``, and the topic passes through the tracing header it receives from an SNS publisher to its subscriptions. If set to ``Active``, SNS will vend X-Ray segment data to topic owner account if the sampled flag in the tracing header is true.
  AwsSnsTopicPropertiesResponse({
    this.archivePolicy,
    this.contentBasedDeduplication,
    this.dataProtectionPolicy,
    this.deliveryStatusLogging,
    this.displayName,
    this.fifoTopic,
    this.kmsMasterKeyId,
    this.signatureVersion,
    this.subscription,
    this.tags,
    this.topicArn,
    this.topicName,
    this.tracingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archivePolicy': ?archivePolicy,
      'contentBasedDeduplication': ?contentBasedDeduplication,
      'dataProtectionPolicy': ?dataProtectionPolicy,
      'deliveryStatusLogging': ?deliveryStatusLogging == null ? null : pulumi.Input.encodeList<LoggingConfigResponse, Map<String, dynamic>>(deliveryStatusLogging!, (value) => value.toMap()),
      'displayName': ?displayName,
      'fifoTopic': ?fifoTopic,
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'signatureVersion': ?signatureVersion,
      'subscription': ?subscription == null ? null : pulumi.Input.encodeList<SubscriptionResponse, Map<String, dynamic>>(subscription!, (value) => value.toMap()),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'topicArn': ?topicArn,
      'topicName': ?topicName,
      'tracingConfig': ?tracingConfig,
    };
  }

  factory AwsSnsTopicPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSnsTopicPropertiesResponse(
      archivePolicy: map['archivePolicy'] == null ? null : map['archivePolicy'],
      contentBasedDeduplication: map['contentBasedDeduplication'] == null ? null : map['contentBasedDeduplication'] as bool,
      dataProtectionPolicy: map['dataProtectionPolicy'] == null ? null : map['dataProtectionPolicy'],
      deliveryStatusLogging: map['deliveryStatusLogging'] == null ? null : pulumi.Input.decodeList<LoggingConfigResponse>(map['deliveryStatusLogging'], (value) => LoggingConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      fifoTopic: map['fifoTopic'] == null ? null : map['fifoTopic'] as bool,
      kmsMasterKeyId: map['kmsMasterKeyId'] == null ? null : map['kmsMasterKeyId'] as String,
      signatureVersion: map['signatureVersion'] == null ? null : map['signatureVersion'] as String,
      subscription: map['subscription'] == null ? null : pulumi.Input.decodeList<SubscriptionResponse>(map['subscription'], (value) => SubscriptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
      topicName: map['topicName'] == null ? null : map['topicName'] as String,
      tracingConfig: map['tracingConfig'] == null ? null : map['tracingConfig'] as String,
    );
  }
}

