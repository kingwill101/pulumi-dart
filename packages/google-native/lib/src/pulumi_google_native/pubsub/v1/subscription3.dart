import 'package:pulumi/pulumi.dart';
import 'big_query_config_response.dart';
import 'cloud_storage_config_response.dart';
import 'dead_letter_policy_response.dart';
import 'expiration_policy_response.dart';
import 'push_config_response.dart';
import 'retry_policy_response.dart';
import 'subscription_args3.dart';

/// Creates a subscription to a given topic. See the [resource name rules] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). If the subscription already exists, returns `ALREADY_EXISTS`. If the corresponding topic doesn't exist, returns `NOT_FOUND`. If the name is not provided in the request, the server will assign a random name for this subscription on the same project as the topic, conforming to the [resource name format] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). The generated name is populated in the returned Subscription object. Note that for REST API requests, you must specify a name in the request.
class Subscription3 extends CustomResource {
  /// Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be _outstanding_. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.
  late final Output<int> ackDeadlineSeconds;

  /// Optional. If delivery to BigQuery is used with this subscription, this field is used to configure it.
  late final Output<BigQueryConfigResponse> bigqueryConfig;

  /// Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it.
  late final Output<CloudStorageConfigResponse> cloudStorageConfig;

  /// Optional. A policy that specifies the conditions for dead lettering messages in this subscription. If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub service account associated with this subscriptions's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription.
  late final Output<DeadLetterPolicyResponse> deadLetterPolicy;

  /// Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions don't receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made.
  late final Output<bool> detached;

  /// Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a given value of `message_id` on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery` is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct `message_id` values.
  late final Output<bool> enableExactlyOnceDelivery;

  /// Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be delivered to the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they may be delivered in any order.
  late final Output<bool> enableMessageOrdering;

  /// Optional. A policy that specifies the conditions for this subscription's expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If `expiration_policy` is not set, a *default policy* with `ttl` of 31 days will be used. The minimum allowed value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set, but `expiration_policy.ttl` is not set, the subscription never expires.
  late final Output<ExpirationPolicyResponse> expirationPolicy;

  /// Optional. An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `attributes` field matches the filter are delivered on this subscription. If empty, then no messages are filtered out.
  late final Output<String> filter;

  /// Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  late final Output<Map<String, String>> labels;

  /// Optional. How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If `retain_acked_messages` is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a `Seek` can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10 minutes.
  late final Output<String> messageRetentionDuration;

  /// The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. If push delivery is used with this subscription, this field is used to configure it.
  late final Output<PushConfigResponse> pushConfig;

  /// Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to [`Seek` to a timestamp] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages.
  late final Output<bool> retainAckedMessages;

  /// Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message.
  late final Output<RetryPolicyResponse> retryPolicy;

  /// An output-only field indicating whether or not the subscription can receive messages.
  late final Output<String> state;
  late final Output<String> subscriptionId;

  /// The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  late final Output<String> topic;

  /// Indicates the minimum duration for which a message is retained after it is published to the subscription's topic. If this field is set, messages published to the subscription's topic in the last `topic_message_retention_duration` are always available to subscribers. See the `message_retention_duration` field in `Topic`. This field is set only in responses from the server; it is ignored if it is set in any requests.
  late final Output<String> topicMessageRetentionDuration;

  Subscription3(
    String name, {
    SubscriptionArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1:Subscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    this.bigqueryConfig =
        registerOutput<BigQueryConfigResponse>('bigqueryConfig');
    this.cloudStorageConfig =
        registerOutput<CloudStorageConfigResponse>('cloudStorageConfig');
    this.deadLetterPolicy =
        registerOutput<DeadLetterPolicyResponse>('deadLetterPolicy');
    this.detached = registerOutput<bool>('detached');
    this.enableExactlyOnceDelivery =
        registerOutput<bool>('enableExactlyOnceDelivery');
    this.enableMessageOrdering = registerOutput<bool>('enableMessageOrdering');
    this.expirationPolicy =
        registerOutput<ExpirationPolicyResponse>('expirationPolicy');
    this.filter = registerOutput<String>('filter');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.messageRetentionDuration =
        registerOutput<String>('messageRetentionDuration');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pushConfig = registerOutput<PushConfigResponse>('pushConfig');
    this.retainAckedMessages = registerOutput<bool>('retainAckedMessages');
    this.retryPolicy = registerOutput<RetryPolicyResponse>('retryPolicy');
    this.state = registerOutput<String>('state');
    this.subscriptionId = registerOutput<String>('subscriptionId');
    this.topic = registerOutput<String>('topic');
    this.topicMessageRetentionDuration =
        registerOutput<String>('topicMessageRetentionDuration');
  }
}
