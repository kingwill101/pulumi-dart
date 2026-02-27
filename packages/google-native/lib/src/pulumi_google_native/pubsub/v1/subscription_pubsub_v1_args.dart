// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_config.dart';
import 'cloud_storage_config.dart';
import 'dead_letter_policy.dart';
import 'expiration_policy.dart';
import 'push_config.dart';
import 'retry_policy.dart';

/// The set of arguments for Subscription.
class SubscriptionPubsubV1Args {
  /// Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be _outstanding_. During that time period, the message will not be redelivered (on a best-effort basis). For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used. For push delivery, this value is also used to set the request timeout for the call to the push endpoint. If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message.
  final pulumi.Input<int>? ackDeadlineSeconds;

  /// Optional. If delivery to BigQuery is used with this subscription, this field is used to configure it.
  final pulumi.Input<BigQueryConfig>? bigqueryConfig;

  /// Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used to configure it.
  final pulumi.Input<CloudStorageConfig>? cloudStorageConfig;

  /// Optional. A policy that specifies the conditions for dead lettering messages in this subscription. If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub service account associated with this subscriptions's parent project (i.e., service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have permission to Acknowledge() messages on this subscription.
  final pulumi.Input<DeadLetterPolicy>? deadLetterPolicy;

  /// Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions don't receive messages from their topic and don't retain any backlog. `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will not be made.
  final pulumi.Input<bool>? detached;

  /// Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a given value of `message_id` on this subscription: * The message sent to a subscriber is guaranteed not to be resent before the message's acknowledgement deadline expires. * An acknowledged message will not be resent to a subscriber. Note that subscribers may still receive multiple copies of a message when `enable_exactly_once_delivery` is true if the message was published multiple times by a publisher client. These copies are considered distinct by Pub/Sub and have distinct `message_id` values.
  final pulumi.Input<bool>? enableExactlyOnceDelivery;

  /// Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be delivered to the subscribers in the order in which they are received by the Pub/Sub system. Otherwise, they may be delivered in any order.
  final pulumi.Input<bool>? enableMessageOrdering;

  /// Optional. A policy that specifies the conditions for this subscription's expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If `expiration_policy` is not set, a *default policy* with `ttl` of 31 days will be used. The minimum allowed value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set, but `expiration_policy.ttl` is not set, the subscription never expires.
  final pulumi.Input<ExpirationPolicy>? expirationPolicy;

  /// Optional. An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s whose `attributes` field matches the filter are delivered on this subscription. If empty, then no messages are filtered out.
  final pulumi.Input<String>? filter;

  /// Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. How long to retain unacknowledged messages in the subscription's backlog, from the moment a message is published. If `retain_acked_messages` is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a `Seek` can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10 minutes.
  final pulumi.Input<String>? messageRetentionDuration;

  /// The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. If push delivery is used with this subscription, this field is used to configure it.
  final pulumi.Input<PushConfig>? pushConfig;

  /// Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription's backlog, even if they are acknowledged, until they fall out of the `message_retention_duration` window. This must be true if you would like to [`Seek` to a timestamp] (https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay previously-acknowledged messages.
  final pulumi.Input<bool>? retainAckedMessages;

  /// Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If not set, the default retry policy is applied. This generally implies that messages will be retried as soon as possible for healthy subscribers. RetryPolicy will be triggered on NACKs or acknowledgement deadline exceeded events for a given message.
  final pulumi.Input<RetryPolicy>? retryPolicy;
  final pulumi.Input<String> subscriptionId;

  /// The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`. The value of this field will be `_deleted-topic_` if the topic has been deleted.
  final pulumi.Input<String> topic;

