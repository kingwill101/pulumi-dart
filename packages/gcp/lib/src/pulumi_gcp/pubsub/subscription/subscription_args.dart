// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../subscription_bigquery_config/subscription_bigquery_config.dart';
import '../subscription_cloud_storage_config/subscription_cloud_storage_config.dart';
import '../subscription_dead_letter_policy/subscription_dead_letter_policy.dart';
import '../subscription_expiration_policy/subscription_expiration_policy.dart';
import '../subscription_message_transform/subscription_message_transform.dart';
import '../subscription_push_config/subscription_push_config.dart';
import '../subscription_retry_policy/subscription_retry_policy.dart';

/// The set of arguments for Subscription.
class SubscriptionArgs {
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
  final Input<int>? ackDeadlineSeconds;

  /// If delivery to BigQuery is used with this subscription, this field is used to configure it.
  /// Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
  /// If all three are empty, then the subscriber will pull and ack messages using API methods.
  /// Structure is documented below.
  final Input<SubscriptionBigqueryConfig>? bigqueryConfig;

  /// If delivery to Cloud Storage is used with this subscription, this field is used to configure it.
  /// Either pushConfig, bigQueryConfig or cloudStorageConfig can be set, but not combined.
  /// If all three are empty, then the subscriber will pull and ack messages using API methods.
  /// Structure is documented below.
  final Input<SubscriptionCloudStorageConfig>? cloudStorageConfig;

  /// A policy that specifies the conditions for dead lettering messages in
  /// this subscription. If<span pulumi-lang-nodejs=" deadLetterPolicy " pulumi-lang-dotnet=" DeadLetterPolicy " pulumi-lang-go=" deadLetterPolicy " pulumi-lang-python=" dead_letter_policy " pulumi-lang-yaml=" deadLetterPolicy " pulumi-lang-java=" deadLetterPolicy "> dead_letter_policy </span>is not set, dead lettering
  /// is disabled.
  /// The Cloud Pub/Sub service account associated with this subscription's
  /// parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Acknowledge() messages on this subscription.
  /// Structure is documented below.
  final Input<SubscriptionDeadLetterPolicy>? deadLetterPolicy;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, Pub/Sub provides the following guarantees for the delivery
  /// of a message with a given value of messageId on this Subscriptions':
  /// - The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires.
  /// - An acknowledged message will not be resent to a subscriber.
  /// Note that subscribers may still receive multiple copies of a message when <span pulumi-lang-nodejs="`enableExactlyOnceDelivery`" pulumi-lang-dotnet="`EnableExactlyOnceDelivery`" pulumi-lang-go="`enableExactlyOnceDelivery`" pulumi-lang-python="`enable_exactly_once_delivery`" pulumi-lang-yaml="`enableExactlyOnceDelivery`" pulumi-lang-java="`enableExactlyOnceDelivery`">`enable_exactly_once_delivery`</span>
  /// is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct messageId values
  final Input<bool>? enableExactlyOnceDelivery;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, messages published with the same orderingKey in PubsubMessage will be delivered to
  /// the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they
  /// may be delivered in any order.
  final Input<bool>? enableMessageOrdering;

  /// A policy that specifies the conditions for this subscription's expiration.
  /// A subscription is considered active as long as any connected subscriber
  /// is successfully consuming messages from the subscription or is issuing
  /// operations on the subscription. If expirationPolicy is not set, a default
  /// policy with ttl of 31 days will be used.  If it is set but ttl is "", the
  /// resource never expires.  The minimum allowed value for expirationPolicy.ttl
  /// is 1 day.
  /// Structure is documented below.
  final Input<SubscriptionExpirationPolicy>? expirationPolicy;

  /// The subscription only delivers the messages that match the filter.
  /// Pub/Sub automatically acknowledges the messages that don't match the filter. You can filter messages
  /// by their attributes. The maximum length of a filter is 256 bytes. After creating the subscription,
  /// you can't modify the filter.
  final Input<String>? filter;

