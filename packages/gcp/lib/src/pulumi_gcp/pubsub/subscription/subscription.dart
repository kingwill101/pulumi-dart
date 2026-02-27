import 'package:pulumi/pulumi.dart';
import '../subscription_bigquery_config/subscription_bigquery_config.dart';
import '../subscription_cloud_storage_config/subscription_cloud_storage_config.dart';
import '../subscription_dead_letter_policy/subscription_dead_letter_policy.dart';
import '../subscription_expiration_policy/subscription_expiration_policy.dart';
import '../subscription_message_transform/subscription_message_transform.dart';
import '../subscription_push_config/subscription_push_config.dart';
import '../subscription_retry_policy/subscription_retry_policy.dart';
import 'subscription_args.dart';

/// A named resource representing the stream of messages from a single,
/// specific topic, to be delivered to the subscribing application.
///
///
/// To get more information about Subscription, see:
///
/// * [API documentation](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.subscriptions)
/// * How-to Guides
/// * [Managing Subscriptions](https://cloud.google.com/pubsub/docs/admin#managing_subscriptions)
///
/// > **Note:** You can retrieve the email of the Google Managed Pub/Sub Service Account used for forwarding
/// by using the `gcp.projects.ServiceIdentity` resource.
///
/// ## Example Usage
///
/// ### Pubsub Subscription Push
///
///
///
/// ### Pubsub Subscription Pull
///
///
///
/// ### Pubsub Subscription Pull Filter
///
///
///
/// ### Pubsub Subscription Dead Letter
///
///
///
/// ### Pubsub Subscription Push Bq
///
///
///
/// ### Pubsub Subscription Push Bq Table Schema
///
///
///
/// ### Pubsub Subscription Push Bq Service Account
///
///
///
/// ### Pubsub Subscription Push Cloudstorage
///
///
///
/// ### Pubsub Subscription Push Cloudstorage Avro
///
///
///
/// ### Pubsub Subscription Push Cloudstorage Service Account
///
///
///
/// ### Pubsub Subscription Single Smt
///
///
///
/// ### Pubsub Subscription Multiple Smts
///
///
///
/// ### Pubsub Subscription Tags
///
///
///
///
/// ## Import
///
/// Subscription can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/subscriptions/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Subscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscription:Subscription default projects/{{project}}/subscriptions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscription:Subscription default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:pubsub/subscription:Subscription default {{name}}
/// ```
class Subscription extends CustomResource {
  /// This value is the maximum time after a subscriber receives a message
  /// before the subscriber should acknowledge the message. After message
  /// delivery but before the ack deadline expires and before the message is
  /// acknowledged, it is an outstanding message and will not be delivered
  /// again during that time (on a best-effort basis).
  /// For pull subscriptions, this value is used as the initial value for
  /// the ack deadline. To override this value for a given message, call
  /// subscriptions.modifyAckDeadline with the corresponding ackId if using
  /// pull. The minimum custom deadline you can specify is 10 seconds. The
  /// maximum custom deadline you can specify is 600 seconds (10 minutes).
  /// If this parameter is 0, a default value of 10 seconds is used.
  /// For push delivery, this value is also used to set the request timeout
  /// for the call to the push endpoint.
  /// If the subscriber never acknowledges the message, the Pub/Sub system
  /// will eventually redeliver the message.
  late final Output<int> ackDeadlineSeconds;

  /// If delivery to BigQuery is used with this subscription, this field is used to configure it.
  /// Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
  /// If all three are empty, then the subscriber will pull and ack messages using API methods.
  /// Structure is documented below.
  late final Output<SubscriptionBigqueryConfig?> bigqueryConfig;

  /// If delivery to Cloud Storage is used with this subscription, this field is used to configure it.
  /// Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
  /// If all three are empty, then the subscriber will pull and ack messages using API methods.
  /// Structure is documented below.
  late final Output<SubscriptionCloudStorageConfig?> cloudStorageConfig;

  /// A policy that specifies the conditions for dead lettering messages in
  /// this subscription. If dead_letter_policy is not set, dead lettering
  /// is disabled.
  /// The Cloud Pub/Sub service account associated with this subscription's
  /// parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Acknowledge() messages on this subscription.
  /// Structure is documented below.
  late final Output<SubscriptionDeadLetterPolicy?> deadLetterPolicy;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// If `true`, Pub/Sub provides the following guarantees for the delivery
  /// of a message with a given value of messageId on this Subscriptions':
  /// - The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires.
  /// - An acknowledged message will not be resent to a subscriber.
  /// Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery`
  /// is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values
  late final Output<bool?> enableExactlyOnceDelivery;