  SubscriptionPubsubV1Args({
    this.ackDeadlineSeconds,
    this.bigqueryConfig,
    this.cloudStorageConfig,
    this.deadLetterPolicy,
    this.detached,
    this.enableExactlyOnceDelivery,
    this.enableMessageOrdering,
    this.expirationPolicy,
    this.filter,
    this.labels,
    this.messageRetentionDuration,
    this.name,
    this.project,
    this.pushConfig,
    this.retainAckedMessages,
    this.retryPolicy,
    required this.subscriptionId,
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
      map['bigqueryConfig'] = pulumi.Input.mapOptionalInputValue<BigQueryConfig,
          Map<String, dynamic>>(bigqueryConfigValue, (value) => value.toMap());
    }
    final cloudStorageConfigValue = cloudStorageConfig;
    if (cloudStorageConfigValue != null) {
      map['cloudStorageConfig'] = pulumi.Input.mapOptionalInputValue<
              CloudStorageConfig, Map<String, dynamic>>(
          cloudStorageConfigValue, (value) => value.toMap());
    }
    final deadLetterPolicyValue = deadLetterPolicy;
    if (deadLetterPolicyValue != null) {
      map['deadLetterPolicy'] = pulumi.Input.mapOptionalInputValue<
              DeadLetterPolicy, Map<String, dynamic>>(
          deadLetterPolicyValue, (value) => value.toMap());
    }
    final detachedValue = detached;
    if (detachedValue != null) {
      map['detached'] = detachedValue;
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
      map['expirationPolicy'] = pulumi.Input.mapOptionalInputValue<
              ExpirationPolicy, Map<String, dynamic>>(
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
          pulumi.Input.mapOptionalInputValue<PushConfig, Map<String, dynamic>>(
              pushConfigValue, (value) => value.toMap());
    }
    final retainAckedMessagesValue = retainAckedMessages;
    if (retainAckedMessagesValue != null) {
      map['retainAckedMessages'] = retainAckedMessagesValue;
    }
    final retryPolicyValue = retryPolicy;
    if (retryPolicyValue != null) {
      map['retryPolicy'] =
          pulumi.Input.mapOptionalInputValue<RetryPolicy, Map<String, dynamic>>(
              retryPolicyValue, (value) => value.toMap());
    }
    map['subscriptionId'] = subscriptionId;
    map['topic'] = topic;
    return map;
  }

  factory SubscriptionPubsubV1Args.fromMap(Map<String, dynamic> map) {
    return SubscriptionPubsubV1Args(
      ackDeadlineSeconds:
          pulumi.Input.asOptionalInput<int>(map['ackDeadlineSeconds']),
      bigqueryConfig:
          pulumi.Input.asOptionalInput<BigQueryConfig>(map['bigqueryConfig']),
      cloudStorageConfig: pulumi.Input.asOptionalInput<CloudStorageConfig>(
          map['cloudStorageConfig']),
      deadLetterPolicy: pulumi.Input.asOptionalInput<DeadLetterPolicy>(
          map['deadLetterPolicy']),
      detached: pulumi.Input.asOptionalInput<bool>(map['detached']),
      enableExactlyOnceDelivery:
          pulumi.Input.asOptionalInput<bool>(map['enableExactlyOnceDelivery']),
      enableMessageOrdering:
          pulumi.Input.asOptionalInput<bool>(map['enableMessageOrdering']),
      expirationPolicy: pulumi.Input.asOptionalInput<ExpirationPolicy>(
          map['expirationPolicy']),
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      messageRetentionDuration:
          pulumi.Input.asOptionalInput<String>(map['messageRetentionDuration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pushConfig: pulumi.Input.asOptionalInput<PushConfig>(map['pushConfig']),
      retainAckedMessages:
          pulumi.Input.asOptionalInput<bool>(map['retainAckedMessages']),
      retryPolicy:
          pulumi.Input.asOptionalInput<RetryPolicy>(map['retryPolicy']),
      subscriptionId: pulumi.Input.asInput<String>(map['subscriptionId']),
      topic: pulumi.Input.asInput<String>(map['topic']),
    );
  }
}