  /// A set of key/value label pairs to assign to this Subscription.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// How long to retain unacknowledged messages in the subscription's
  /// backlog, from the moment a message is published. If<span pulumi-lang-nodejs="
  /// retainAckedMessages " pulumi-lang-dotnet="
  /// RetainAckedMessages " pulumi-lang-go="
  /// retainAckedMessages " pulumi-lang-python="
  /// retain_acked_messages " pulumi-lang-yaml="
  /// retainAckedMessages " pulumi-lang-java="
  /// retainAckedMessages ">
  /// retain_acked_messages </span>is true, then this also configures the retention
  /// of acknowledged messages, and thus configures how far back in time a
  /// subscriptions.seek can be done. Defaults to 7 days. Cannot be more
  /// than 31 days (`"2678400s"`) or less than 10 minutes (`"600s"`).
  /// A duration in seconds with up to nine fractional digits, terminated
  /// by 's'. Example: `"600.5s"`.
  final Input<String>? messageRetentionDuration;

  /// Transforms to be applied to messages published to the topic. Transforms are applied in the
  /// order specified.
  /// Structure is documented below.
  final Input<List<SubscriptionMessageTransform>>? messageTransforms;

  /// Name of the subscription.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// If push delivery is used with this subscription, this field is used to
  /// configure it. An empty pushConfig signifies that the subscriber will
  /// pull and ack messages using API methods.
  /// Structure is documented below.
  final Input<SubscriptionPushConfig>? pushConfig;

  /// Indicates whether to retain acknowledged messages. If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, then
  /// messages are not expunged from the subscription's backlog, even if
  /// they are acknowledged, until they fall out of the
  /// messageRetentionDuration window.
  final Input<bool>? retainAckedMessages;

  /// A policy that specifies how Pub/Sub retries message delivery for this subscription.
  /// If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers.
  /// RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message
  /// Structure is documented below.
  final Input<SubscriptionRetryPolicy>? retryPolicy;

  /// Input only. Resource manager tags to be bound to the subscription. Tag
  /// keys and values have the same definition as resource manager tags. Keys
  /// must be in the format tagKeys/{tag_key_id}, and values are in the format
  /// tagValues/456. The field is ignored when empty. The field is immutable and
  /// causes resource replacement when mutated. This field is only set at create
  /// time and modifying this field after creation will trigger recreation. To
  /// apply tags to an existing resource, see the <span pulumi-lang-nodejs="`gcp.tags.TagValue`" pulumi-lang-dotnet="`gcp.tags.TagValue`" pulumi-lang-go="`tags.TagValue`" pulumi-lang-python="`tags.TagValue`" pulumi-lang-yaml="`gcp.tags.TagValue`" pulumi-lang-java="`gcp.tags.TagValue`">`gcp.tags.TagValue`</span>
  /// resource.
  final Input<Map<String, String>>? tags;

  /// A reference to a Topic resource, of the form projects/{project}/topics/{{name}}
  /// (as in the id property of a google_pubsub_topic), or just a topic name if
  /// the topic is in the same project as the subscription.
  final Input<String> topic;

