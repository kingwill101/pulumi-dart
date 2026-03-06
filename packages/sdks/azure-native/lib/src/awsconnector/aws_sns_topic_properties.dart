// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_config.dart';
import 'subscription.dart';
import 'tag.dart';

/// Definition of awsSnsTopic
class AwsSnsTopicProperties {
  /// The archive policy determines the number of days SNS retains messages. You can set a retention period from 1 to 365 days.
  final pulumi.Input<dynamic>? archivePolicy;
  /// Enables content-based deduplication for FIFO topics.  +  By default, ``ContentBasedDeduplication`` is set to ``false``. If you create a FIFO topic and this attribute is ``false``, you must specify a value for the ``MessageDeduplicationId`` parameter for the [Publish](https://docs.aws.amazon.com/sns/latest/api/API_Publish.html) action.   +  When you set ``ContentBasedDeduplication`` to ``true``, SNS uses a SHA-256 hash to generate the ``MessageDeduplicationId`` using the body of the message (but not the attributes of the message). (Optional) To override the generated value, you can specify a value for the the ``MessageDeduplicationId`` parameter for the ``Publish`` action.
  final pulumi.Input<bool>? contentBasedDeduplication;
  /// The body of the policy document you want to use for this topic. You can only add one policy per topic. The policy must be in JSON string format. Length Constraints: Maximum length of 30,720.
  final pulumi.Input<dynamic>? dataProtectionPolicy;
  /// Property deliveryStatusLogging
  final pulumi.Input<List<LoggingConfig>>? deliveryStatusLogging;
  /// The display name to use for an SNS topic with SMS subscriptions. The display name must be maximum 100 characters long, including hyphens (-), underscores (_), spaces, and tabs.
  final pulumi.Input<String>? displayName;
  /// Set to true to create a FIFO topic.
  final pulumi.Input<bool>? fifoTopic;
  /// The ID of an AWS managed customer master key (CMK) for SNS or a custom CMK. For more information, see [Key terms](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms). For more examples, see ``KeyId`` in the *API Reference*. This property applies only to [server-side-encryption](https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html).
  final pulumi.Input<String>? kmsMasterKeyId;
  /// The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS. By default, ``SignatureVersion`` is set to ``1``.
  final pulumi.Input<String>? signatureVersion;
  /// The SNS subscriptions (endpoints) for this topic.  If you specify the ``Subscription`` property in the ``AWS::SNS::Topic`` resource and it creates an associated subscription resource, the associated subscription is not deleted when the ``AWS::SNS::Topic`` resource is deleted.
  final pulumi.Input<List<Subscription>>? subscription;
  /// The list of tags to add to a new topic.  To be able to tag a topic on creation, you must have the ``sns:CreateTopic`` and ``sns:TagResource`` permissions.
  final pulumi.Input<List<Tag>>? tags;
  /// Property topicArn
  final pulumi.Input<String>? topicArn;
  /// The name of the topic you want to create. Topic names must include only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. FIFO topic names must end with ``.fifo``. If you don't specify a name, CFN generates a unique physical ID and uses that ID for the topic name. For more information, see [Name type](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html).  If you specify a name, you can't perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  final pulumi.Input<String>? topicName;
  /// Tracing mode of an SNS topic. By default ``TracingConfig`` is set to ``PassThrough``, and the topic passes through the tracing header it receives from an SNS publisher to its subscriptions. If set to ``Active``, SNS will vend X-Ray segment data to topic owner account if the sampled flag in the tracing header is true.
  final pulumi.Input<String>? tracingConfig;

  /// Creates a new [AwsSnsTopicProperties].
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
  const AwsSnsTopicProperties({
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
      'deliveryStatusLogging': ?pulumi.Input.mapOptionalInputValue<List<LoggingConfig>, List<Map<String, dynamic>>>(deliveryStatusLogging, (value) => pulumi.Input.encodeList<LoggingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'fifoTopic': ?fifoTopic,
      'kmsMasterKeyId': ?kmsMasterKeyId,
      'signatureVersion': ?signatureVersion,
      'subscription': ?pulumi.Input.mapOptionalInputValue<List<Subscription>, List<Map<String, dynamic>>>(subscription, (value) => pulumi.Input.encodeList<Subscription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topicArn': ?topicArn,
      'topicName': ?topicName,
      'tracingConfig': ?tracingConfig,
    };
  }

  factory AwsSnsTopicProperties.fromMap(Map<String, dynamic> map) {
    return AwsSnsTopicProperties(
      archivePolicy: (() { final guardedValue = map['archivePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      contentBasedDeduplication: (() { final guardedValue = map['contentBasedDeduplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataProtectionPolicy: (() { final guardedValue = map['dataProtectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      deliveryStatusLogging: (() { final guardedValue = map['deliveryStatusLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoggingConfig>(guardedValue, (value) => LoggingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fifoTopic: (() { final guardedValue = map['fifoTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsMasterKeyId: (() { final guardedValue = map['kmsMasterKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatureVersion: (() { final guardedValue = map['signatureVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscription: (() { final guardedValue = map['subscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Subscription>(guardedValue, (value) => Subscription.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tracingConfig: (() { final guardedValue = map['tracingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