  /// If `true`, messages published with the same orderingKey in PubsubMessage will be delivered to
  /// the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they
  /// may be delivered in any order.
  late final Output<bool?> enableMessageOrdering;

  /// A policy that specifies the conditions for this subscription's expiration.
  /// A subscription is considered active as long as any connected subscriber
  /// is successfully consuming messages from the subscription or is issuing
  /// operations on the subscription. If expirationPolicy is not set, a default
  /// policy with ttl of 31 days will be used.  If it is set but ttl is "", the
  /// resource never expires.  The minimum allowed value for expirationPolicy.ttl
  /// is 1 day.
  /// Structure is documented below.
  late final Output<SubscriptionExpirationPolicy> expirationPolicy;

  /// The subscription only delivers the messages that match the filter.
  /// Pub/Sub automatically acknowledges the messages that don't match the filter. You can filter messages
  /// by their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,
  /// you can't modify the filter.
  late final Output<String?> filter;

  /// A set of key/value label pairs to assign to this Subscription.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// How long to retain unacknowledged messages in the subscription's
  /// backlog, from the moment a message is published. If
  /// retain_acked_messages is true, then this also configures the retention
  /// of acknowledged messages, and thus configures how far back in time a
  /// subscriptions.seek can be done. Defaults to 7 days. Cannot be more
  /// than 31 days (`"2678400s"`) or less than 10 minutes (`"600s"`).
  /// A duration in seconds with up to nine fractional digits, terminated
  /// by 's'. Example: `"600.5s"`.
  late final Output<String?> messageRetentionDuration;

  /// Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// order specified.
  /// Structure is documented below.
  late final Output<List<SubscriptionMessageTransform>?> messageTransforms;

  /// Name of the subscription.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// If push delivery is used with this subscription, this field is used to
  /// configure it. An empty pushConfig signifies that the subscriber will
  /// pull and ack messages using API methods.
  /// Structure is documented below.
  late final Output<SubscriptionPushConfig?> pushConfig;

  /// Indicates whether to retain acknowledged messages. If `true`, then
  /// messages are not expunged from the subscription's backlog, even if
  /// they are acknowledged, until they fall out of the
  /// messageRetentionDuration window.
  late final Output<bool?> retainAckedMessages;

  /// A policy that specifies how Pub/Sub retries message delivery for this subscription.
  /// If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.
  /// RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message
  /// Structure is documented below.
  late final Output<SubscriptionRetryPolicy?> retryPolicy;

  /// Input only. Resource manager tags to be bound to the subscription. Tag
  /// keys and values have the same definition as resource manager tags. Keys
  /// must be in the format tagKeys/{tag_key_id}, and values are in the format
  /// tagValues/456. The field is ignored when empty. The field is immutable and
  /// causes resource replacement when mutated. This field is only set at create
  /// time and modifying this field after creation will trigger recreation. To
  /// apply tags to an existing resource, see the `gcp.tags.TagValue`
  /// resource.
  late final Output<Map<String, String>?> tags;

  /// A reference to a Topic resource, of the form projects/{project}/topics/{{name}}
  /// (as in the id property of a google_pubsub_topic), or just a topic name if
  /// the topic is in the same project as the subscription.
  late final Output<String> topic;

  Subscription(
    String name, {
    SubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:pubsub/subscription:Subscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ackDeadlineSeconds = registerOutput<int>('ackDeadlineSeconds');
    this.bigqueryConfig =
        registerOutput<SubscriptionBigqueryConfig?>('bigqueryConfig');
    this.cloudStorageConfig =
        registerOutput<SubscriptionCloudStorageConfig?>('cloudStorageConfig');
    this.deadLetterPolicy =
        registerOutput<SubscriptionDeadLetterPolicy?>('deadLetterPolicy');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableExactlyOnceDelivery =
        registerOutput<bool?>('enableExactlyOnceDelivery');
    this.enableMessageOrdering = registerOutput<bool?>('enableMessageOrdering');
    this.expirationPolicy =
        registerOutput<SubscriptionExpirationPolicy>('expirationPolicy');
    this.filter = registerOutput<String?>('filter');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.messageRetentionDuration =
        registerOutput<String?>('messageRetentionDuration');
    this.messageTransforms =
        registerOutput<List<SubscriptionMessageTransform>?>(
            'messageTransforms');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pushConfig = registerOutput<SubscriptionPushConfig?>('pushConfig');
    this.retainAckedMessages = registerOutput<bool?>('retainAckedMessages');
    this.retryPolicy = registerOutput<SubscriptionRetryPolicy?>('retryPolicy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.topic = registerOutput<String>('topic');
  }
}
