// ignore_for_file: unused_element, unnecessary_cast


class GetServiceSubscriptionsSubscription {
  /// The time when the subscription was created. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final int createTime;
  /// The endpoint to which the messages are pushed.
  final String endpoint;
  /// The tag that is used to filter messages. Only the messages that are attached with the specified tag can be pushed.
  final String filterTag;
  /// The id of the Subscription.
  final String id;
  /// The time when the subscription was last modified. This value is a UNIX timestamp representing the number of milliseconds that have elapsed since the epoch time January 1, 1970, 00:00:00 UTC.
  final int lastModifyTime;
  /// The content format of the messages that are pushed to the endpoint.
  final String notifyContentFormat;
  /// The retry policy that is applied if an error occurs when MNS pushes messages to the endpoint.
  final String notifyStrategy;
  /// The name of the subscription.
  final String subscriptionName;
  /// The url of the subscription.
  final String subscriptionUrl;
  /// The name of the topic.
  final String topicName;
  /// The account ID of the topic owner.
  final String topicOwner;

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
      createTime: map['createTime'] as int,
      endpoint: map['endpoint'] as String,
      filterTag: map['filterTag'] as String,
      id: map['id'] as String,
      lastModifyTime: map['lastModifyTime'] as int,
      notifyContentFormat: map['notifyContentFormat'] as String,
      notifyStrategy: map['notifyStrategy'] as String,
      subscriptionName: map['subscriptionName'] as String,
      subscriptionUrl: map['subscriptionUrl'] as String,
      topicName: map['topicName'] as String,
      topicOwner: map['topicOwner'] as String,
    );
  }
}