  SubscriptionArgs({
    this.ackDeadlineSeconds,
    this.bigqueryConfig,
    this.cloudStorageConfig,
    this.deadLetterPolicy,
    this.enableExactlyOnceDelivery,
    this.enableMessageOrdering,
    this.expirationPolicy,
    this.filter,
    this.labels,
    this.messageRetentionDuration,
    this.messageTransforms,
    this.name,
    this.project,
    this.pushConfig,
    this.retainAckedMessages,
    this.retryPolicy,
    this.tags,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ackDeadlineSecondsValue = ackDeadlineSeconds;
    if (ackDeadlineSecondsValue != null) {
      map['ackDeadlineSeconds'] = ackDeadlineSecondsValue;
    }
    final bigqueryConfigValue = bigqueryConfig;
    if (bigqueryConfigValue != null) {
      map['bigqueryConfig'] = Input.mapOptionalInputValue<
          SubscriptionBigqueryConfig,
          Map<String, dynamic>>(bigqueryConfigValue, (value) => value.toMap());
    }
    final cloudStorageConfigValue = cloudStorageConfig;
    if (cloudStorageConfigValue != null) {
      map['cloudStorageConfig'] = Input.mapOptionalInputValue<
              SubscriptionCloudStorageConfig, Map<String, dynamic>>(
          cloudStorageConfigValue, (value) => value.toMap());
    }
    final deadLetterPolicyValue = deadLetterPolicy;
    if (deadLetterPolicyValue != null) {
      map['deadLetterPolicy'] = Input.mapOptionalInputValue<
              SubscriptionDeadLetterPolicy, Map<String, dynamic>>(
          deadLetterPolicyValue, (value) => value.toMap());
    }
    final enableExactlyOnceDeliveryValue = enableExactlyOnceDelivery;
    if (enableExactlyOnceDeliveryValue != null) {
      map['enableExactlyOnceDelivery'] = enableExactlyOnceDeliveryValue;
    }
    final enableMessageOrderingValue = enableMessageOrdering;
    if (enableMessageOrderingValue != null) {
      map['enableMessageOrdering'] = enableMessageOrderingValue;
    }
    final expirationPolicyValue = expirationPolicy;
    if (expirationPolicyValue != null) {
      map['expirationPolicy'] = Input.mapOptionalInputValue<
              SubscriptionExpirationPolicy, Map<String, dynamic>>(
          expirationPolicyValue, (value) => value.toMap());
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final messageRetentionDurationValue = messageRetentionDuration;
    if (messageRetentionDurationValue != null) {
      map['messageRetentionDuration'] = messageRetentionDurationValue;
    }
    final messageTransformsValue = messageTransforms;
    if (messageTransformsValue != null) {
      map['messageTransforms'] = Input.mapOptionalInputValue<
              List<SubscriptionMessageTransform>, List<Map<String, dynamic>>>(
          messageTransformsValue,
          (value) => Input.encodeList<SubscriptionMessageTransform,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['pushConfig'] = Input.mapOptionalInputValue<SubscriptionPushConfig,
          Map<String, dynamic>>(pushConfigValue, (value) => value.toMap());
    }
    final retainAckedMessagesValue = retainAckedMessages;
    if (retainAckedMessagesValue != null) {
      map['retainAckedMessages'] = retainAckedMessagesValue;
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] = Input.mapOptionalInputValue<SubscriptionRetryPolicy,
          Map<String, dynamic>>(retryPolicyValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['topic'] = topic;
    return map;
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      ackDeadlineSeconds: Input.asOptionalInput<int>(map['ackDeadlineSeconds']),
      bigqueryConfig: Input.asOptionalInput<SubscriptionBigqueryConfig>(
          map['bigqueryConfig']),
      cloudStorageConfig: Input.asOptionalInput<SubscriptionCloudStorageConfig>(
          map['cloudStorageConfig']),
      deadLetterPolicy: Input.asOptionalInput<SubscriptionDeadLetterPolicy>(
          map['deadLetterPolicy']),
      enableExactlyOnceDelivery:
          Input.asOptionalInput<bool>(map['enableExactlyOnceDelivery']),
      enableMessageOrdering:
          Input.asOptionalInput<bool>(map['enableMessageOrdering']),
      expirationPolicy: Input.asOptionalInput<SubscriptionExpirationPolicy>(
          map['expirationPolicy']),
      filter: Input.asOptionalInput<String>(map['filter']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      messageRetentionDuration:
          Input.asOptionalInput<String>(map['messageRetentionDuration']),
      messageTransforms:
          Input.asOptionalInput<List<SubscriptionMessageTransform>>(
              map['messageTransforms']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      pushConfig:
          Input.asOptionalInput<SubscriptionPushConfig>(map['pushConfig']),
      retainAckedMessages:
          Input.asOptionalInput<bool>(map['retainAckedMessages']),
      retryPolicy:
          Input.asOptionalInput<SubscriptionRetryPolicy>(map['retryPolicy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      topic: Input.asInput<String>(map['topic']),
    );
  }
}
