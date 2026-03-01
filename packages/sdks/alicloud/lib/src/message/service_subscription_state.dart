// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_subscription_dlq_policy.dart';

/// Input properties used for looking up and filtering ServiceSubscription resources.
class ServiceSubscriptionState {
  /// (Available since v1.244.0) The time when the subscription was created.
  final pulumi.Input<int>? createTime;
  /// The dead-letter queue policy. See `dlq_policy` below.
  final pulumi.Input<ServiceSubscriptionDlqPolicy>? dlqPolicy;
  /// The endpoint has three format. Available values format:
  /// - `HTTP Format`: An HTTP URL that starts with http:// or https://.
  /// - `Queue Format`: A queue name.
  /// - `MPush Format`: An AppKey.
  /// - `Sms Format`: A mobile number
  /// - `Email Format`: An email address.
  final pulumi.Input<String>? endpoint;
  /// The tag that is used to filter messages. Only the messages that have the same tag can be pushed. A tag is a string that can be up to 16 characters in length. By default, no tag is specified to filter messages.
  final pulumi.Input<String>? filterTag;
  /// The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. Valid values: `XML`, `JSON` and `SIMPLIFIED`. Default value: `XML`.
  final pulumi.Input<String>? notifyContentFormat;
  /// The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. Default value: `BACKOFF_RETRY`. Valid values:
  /// - `BACKOFF_RETRY`: retries with a fixed backoff interval.
  /// - `EXPONENTIAL_DECAY_RETRY`: retries with exponential backoff.
  final pulumi.Input<String>? notifyStrategy;
  /// The Push type of Subscription. The Valid values: `http`, `queue`, `mpush`, `alisms` and `email`.
  final pulumi.Input<String>? pushType;
  /// The STS RoleArn.
  final pulumi.Input<String>? stsRoleArn;
  /// Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  final pulumi.Input<String>? subscriptionName;
  /// The topic which The subscription belongs to was named with the name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  final pulumi.Input<String>? topicName;

  /// Creates a new [ServiceSubscriptionState].
  /// [createTime] (Available since v1.244.0) The time when the subscription was created.
  /// [dlqPolicy] The dead-letter queue policy. See `dlq_policy` below.
  /// [endpoint] The endpoint has three format. Available values format:
  /// [filterTag] The tag that is used to filter messages. Only the messages that have the same tag can be pushed. A tag is a string that can be up to 16 characters in length. By default, no tag is specified to filter messages.
  /// [notifyContentFormat] The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. Valid values: `XML`, `JSON` and `SIMPLIFIED`. Default value: `XML`.
  /// [notifyStrategy] The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. Default value: `BACKOFF_RETRY`. Valid values:
  /// [pushType] The Push type of Subscription. The Valid values: `http`, `queue`, `mpush`, `alisms` and `email`.
  /// [stsRoleArn] The STS RoleArn.
  /// [subscriptionName] Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  /// [topicName] The topic which The subscription belongs to was named with the name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  ServiceSubscriptionState({
    pulumi.Output<int>? createTime,
    pulumi.Output<ServiceSubscriptionDlqPolicy>? dlqPolicy,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? filterTag,
    pulumi.Output<String>? notifyContentFormat,
    pulumi.Output<String>? notifyStrategy,
    pulumi.Output<String>? pushType,
    pulumi.Output<String>? stsRoleArn,
    pulumi.Output<String>? subscriptionName,
    pulumi.Output<String>? topicName,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      dlqPolicy = pulumi.Input.asOptionalInput<ServiceSubscriptionDlqPolicy>(dlqPolicy),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      filterTag = pulumi.Input.asOptionalInput<String>(filterTag),
      notifyContentFormat = pulumi.Input.asOptionalInput<String>(notifyContentFormat),
      notifyStrategy = pulumi.Input.asOptionalInput<String>(notifyStrategy),
      pushType = pulumi.Input.asOptionalInput<String>(pushType),
      stsRoleArn = pulumi.Input.asOptionalInput<String>(stsRoleArn),
      subscriptionName = pulumi.Input.asOptionalInput<String>(subscriptionName),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dlqPolicy': ?pulumi.Input.mapOptionalInputValue<ServiceSubscriptionDlqPolicy, Map<String, dynamic>>(dlqPolicy, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'filterTag': ?filterTag,
      'notifyContentFormat': ?notifyContentFormat,
      'notifyStrategy': ?notifyStrategy,
      'pushType': ?pushType,
      'stsRoleArn': ?stsRoleArn,
      'subscriptionName': ?subscriptionName,
      'topicName': ?topicName,
    };
  }

  factory ServiceSubscriptionState.fromMap(Map<String, dynamic> map) {
    return ServiceSubscriptionState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      dlqPolicy: map['dlqPolicy'] == null ? null : pulumi.Output.create<ServiceSubscriptionDlqPolicy>(ServiceSubscriptionDlqPolicy.fromMap((map['dlqPolicy'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      filterTag: map['filterTag'] == null ? null : pulumi.Output.create<String>(map['filterTag'] as String),
      notifyContentFormat: map['notifyContentFormat'] == null ? null : pulumi.Output.create<String>(map['notifyContentFormat'] as String),
      notifyStrategy: map['notifyStrategy'] == null ? null : pulumi.Output.create<String>(map['notifyStrategy'] as String),
      pushType: map['pushType'] == null ? null : pulumi.Output.create<String>(map['pushType'] as String),
      stsRoleArn: map['stsRoleArn'] == null ? null : pulumi.Output.create<String>(map['stsRoleArn'] as String),
      subscriptionName: map['subscriptionName'] == null ? null : pulumi.Output.create<String>(map['subscriptionName'] as String),
      topicName: map['topicName'] == null ? null : pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

