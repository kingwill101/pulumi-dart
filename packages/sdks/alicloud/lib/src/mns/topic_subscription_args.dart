// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mns_topic_subscription_topic_subscription_args_doc}
/// The set of arguments for TopicSubscription.
/// {@endtemplate}
/// {@macro pulumi_mns_topic_subscription_topic_subscription_args_doc}
class TopicSubscriptionArgs {
  /// The endpoint has three format. Available values format:
  /// - `HTTP Format`: http://xxx.com/xxx
  /// - `Queue Format`: acs:mns:{REGION}:{AccountID}:queues/{QueueName}
  /// - `Email Format`: mail:directmail:{MailAddress}
  final pulumi.Input<String> endpoint;
  /// The length should be shorter than 16.
  final pulumi.Input<String>? filterTag;
  /// Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  final pulumi.Input<String>? name;
  /// The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. The valid values: `SIMPLIFIED`, `XML` and `JSON`. Default to `SIMPLIFIED`.
  final pulumi.Input<String>? notifyContentFormat;
  /// The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. The Valid values: `EXPONENTIAL_DECAY_RETRY` and `BACKOFF_RETRY`. Default value to `BACKOFF_RETRY` .
  final pulumi.Input<String>? notifyStrategy;
  /// The topic which The subscription belongs to was named with the name.A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  final pulumi.Input<String> topicName;

  /// Creates a new [TopicSubscriptionArgs].
  /// [endpoint] The endpoint has three format. Available values format:
  /// [filterTag] The length should be shorter than 16.
  /// [name] Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  /// [notifyContentFormat] The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. The valid values: `SIMPLIFIED`, `XML` and `JSON`. Default to `SIMPLIFIED`.
  /// [notifyStrategy] The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. The Valid values: `EXPONENTIAL_DECAY_RETRY` and `BACKOFF_RETRY`. Default value to `BACKOFF_RETRY` .
  /// [topicName] The topic which The subscription belongs to was named with the name.A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  TopicSubscriptionArgs({
    required pulumi.Output<String> endpoint,
    pulumi.Output<String>? filterTag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notifyContentFormat,
    pulumi.Output<String>? notifyStrategy,
    required pulumi.Output<String> topicName,
  }) :
      endpoint = pulumi.Input.asInput<String>(endpoint),
      filterTag = pulumi.Input.asOptionalInput<String>(filterTag),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifyContentFormat = pulumi.Input.asOptionalInput<String>(notifyContentFormat),
      notifyStrategy = pulumi.Input.asOptionalInput<String>(notifyStrategy),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'filterTag': ?filterTag,
      'name': ?name,
      'notifyContentFormat': ?notifyContentFormat,
      'notifyStrategy': ?notifyStrategy,
      'topicName': topicName,
    };
  }

  factory TopicSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return TopicSubscriptionArgs(
      endpoint: pulumi.Output.create<String>(map['endpoint'] as String),
      filterTag: map['filterTag'] == null ? null : pulumi.Output.create<String>(map['filterTag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifyContentFormat: map['notifyContentFormat'] == null ? null : pulumi.Output.create<String>(map['notifyContentFormat'] as String),
      notifyStrategy: map['notifyStrategy'] == null ? null : pulumi.Output.create<String>(map['notifyStrategy'] as String),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

