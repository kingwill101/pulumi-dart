// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'push_config_pubsub_v1beta1a.dart';

/// {@template pulumi_pubsub_v1beta1a_subscription_pubsub_v1beta1a_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta1a_subscription_pubsub_v1beta1a_args_doc}
class SubscriptionPubsubV1beta1aArgs {
  /// For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed. For push delivery, this value is used to set the request timeout for the call to the push endpoint. For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for each message using its corresponding ack_id with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis).
  final pulumi.Input<int>? ackDeadlineSeconds;

  /// Name of the subscription.
  final pulumi.Input<String>? name;

  /// If push delivery is used with this subscription, this field is used to configure it.
  final pulumi.Input<PushConfigPubsubV1beta1a>? pushConfig;

  /// The name of the topic from which this subscription is receiving messages.
  final pulumi.Input<String>? topic;

  /// Creates a new [SubscriptionPubsubV1beta1aArgs].
  /// [ackDeadlineSeconds] For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed. For push delivery, this value is used to set the request timeout for the call to the push endpoint. For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for each message using its corresponding ack_id with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis).
  /// [name] Name of the subscription.
  /// [pushConfig] If push delivery is used with this subscription, this field is used to configure it.
  /// [topic] The name of the topic from which this subscription is receiving messages.
  SubscriptionPubsubV1beta1aArgs({
    int? ackDeadlineSeconds,
    String? name,
    PushConfigPubsubV1beta1a? pushConfig,
    String? topic,
  })  : ackDeadlineSeconds =
            pulumi.Input.asOptionalInput<int>(ackDeadlineSeconds),
        name = pulumi.Input.asOptionalInput<String>(name),
        pushConfig =
            pulumi.Input.asOptionalInput<PushConfigPubsubV1beta1a>(pushConfig),
        topic = pulumi.Input.asOptionalInput<String>(topic);

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
    final pushConfigValue = pushConfig;
    if (pushConfigValue != null) {
      map['pushConfig'] = pulumi.Input.mapOptionalInputValue<
          PushConfigPubsubV1beta1a,
          Map<String, dynamic>>(pushConfigValue, (value) => value.toMap());
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory SubscriptionPubsubV1beta1aArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionPubsubV1beta1aArgs(
      ackDeadlineSeconds: map['ackDeadlineSeconds'] == null
          ? null
          : map['ackDeadlineSeconds'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      pushConfig: map['pushConfig'] == null
          ? null
          : PushConfigPubsubV1beta1a.fromMap(
              (map['pushConfig'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
