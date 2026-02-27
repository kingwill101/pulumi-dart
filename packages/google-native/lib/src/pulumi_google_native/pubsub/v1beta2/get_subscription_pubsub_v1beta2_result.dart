// ignore_for_file: unused_element, unnecessary_cast

import 'push_config_response_pubsub_v1beta2.dart';

/// Result data returned by getSubscription.
class GetSubscriptionPubsubV1beta2Result {
  /// This value is the maximum time after a subscriber receives a message before the subscriber should acknowledge the message. After message delivery but before the ack deadline expires and before the message is acknowledged, it is an outstanding message and will not be delivered again during that time (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using pull. The maximum custom deadline you can specify is 600 seconds (10 minutes). For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message. If this parameter is 0, a default value of 10 seconds is used.
  final int ackDeadlineSeconds;

  /// The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final String name;

  /// If push delivery is used with this subscription, this field is used to configure it. An empty `pushConfig` signifies that the subscriber will pull and ack messages using API methods.
  final PushConfigResponsePubsubV1beta2 pushConfig;

  /// The name of the topic from which this subscription is receiving messages. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  final String topic;

  GetSubscriptionPubsubV1beta2Result({
    required this.ackDeadlineSeconds,
    required this.name,
    required this.pushConfig,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ackDeadlineSeconds'] = ackDeadlineSeconds;
    map['name'] = name;
    map['pushConfig'] = pushConfig.toMap();
    map['topic'] = topic;
    return map;
  }

  factory GetSubscriptionPubsubV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubV1beta2Result(
      ackDeadlineSeconds: map['ackDeadlineSeconds'] as int,
      name: map['name'] as String,
      pushConfig: PushConfigResponsePubsubV1beta2.fromMap(
          (map['pushConfig'] as Map).cast<String, dynamic>()),
      topic: map['topic'] as String,
    );
  }
}
