// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceSubscriptionsSubscription {
  /// The time when the subscription was created. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final pulumi.Input<int> createTime;
  /// The endpoint to which the messages are pushed.
  final pulumi.Input<String> endpoint;
  /// The tag that is used to filter messages. Only the messages that are attached with the specified tag can be pushed.
  final pulumi.Input<String> filterTag;
  /// The id of the Subscription.
  final pulumi.Input<String> id;
  /// The time when the subscription was last modified. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final pulumi.Input<int> lastModifyTime;
  /// The content format of the messages that are pushed to the endpoint.
  final pulumi.Input<String> notifyContentFormat;
  /// The retry policy that is applied if an error occurs when MNS pushes messages to the endpoint.
  final pulumi.Input<String> notifyStrategy;
  /// The name of the subscription.
  final pulumi.Input<String> subscriptionName;
  /// The url of the subscription.
  final pulumi.Input<String> subscriptionUrl;
  /// The name of the topic.
  final pulumi.Input<String> topicName;
  /// The account ID of the topic owner.
  final pulumi.Input<String> topicOwner;

  /// Creates a new [GetServiceSubscriptionsSubscription].
  /// [createTime] The time when the subscription was created. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  /// [endpoint] The endpoint to which the messages are pushed.
  /// [filterTag] The tag that is used to filter messages. Only the messages that are attached with the specified tag can be pushed.
  /// [id] The id of the Subscription.
  /// [lastModifyTime] The time when the subscription was last modified. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  /// [notifyContentFormat] The content format of the messages that are pushed to the endpoint.
  /// [notifyStrategy] The retry policy that is applied if an error occurs when MNS pushes messages to the endpoint.
  /// [subscriptionName] The name of the subscription.
  /// [subscriptionUrl] The url of the subscription.
  /// [topicName] The name of the topic.
  /// [topicOwner] The account ID of the topic owner.
  GetServiceSubscriptionsSubscription({
    required this.createTime,
    required this.endpoint,
    required this.filterTag,
    required this.id,
    required this.lastModifyTime,
    required this.notifyContentFormat,
    required this.notifyStrategy,
    required this.subscriptionName,
    required this.subscriptionUrl,
    required this.topicName,
    required this.topicOwner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endpoint': endpoint,
      'filterTag': filterTag,
      'id': id,
      'lastModifyTime': lastModifyTime,
      'notifyContentFormat': notifyContentFormat,
      'notifyStrategy': notifyStrategy,
      'subscriptionName': subscriptionName,
      'subscriptionUrl': subscriptionUrl,
      'topicName': topicName,
      'topicOwner': topicOwner,
    };
  }

  factory GetServiceSubscriptionsSubscription.fromMap(Map<String, dynamic> map) {
    return GetServiceSubscriptionsSubscription(
      createTime: (map['createTime'] as int).input(),
      endpoint: (map['endpoint'] as String).input(),
      filterTag: (map['filterTag'] as String).input(),
      id: (map['id'] as String).input(),
      lastModifyTime: (map['lastModifyTime'] as int).input(),
      notifyContentFormat: (map['notifyContentFormat'] as String).input(),
      notifyStrategy: (map['notifyStrategy'] as String).input(),
      subscriptionName: (map['subscriptionName'] as String).input(),
      subscriptionUrl: (map['subscriptionUrl'] as String).input(),
      topicName: (map['topicName'] as String).input(),
      topicOwner: (map['topicOwner'] as String).input(),
    );
  }
}

