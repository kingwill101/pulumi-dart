import 'package:pulumi/pulumi.dart' hide Config;
import 'push_config_response2.dart';
import 'subscription_args4.dart';

/// Creates a subscription on a given topic for a given subscriber. If the subscription already exists, returns ALREADY_EXISTS. If the corresponding topic doesn't exist, returns NOT_FOUND. If the name is not provided in the request, the server will assign a random name for this subscription on the same project as the topic.
class Subscription4 extends CustomResource {
  /// For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed. For push delivery, this value is used to set the request timeout for the call to the push endpoint. For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for each message using its corresponding ack_id with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis).
  late final Output<int> ackDeadlineSeconds;

  /// Name of the subscription.
  late final Output<String> name;

  /// If push delivery is used with this subscription, this field is used to configure it.
  late final Output<PushConfigResponse2> pushConfig;

  /// The name of the topic from which this subscription is receiving messages.
  late final Output<String> topic;

  Subscription4(
    String name, {
    SubscriptionArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1beta1a:Subscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    this.name = registerOutput<String>('name');
    this.pushConfig = registerOutput<PushConfigResponse2>('pushConfig');
    this.topic = registerOutput<String>('topic');
  }
}
