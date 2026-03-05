// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_subscription_dlq_policy.dart';

/// {@template pulumi_message_service_subscription_service_subscription_args_doc}
/// The set of arguments for ServiceSubscription.
/// {@endtemplate}
/// {@macro pulumi_message_service_subscription_service_subscription_args_doc}
class ServiceSubscriptionArgs {
  /// The dead-letter queue policy. See `dlq_policy` below.
  final pulumi.Input<ServiceSubscriptionDlqPolicy>? dlqPolicy;
  /// The endpoint has three format. Available values format:
  /// - `HTTP Format`: An HTTP URL that starts with http:// or https://.
  /// - `Queue Format`: A queue name.
  /// - `MPush Format`: An AppKey.
  /// - `Sms Format`: A mobile number
  /// - `Email Format`: An email address.
  final pulumi.Input<String> endpoint;
  /// The tag that is used to filter messages. Only the messages that have the same tag can be pushed. A tag is a string that can be up to 16 characters in length. By default, no tag is specified to filter messages.
  final pulumi.Input<String>? filterTag;
  /// The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. Valid values: `XML`, `JSON` and `SIMPLIFIED`. Default value: `XML`.
  final pulumi.Input<String>? notifyContentFormat;
  /// The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. Default value: `BACKOFF_RETRY`. Valid values:
  /// - `BACKOFF_RETRY`: retries with a fixed backoff interval.
  /// - `EXPONENTIAL_DECAY_RETRY`: retries with exponential backoff.
  final pulumi.Input<String>? notifyStrategy;
  /// The Push type of Subscription. The Valid values: `http`, `queue`, `mpush`, `alisms` and `email`.
  final pulumi.Input<String> pushType;
  /// The STS RoleArn.
  final pulumi.Input<String>? stsRoleArn;
  /// Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  final pulumi.Input<String> subscriptionName;
  /// The topic which The subscription belongs to was named with the name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  final pulumi.Input<String> topicName;

  /// Creates a new [ServiceSubscriptionArgs].
  /// [dlqPolicy] The dead-letter queue policy. See `dlq_policy` below.
  /// [endpoint] The endpoint has three format. Available values format:
  /// [filterTag] The tag that is used to filter messages. Only the messages that have the same tag can be pushed. A tag is a string that can be up to 16 characters in length. By default, no tag is specified to filter messages.
  /// [notifyContentFormat] The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. Valid values: `XML`, `JSON` and `SIMPLIFIED`. Default value: `XML`.
  /// [notifyStrategy] The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. Default value: `BACKOFF_RETRY`. Valid values:
  /// [pushType] The Push type of Subscription. The Valid values: `http`, `queue`, `mpush`, `alisms` and `email`.
  /// [stsRoleArn] The STS RoleArn.
  /// [subscriptionName] Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  /// [topicName] The topic which The subscription belongs to was named with the name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 255 characters.
  ServiceSubscriptionArgs({
    this.dlqPolicy,
    required this.endpoint,
    this.filterTag,
    this.notifyContentFormat,
    this.notifyStrategy,
    required this.pushType,
    this.stsRoleArn,
    required this.subscriptionName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dlqPolicy': ?pulumi.Input.mapOptionalInputValue<ServiceSubscriptionDlqPolicy, Map<String, dynamic>>(dlqPolicy, (value) => value.toMap()),
      'endpoint': endpoint,
      'filterTag': ?filterTag,
      'notifyContentFormat': ?notifyContentFormat,
      'notifyStrategy': ?notifyStrategy,
      'pushType': pushType,
      'stsRoleArn': ?stsRoleArn,
      'subscriptionName': subscriptionName,
      'topicName': topicName,
    };
  }

  factory ServiceSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ServiceSubscriptionArgs(
      dlqPolicy: (() { final guardedValue = map['dlqPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSubscriptionDlqPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      filterTag: (() { final guardedValue = map['filterTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifyContentFormat: (() { final guardedValue = map['notifyContentFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifyStrategy: (() { final guardedValue = map['notifyStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pushType: pulumi.Input.fromValue(map['pushType'] as String),
      stsRoleArn: (() { final guardedValue = map['stsRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionName: pulumi.Input.fromValue(map['subscriptionName'] as String),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}

