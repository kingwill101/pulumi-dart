// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicSubscriptionsSubscription {
  /// Describe the terminal address of the message received in this subscription.
  final pulumi.Input<String> endpoint;
  /// A string to filter resulting messages of the topic by their message tag.
  final pulumi.Input<String> filterTag;
  /// The ID of the topic subscription. The value is set to `name`.
  final pulumi.Input<String> id;
  /// The name of the subscription.
  final pulumi.Input<String> name;
  /// The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users.
  final pulumi.Input<String> notifyContentFormat;
  /// The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails.
  final pulumi.Input<String> notifyStrategy;
  /// Two topics on a single account in the same region cannot have the same name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicSubscriptionsSubscription].
  /// [endpoint] Describe the terminal address of the message received in this subscription.
  /// [filterTag] A string to filter resulting messages of the topic by their message tag.
  /// [id] The ID of the topic subscription. The value is set to `name`.
  /// [name] The name of the subscription.
  /// [notifyContentFormat] The NotifyContentFormat attribute of Subscription. This attribute specifies the content format of the messages pushed to users.
  /// [notifyStrategy] The NotifyStrategy attribute of Subscription. This attribute specifies the retry strategy when message sending fails.
  /// [topicName] Two topics on a single account in the same region cannot have the same name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  GetTopicSubscriptionsSubscription({
    required this.endpoint,
    required this.filterTag,
    required this.id,
    required this.name,
    required this.notifyContentFormat,
    required this.notifyStrategy,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'filterTag': filterTag,
      'id': id,
      'name': name,
      'notifyContentFormat': notifyContentFormat,
      'notifyStrategy': notifyStrategy,
      'topicName': topicName,
    };
  }

  factory GetTopicSubscriptionsSubscription.fromMap(Map<String, dynamic> map) {
    return GetTopicSubscriptionsSubscription(
      endpoint: (map['endpoint'] as String).input(),
      filterTag: (map['filterTag'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      notifyContentFormat: (map['notifyContentFormat'] as String).input(),
      notifyStrategy: (map['notifyStrategy'] as String).input(),
      topicName: (map['topicName'] as String).input(),
    );
  }
}

