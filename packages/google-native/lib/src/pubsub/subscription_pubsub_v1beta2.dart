import 'package:pulumi/pulumi.dart' as pulumi;
import 'push_config_response_pubsub_v1beta2.dart';
import 'subscription_pubsub_v1beta2_args.dart';

/// Creates a subscription to a given topic. If the subscription already exists, returns `ALREADY_EXISTS`. If the corresponding topic doesn't exist, returns `NOT_FOUND`. If the name is not provided in the request, the server will assign a random name for this subscription on the same project as the topic. Note that for REST API requests, you must specify a name.
class SubscriptionPubsubV1beta2 extends pulumi.CustomResource {
  /// This value is the maximum time after a subscriber receives a message before the subscriber should acknowledge the message. After message delivery but before the ack deadline expires and before the message is acknowledged, it is an outstanding message and will not be delivered again during that time (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using pull. The maximum custom deadline you can specify is 600 seconds (10 minutes). For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message. If this parameter is 0, a default value of 10 seconds is used.
  late final pulumi.Output<int> ackDeadlineSeconds;
  /// The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// If push delivery is used with this subscription, this field is used to configure it. An empty `pushConfig` signifies that the subscriber will pull and ack messages using API methods.
  late final pulumi.Output<PushConfigResponsePubsubV1beta2> pushConfig;
  late final pulumi.Output<String> subscriptionId;
  /// The name of the topic from which this subscription is receiving messages. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  late final pulumi.Output<String> topic;

  /// Creates a new [SubscriptionPubsubV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionPubsubV1beta2]. {@macro pulumi_pubsub_v1beta2_subscription_pubsub_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionPubsubV1beta2(
    String name, {
    SubscriptionPubsubV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1beta2:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pushConfig = registerOutput<PushConfigResponsePubsubV1beta2>('pushConfig');
    this.subscriptionId = registerOutput<String>('subscriptionId');
    this.topic = registerOutput<String>('topic');
  }
}
