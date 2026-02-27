// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'push_config3.dart';

/// The set of arguments for Subscription.
class SubscriptionArgs5 {
  /// This value is the maximum time after a subscriber receives a message before the subscriber should acknowledge the message. After message delivery but before the ack deadline expires and before the message is acknowledged, it is an outstanding message and will not be delivered again during that time (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using pull. The maximum custom deadline you can specify is 600 seconds (10 minutes). For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message. If this parameter is 0, a default value of 10 seconds is used.
  final Input<int>? ackDeadlineSeconds;

  /// The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final Input<String>? name;
  final Input<String>? project;

  /// If push delivery is used with this subscription, this field is used to configure it. An empty `pushConfig` signifies that the subscriber will pull and ack messages using API methods.
  final Input<PushConfig3>? pushConfig;
  final Input<String> subscriptionId;

  /// The name of the topic from which this subscription is receiving messages. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  final Input<String>? topic;

  SubscriptionArgs5({
    this.ackDeadlineSeconds,
    this.name,
    this.project,
    this.pushConfig,
    required this.subscriptionId,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ackDeadlineSecondsValue = ackDeadlineSeconds;
    if (ackDeadlineSecondsValue != null) {
      map['ackDeadlineSeconds'] = ackDeadlineSecondsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pushConfigValue = pushConfig;
    if (pushConfigValue != null) {
      map['pushConfig'] =
          Input.mapOptionalInputValue<PushConfig3, Map<String, dynamic>>(
              pushConfigValue, (value) => value.toMap());
    }
    map['subscriptionId'] = subscriptionId;
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory SubscriptionArgs5.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs5(
      ackDeadlineSeconds: Input.asOptionalInput<int>(map['ackDeadlineSeconds']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      pushConfig: Input.asOptionalInput<PushConfig3>(map['pushConfig']),
      subscriptionId: Input.asInput<String>(map['subscriptionId']),
      topic: Input.asOptionalInput<String>(map['topic']),
    );
  }
}
