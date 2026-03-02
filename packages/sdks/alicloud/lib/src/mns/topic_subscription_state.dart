// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TopicSubscription resources.
class TopicSubscriptionState {
  /// The endpoint has three format. Available values format:
  /// - `HTTP Format`: http://xxx.com/xxx
  /// - `Queue Format`: acs:mns:{REGION}:{AccountID}:queues/{QueueName}
  /// - `Email Format`: mail:directmail:{MailAddress}
  final pulumi.Input<String>? endpoint;
  /// The length should be shorter than 16.
  final pulumi.Input<String>? filterTag;
  /// Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  final pulumi.Input<String>? name;
  /// The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. The valid values: `SIMPLIFIED`, `XML` and `JSON`. Default to `SIMPLIFIED`.
  final pulumi.Input<String>? notifyContentFormat;
  /// The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. The Valid values: `EXPONENTIAL_DECAY_RETRY` and `BACKOFF_RETRY`. Default value to `BACKOFF_RETRY` .
  final pulumi.Input<String>? notifyStrategy;
  /// The topic which The subscription belongs to was named with the name.A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  final pulumi.Input<String>? topicName;

  /// Creates a new [TopicSubscriptionState].
  /// [endpoint] The endpoint has three format. Available values format:
  /// [filterTag] The length should be shorter than 16.
  /// [name] Two topics subscription on a single account in the same topic cannot have the same name. A topic subscription name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  /// [notifyContentFormat] The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users. The valid values: `SIMPLIFIED`, `XML` and `JSON`. Default to `SIMPLIFIED`.
  /// [notifyStrategy] The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails. The Valid values: `EXPONENTIAL_DECAY_RETRY` and `BACKOFF_RETRY`. Default value to `BACKOFF_RETRY` .
  /// [topicName] The topic which The subscription belongs to was named with the name.A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  TopicSubscriptionState({
    this.endpoint,
    this.filterTag,
    this.name,
    this.notifyContentFormat,
    this.notifyStrategy,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'filterTag': ?filterTag,
      'name': ?name,
      'notifyContentFormat': ?notifyContentFormat,
      'notifyStrategy': ?notifyStrategy,
      'topicName': ?topicName,
    };
  }

  factory TopicSubscriptionState.fromMap(Map<String, dynamic> map) {
    return TopicSubscriptionState(
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      filterTag: map['filterTag'] == null ? null : (map['filterTag'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notifyContentFormat: map['notifyContentFormat'] == null ? null : (map['notifyContentFormat'] as String).input(),
      notifyStrategy: map['notifyStrategy'] == null ? null : (map['notifyStrategy'] as String).input(),
      topicName: map['topicName'] == null ? null : (map['topicName'] as String).input(),
    );
  }
}

